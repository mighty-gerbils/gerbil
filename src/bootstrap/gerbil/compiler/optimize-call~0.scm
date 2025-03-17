(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1742222183)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp198525 (list gxc#::basic-xform::t))
            (__tmp198524 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp198525
         '()
         __tmp198524
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args197802%_
        (apply make-instance gxc#::optimize-call::t _%$args197802%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp198526
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
        (__make-promise __tmp198526)))
    (define gxc#apply-optimize-call
      (lambda (_%stx197794%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self197797%_
                (let ((__obj198516
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj198516))
               (__tmp198527
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197797%_ _%stx197794%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198527
           gxc#current-compile-method
           _%self197797%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp198529 (list gxc#::void::t))
            (__tmp198528 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp198529
         '()
         __tmp198528
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args197791%_
        (apply make-instance gxc#::check-return-type::t _%$args197791%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp198530
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
        (__make-promise __tmp198530)))
    (define gxc#apply-check-return-type
      (lambda (_%stx197783%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self197786%_
                (let ((__obj198518
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj198518))
               (__tmp198531
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197786%_ _%stx197783%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198531
           gxc#current-compile-method
           _%self197786%_))))
    (define gxc#optimize-call%
      (lambda (_%self197384%_ _%stx197385%_)
        (let* ((_%__stx197871197872%_ _%stx197385%_)
               (_%g197388197434%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197871197872%_)))))
          (let ((_%__kont197873197874%_
                 (lambda (_%L197577%_ _%L197578%_)
                   (let* ((_%rator-id197598%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L197578%_)))
                          (_%rator-type197600%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id197598%_))))
                     (if (or (not _%rator-type197600%_)
                             (eq? (##structure-ref
                                   _%rator-type197600%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self197384%_ _%stx197385%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type197600%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp198532
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type197600%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id197598%_
                                  '" => "
                                  _%rator-type197600%_
                                  '" "
                                  __tmp198532))
                               (let* ((_%optimized197615%_
                                       (let ((__method198519
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type197600%_
                                                 'optimize-call))))
                                         (if __method198519
                                             (let ((__tmp198533
                                                    (let ((__tmp198534
                                                           (lambda (_%g197607197610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197608197612%_)
                     (cons _%g197607197610%_ _%g197608197612%_))))
              (declare (not safe))
              (__foldr1 __tmp198534 '() _%L197577%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method198519
                                                _%rator-type197600%_
                                                _%self197384%_
                                                _%stx197385%_
                                                __tmp198533))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type197600%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx197819197820%_
                                       _%optimized197615%_)
                                      (_%g197618197647%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx197819197820%_)))))
                                 (let ((_%__kont197821197822%_
                                        (lambda (_%L197715%_ _%L197716%_)
                                          (let* ((_%optimized-rator-id197743%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L197716%_)))
                                                 (_%rator-type197748%_
                                                  (let ((_%$e197745%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id197743%_))))
                                                    (if _%$e197745%_
                                                        _%$e197745%_
                                                        _%rator-type197600%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type197748%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id197743%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type197748%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type197748%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized197615%_
                                                (let ((__tmp198535
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L197716%_ '()))
                           (let ((__tmp198536
                                  (lambda (_%g197756197759%_ _%g197757197761%_)
                                    (cons _%g197756197759%_
                                          _%g197757197761%_))))
                             (declare (not safe))
                             (__foldr1 __tmp198536 '() _%L197715%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp198535
                                                   _%stx197385%_))))))
                                       (_%__kont197825197826%_
                                        (lambda () _%optimized197615%_)))
                                   (let ((_%__match197868197869%_
                                          (lambda (_%e197622197659%_
                                                   _%hd197623197662%_
                                                   _%tl197624197664%_
                                                   _%e197625197667%_
                                                   _%hd197626197670%_
                                                   _%tl197627197672%_
                                                   _%e197628197675%_
                                                   _%hd197629197678%_
                                                   _%tl197630197680%_
                                                   _%e197631197683%_
                                                   _%hd197632197686%_
                                                   _%tl197633197688%_
                                                   _%__splice197823197824%_
                                                   _%target197634197691%_
                                                   _%tl197636197693%_)
                                            (letrec ((_%loop197637197696%_
                                                      (lambda (_%hd197635197699%_
                                                               _%arg197641197701%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd197635197699%_))
                                                            (let ((_%e197638197704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd197635197699%_))))
                      (let ((_%lp-tl197640197709%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197638197704%_)))
                            (_%lp-hd197639197707%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197638197704%_))))
                        (_%loop197637197696%_
                         _%lp-tl197640197709%_
                         (cons _%lp-hd197639197707%_ _%arg197641197701%_))))
                    (let ((_%arg197642197712%_ (reverse _%arg197641197701%_)))
                      (_%__kont197821197822%_
                       _%arg197642197712%_
                       _%hd197632197686%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop197637197696%_
                                               _%target197634197691%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx197819197820%_))
                                         (let ((_%e197622197659%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx197819197820%_))))
                                           (let ((_%tl197624197664%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197622197659%_)))
                                                 (_%hd197623197662%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197622197659%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd197623197662%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd197623197662%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl197624197664%_))
                                                         (let ((_%e197625197667%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl197624197664%_))))
                   (let ((_%tl197627197672%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e197625197667%_)))
                         (_%hd197626197670%_
                          (let ()
                            (declare (not safe))
                            (##car _%e197625197667%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd197626197670%_))
                         (let ((_%e197628197675%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd197626197670%_))))
                           (let ((_%tl197630197680%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197628197675%_)))
                                 (_%hd197629197678%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197628197675%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd197629197678%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd197629197678%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl197630197680%_))
                                         (let ((_%e197631197683%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl197630197680%_))))
                                           (let ((_%tl197633197688%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197631197683%_)))
                                                 (_%hd197632197686%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197631197683%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl197633197688%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl197627197672%_))
                                                     (let ((_%__splice197823197824%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl197627197672%_
                                                               '0))))
                                                       (let ((_%tl197636197693%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice197823197824%_ '1)))
                     (_%target197634197691%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice197823197824%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl197636197693%_))
                     (_%__match197868197869%_
                      _%e197622197659%_
                      _%hd197623197662%_
                      _%tl197624197664%_
                      _%e197625197667%_
                      _%hd197626197670%_
                      _%tl197627197672%_
                      _%e197628197675%_
                      _%hd197629197678%_
                      _%tl197630197680%_
                      _%e197631197683%_
                      _%hd197632197686%_
                      _%tl197633197688%_
                      _%__splice197823197824%_
                      _%target197634197691%_
                      _%tl197636197693%_)
                     (_%__kont197825197826%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont197825197826%_))
                                                 (_%__kont197825197826%_))))
                                         (_%__kont197825197826%_))
                                     (_%__kont197825197826%_))
                                 (_%__kont197825197826%_))))
                         (_%__kont197825197826%_))))
                 (_%__kont197825197826%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont197825197826%_))
                                                 (_%__kont197825197826%_))))
                                         (_%__kont197825197826%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type197600%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type197600%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp198537
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L197578%_
                                                                '()))
                                                    (map (lambda (_%g197767197769%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self197384%_
                                                              _%g197767197769%_)))
                                                         (let ((__tmp198538
                                                                (lambda (_%g197771197774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g197772197776%_)
                          (cons _%g197771197774%_ _%g197772197776%_))))
                   (declare (not safe))
                   (__foldr1 __tmp198538 '() _%L197577%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp198537
                                    _%stx197385%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx197385%_
                                    _%rator-type197600%_))))))))
                (_%__kont197877197878%_
                 (lambda (_%L197479%_ _%L197480%_)
                   (let ((_%rator-type197497%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L197480%_))))
                     (if (and _%rator-type197497%_
                              (eq? (##structure-ref
                                    _%rator-type197497%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type197497%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type197497%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type197497%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp198539
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self197384%_
                                               _%L197480%_))
                                            (map (lambda (_%g197499197501%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self197384%_
                                                      _%g197499197501%_)))
                                                 (let ((__tmp198540
                                                        (lambda (_%g197503197506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g197504197508%_)
                  (cons _%g197503197506%_ _%g197504197508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp198540
                                                    '()
                                                    _%L197479%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp198539 _%stx197385%_))
                         (if (or (not _%rator-type197497%_)
                                 (let ((__tmp198541
                                        (##structure-ref
                                         _%rator-type197497%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp198541 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self197384%_ _%stx197385%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx197385%_
                                _%rator-type197497%_))))))))
            (let* ((_%__match197938197939%_
                    (lambda (_%e197415197439%_
                             _%hd197416197442%_
                             _%tl197417197444%_
                             _%e197418197447%_
                             _%hd197419197450%_
                             _%tl197420197452%_
                             _%__splice197879197880%_
                             _%target197421197455%_
                             _%tl197423197457%_)
                      (letrec ((_%loop197424197460%_
                                (lambda (_%hd197422197463%_
                                         _%rand197428197465%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197422197463%_))
                                      (let ((_%e197425197468%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197422197463%_))))
                                        (let ((_%lp-tl197427197473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197425197468%_)))
                                              (_%lp-hd197426197471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197425197468%_))))
                                          (_%loop197424197460%_
                                           _%lp-tl197427197473%_
                                           (cons _%lp-hd197426197471%_
                                                 _%rand197428197465%_))))
                                      (let ((_%rand197429197476%_
                                             (reverse _%rand197428197465%_)))
                                        (_%__kont197877197878%_
                                         _%rand197429197476%_
                                         _%hd197419197450%_))))))
                        (_%loop197424197460%_ _%target197421197455%_ '()))))
                   (_%__match197918197919%_
                    (lambda (_%e197392197521%_
                             _%hd197393197524%_
                             _%tl197394197526%_
                             _%e197395197529%_
                             _%hd197396197532%_
                             _%tl197397197534%_
                             _%e197398197537%_
                             _%hd197399197540%_
                             _%tl197400197542%_
                             _%e197401197545%_
                             _%hd197402197548%_
                             _%tl197403197550%_
                             _%__splice197875197876%_
                             _%target197404197553%_
                             _%tl197406197555%_)
                      (letrec ((_%loop197407197558%_
                                (lambda (_%hd197405197561%_
                                         _%rand197411197563%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197405197561%_))
                                      (let ((_%e197408197566%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197405197561%_))))
                                        (let ((_%lp-tl197410197571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197408197566%_)))
                                              (_%lp-hd197409197569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197408197566%_))))
                                          (_%loop197407197558%_
                                           _%lp-tl197410197571%_
                                           (cons _%lp-hd197409197569%_
                                                 _%rand197411197563%_))))
                                      (let ((_%rand197412197574%_
                                             (reverse _%rand197411197563%_)))
                                        (_%__kont197873197874%_
                                         _%rand197412197574%_
                                         _%hd197402197548%_))))))
                        (_%loop197407197558%_ _%target197404197553%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197871197872%_))
                  (let ((_%e197392197521%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197871197872%_))))
                    (let ((_%tl197394197526%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197392197521%_)))
                          (_%hd197393197524%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197392197521%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197394197526%_))
                          (let ((_%e197395197529%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197394197526%_))))
                            (let ((_%tl197397197534%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197395197529%_)))
                                  (_%hd197396197532%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197395197529%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197396197532%_))
                                  (let ((_%e197398197537%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197396197532%_))))
                                    (let ((_%tl197400197542%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197398197537%_)))
                                          (_%hd197399197540%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197398197537%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197399197540%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197399197540%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197400197542%_))
                                                  (let ((_%e197401197545%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197400197542%_))))
                                                    (let ((_%tl197403197550%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197401197545%_)))
                                                          (_%hd197402197548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197401197545%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197403197550%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl197397197534%_))
                      (let ((_%__splice197875197876%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl197397197534%_
                                '0))))
                        (let ((_%tl197406197555%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197875197876%_ '1)))
                              (_%target197404197553%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197875197876%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197406197555%_))
                              (_%__match197918197919%_
                               _%e197392197521%_
                               _%hd197393197524%_
                               _%tl197394197526%_
                               _%e197395197529%_
                               _%hd197396197532%_
                               _%tl197397197534%_
                               _%e197398197537%_
                               _%hd197399197540%_
                               _%tl197400197542%_
                               _%e197401197545%_
                               _%hd197402197548%_
                               _%tl197403197550%_
                               _%__splice197875197876%_
                               _%target197404197553%_
                               _%tl197406197555%_)
                              (let ()
                                (declare (not safe))
                                (_%g197388197434%_)))))
                      (let () (declare (not safe)) (_%g197388197434%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl197397197534%_))
                      (let ((_%__splice197879197880%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl197397197534%_
                                '0))))
                        (let ((_%tl197423197457%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197879197880%_ '1)))
                              (_%target197421197455%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197879197880%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197423197457%_))
                              (_%__match197938197939%_
                               _%e197392197521%_
                               _%hd197393197524%_
                               _%tl197394197526%_
                               _%e197395197529%_
                               _%hd197396197532%_
                               _%tl197397197534%_
                               _%__splice197879197880%_
                               _%target197421197455%_
                               _%tl197423197457%_)
                              (let ()
                                (declare (not safe))
                                (_%g197388197434%_)))))
                      (let () (declare (not safe)) (_%g197388197434%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl197397197534%_))
                                                      (let ((_%__splice197879197880%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl197397197534%_
                        '0))))
                (let ((_%tl197423197457%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice197879197880%_ '1)))
                      (_%target197421197455%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice197879197880%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197423197457%_))
                      (_%__match197938197939%_
                       _%e197392197521%_
                       _%hd197393197524%_
                       _%tl197394197526%_
                       _%e197395197529%_
                       _%hd197396197532%_
                       _%tl197397197534%_
                       _%__splice197879197880%_
                       _%target197421197455%_
                       _%tl197423197457%_)
                      (let () (declare (not safe)) (_%g197388197434%_)))))
              (let () (declare (not safe)) (_%g197388197434%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl197397197534%_))
                                                  (let ((_%__splice197879197880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl197397197534%_
                                                            '0))))
                                                    (let ((_%tl197423197457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197879197880%_
                                                              '1)))
                                                          (_%target197421197455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197879197880%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197423197457%_))
                                                          (_%__match197938197939%_
                                                           _%e197392197521%_
                                                           _%hd197393197524%_
                                                           _%tl197394197526%_
                                                           _%e197395197529%_
                                                           _%hd197396197532%_
                                                           _%tl197397197534%_
                                                           _%__splice197879197880%_
                                                           _%target197421197455%_
                                                           _%tl197423197457%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197388197434%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197388197434%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197397197534%_))
                                              (let ((_%__splice197879197880%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl197397197534%_
                                                        '0))))
                                                (let ((_%tl197423197457%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice197879197880%_
                                                          '1)))
                                                      (_%target197421197455%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice197879197880%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197423197457%_))
                                                      (_%__match197938197939%_
                                                       _%e197392197521%_
                                                       _%hd197393197524%_
                                                       _%tl197394197526%_
                                                       _%e197395197529%_
                                                       _%hd197396197532%_
                                                       _%tl197397197534%_
                                                       _%__splice197879197880%_
                                                       _%target197421197455%_
                                                       _%tl197423197457%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197388197434%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197388197434%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197397197534%_))
                                      (let ((_%__splice197879197880%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl197397197534%_
                                                '0))))
                                        (let ((_%tl197423197457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197879197880%_
                                                  '1)))
                                              (_%target197421197455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197879197880%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197423197457%_))
                                              (_%__match197938197939%_
                                               _%e197392197521%_
                                               _%hd197393197524%_
                                               _%tl197394197526%_
                                               _%e197395197529%_
                                               _%hd197396197532%_
                                               _%tl197397197534%_
                                               _%__splice197879197880%_
                                               _%target197421197455%_
                                               _%tl197423197457%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197388197434%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197388197434%_))))))
                          (let () (declare (not safe)) (_%g197388197434%_)))))
                  (let () (declare (not safe)) (_%g197388197434%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self193763197344%_ _%ctx197346%_ _%stx197347%_ _%args197348%_)
        (let* ((_%self197350%_ _%self193763197344%_)
               (_%self197352%_ _%self197350%_))
          (if (let ((__method198520
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self197352%_ 'check-arguments))))
                (if __method198520
                    (let ()
                      (declare (not safe))
                      (__method198520
                       _%self197352%_
                       _%ctx197346%_
                       _%stx197347%_
                       _%args197348%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self197352%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature197362%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197352%_ '2 '#f '#f)))
                     (_%signature197364%_ _%signature197362%_)
                     (_%$e197374%_
                      (if _%signature197364%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature197364%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e197374%_
                    ((lambda (_%unchecked197377%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked197377%_))
                           (let ((__tmp198542
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked197377%_
                                                          '()))
                                              (map (lambda (_%g197378197380%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx197346%_
                                                        _%g197378197380%_)))
                                                   _%args197348%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp198542
                              _%stx197347%_
                              _%ctx197346%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx197346%_ _%stx197347%_))))
                     _%$e197374%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx197346%_ _%stx197347%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx197346%_ _%stx197347%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass197804 __method-table197805)
        (let ((__check-arguments197806
               (let ((__tmp198543
                      (lambda ()
                        (let ((__method197807
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197805
                                  'check-arguments
                                  '#f))))
                          (if __method197807
                              __method197807
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198543))))
          (lambda (_%self193763197344%_
                   _%ctx197346%_
                   _%stx197347%_
                   _%args197348%_)
            (let* ((_%self197350%_ _%self193763197344%_)
                   (_%self197352%_ _%self197350%_))
              (if ((force __check-arguments197806)
                   _%self197352%_
                   _%ctx197346%_
                   _%stx197347%_
                   _%args197348%_)
                  (let* ((_%signature197362%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self197352%_
                             '2
                             '#f
                             '#f)))
                         (_%signature197364%_ _%signature197362%_)
                         (_%$e197374%_
                          (if _%signature197364%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature197364%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e197374%_
                        ((lambda (_%unchecked197377%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked197377%_))
                               (let ((__tmp198544
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked197377%_
                                                              '()))
                                                  (map (lambda (_%g197378197380%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx197346%_
                                                            _%g197378197380%_)))
                                                       _%args197348%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp198544
                                  _%stx197347%_
                                  _%ctx197346%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx197346%_
                                  _%stx197347%_))))
                         _%$e197374%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx197346%_ _%stx197347%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx197346%_ _%stx197347%_))))))))
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
      (lambda (_%self193764197093%_ _%ctx197095%_ _%stx197096%_ _%args197097%_)
        (let* ((_%self197099%_ _%self193764197093%_)
               (_%self197101%_ _%self197099%_)
               (_%signature197110197112%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197101%_ '2 '#f '#f))))
          (if _%signature197110197112%_
              (let* ((_%signature197115%_ _%signature197110197112%_)
                     (_%argument-types197116197118%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature197115%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types197116197118%_
                    (let* ((_%argument-types197121%_
                            _%argument-types197116197118%_)
                           (_%argument-types197126%_
                            (let ((__tmp198545
                                   (lambda (_%t197124%_)
                                     (if _%t197124%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx197096%_
                                            _%t197124%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp198545
                               _%argument-types197121%_))))
                      (let _%loop197128%_ ((_%rest-args197130%_ _%args197097%_)
                                           (_%rest-types197131%_
                                            _%argument-types197126%_)
                                           (_%result197132%_ '#t))
                        (let* ((_%rest-args197133197141%_ _%rest-args197130%_)
                               (_%else197135197149%_
                                (lambda () _%result197132%_))
                               (_%K197137197210%_
                                (lambda (_%rest-args197152%_ _%arg197153%_)
                                  (let* ((_%rest-types197154197165%_
                                          _%rest-types197131%_)
                                         (_%E197158197169%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types197154197165%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K197161197198%_
                                           (lambda (_%rest-types197195%_
                                                    _%type197196%_)
                                             (_%loop197128%_
                                              _%rest-args197152%_
                                              _%rest-types197195%_
                                              (if (gxc#check-expression-type!
                                                   _%stx197096%_
                                                   _%arg197153%_
                                                   _%type197196%_)
                                                  _%result197132%_
                                                  '#f))))
                                          (_%K197160197189%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx197096%_
                                                _%argument-types197126%_))))
                                          (_%K197159197179%_
                                           (lambda (_%tail-type197173%_)
                                             (if (let ((__tmp198546
                                                        (lambda (_%g197174197176%_)
                                                          (gxc#check-expression-type!
                                                           _%stx197096%_
                                                           _%g197174197176%_
                                                           _%tail-type197173%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp198546
                                                    _%rest-args197152%_))
                                                 _%result197132%_
                                                 '#f))))
                                      (let ((_%try-match197156197192%_
                                             (lambda ()
                                               (if (null? _%rest-types197154197165%_)
                                                   (_%K197160197189%_)
                                                   (let ((_%tail-type197182%_
                                                          _%rest-types197154197165%_))
                                                     (_%K197159197179%_
                                                      _%tail-type197182%_))))))
                                        (if (pair? _%rest-types197154197165%_)
                                            (let ((_%tl197163197203%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types197154197165%_)))
                                                  (_%hd197162197201%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types197154197165%_))))
                                              (let ((_%type197206%_
                                                     _%hd197162197201%_)
                                                    (_%rest-types197208%_
                                                     _%tl197163197203%_))
                                                (_%K197161197198%_
                                                 _%rest-types197208%_
                                                 _%type197206%_)))
                                            (_%try-match197156197192%_))))))))
                          (if (pair? _%rest-args197133197141%_)
                              (let ((_%hd197138197213%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args197133197141%_)))
                                    (_%tl197139197215%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args197133197141%_))))
                                (let* ((_%arg197218%_ _%hd197138197213%_)
                                       (_%rest-args197220%_
                                        _%tl197139197215%_))
                                  (_%K197137197210%_
                                   _%rest-args197220%_
                                   _%arg197218%_)))
                              (_%else197135197149%_)))))
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
      (lambda (_%self193765196902%_ _%ctx196904%_ _%stx196905%_ _%args196906%_)
        (let* ((_%self196908%_ _%self193765196902%_)
               (_%self196910%_ _%self196908%_)
               (_%g196920196930%_
                (lambda (_%g196921196927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196921196927%_))))
               (_%g196919196968%_
                (lambda (_%g196921196933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196921196933%_))
                      (let ((_%e196923196935%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196921196933%_))))
                        (let ((_%hd196924196938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196923196935%_)))
                              (_%tl196925196940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196923196935%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196925196940%_))
                              ((lambda (_%L196943%_)
                                 (let* ((_%klass196955%_
                                         (let ((__tmp198547
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self196910%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196905%_
                                            __tmp198547)))
                                        (_%object196957%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx196904%_
                                            _%L196943%_)))
                                        (_%instance?196962%_
                                         (let ((_%$e196959%_
                                                (gxc#expression-type?
                                                 _%object196957%_
                                                 _%klass196955%_)))
                                           (if _%$e196959%_
                                               _%$e196959%_
                                               (gxc#expression-type?
                                                _%L196943%_
                                                _%klass196955%_)))))
                                   (if _%instance?196962%_
                                       (let ((__tmp198548
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object196957%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L196943%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object196957%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198548
                                          _%stx196905%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx196904%_
                                          _%stx196905%_)))))
                               _%hd196924196938%_)
                              (_%g196920196930%_ _%g196921196933%_))))
                      (_%g196920196930%_ _%g196921196933%_)))))
          (_%g196919196968%_ _%args196906%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self193766196696%_ _%ctx196698%_ _%stx196699%_ _%args196700%_)
        (let* ((_%self196702%_ _%self193766196696%_)
               (_%self196704%_ _%self196702%_)
               (_%g196714196724%_
                (lambda (_%g196715196721%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196715196721%_))))
               (_%g196713196777%_
                (lambda (_%g196715196727%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196715196727%_))
                      (let ((_%e196717196729%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196715196727%_))))
                        (let ((_%hd196718196732%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196717196729%_)))
                              (_%tl196719196734%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196717196729%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196719196734%_))
                              ((lambda (_%L196737%_)
                                 (let* ((_%klass196749%_
                                         (let ((__tmp198549
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self196704%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196699%_
                                            __tmp198549)))
                                        (_%object196751%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx196698%_
                                            _%L196737%_)))
                                        (_%instance?196756%_
                                         (let ((_%$e196753%_
                                                (gxc#expression-type?
                                                 _%object196751%_
                                                 _%klass196749%_)))
                                           (if _%$e196753%_
                                               _%$e196753%_
                                               (gxc#expression-type?
                                                _%L196737%_
                                                _%klass196749%_))))
                                        (_%klass196759%_ _%klass196749%_))
                                   (if _%instance?196756%_
                                       (let ((__tmp198550
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object196751%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L196737%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object196751%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198550
                                          _%stx196699%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass196759%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp198551
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass196759%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object196751%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198551
                                              _%stx196699%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass196759%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198552
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass196759%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object196751%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198552
                                                  _%stx196699%_))
                                               (let ((__tmp198553
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self196704%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object196751%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198553
                                                  _%stx196699%_)))))))
                               _%hd196718196732%_)
                              (_%g196714196724%_ _%g196715196727%_))))
                      (_%g196714196724%_ _%g196715196727%_)))))
          (_%g196713196777%_ _%args196700%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx196359%_)
        (let* ((_%__stx197948197949%_ _%stx196359%_)
               (_%g196364196405%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197948197949%_)))))
          (let ((_%__kont197950197951%_ (lambda () '#t))
                (_%__kont197952197953%_ (lambda () '#t))
                (_%__kont197954197955%_
                 (lambda (_%L196473%_ _%L196474%_)
                   (let ((_%rator-type196495196497%_
                          (let ((__tmp198554
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L196474%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp198554))))
                     (if _%rator-type196495196497%_
                         (let* ((_%rator-type196500%_
                                 _%rator-type196495196497%_)
                                (_%rator-signature196501196503%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type196500%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type196500%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature196501196503%_
                               (let* ((_%rator-signature196506%_
                                       _%rator-signature196501196503%_)
                                      (_%rator-effect196507196509%_
                                       (if _%rator-signature196506%_
                                           (##direct-structure-ref
                                            _%rator-signature196506%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect196507196509%_
                                     (let ((_%rator-effect196512%_
                                            _%rator-effect196507196509%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect196512%_)
                                               (equal? '(alloc)
                                                       _%rator-effect196512%_))
                                           (let ((__tmp198555
                                                  (let ((__tmp198556
                                                         (lambda (_%g196517196520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g196518196522%_)
                   (cons _%g196517196520%_ _%g196518196522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp198556
                                                     '()
                                                     _%L196473%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp198555))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont197958197959%_ (lambda () '#f)))
            (let ((_%__match198037198038%_
                   (lambda (_%e196380196417%_
                            _%hd196381196420%_
                            _%tl196382196422%_
                            _%e196383196425%_
                            _%hd196384196428%_
                            _%tl196385196430%_
                            _%e196386196433%_
                            _%hd196387196436%_
                            _%tl196388196438%_
                            _%e196389196441%_
                            _%hd196390196444%_
                            _%tl196391196446%_
                            _%__splice197956197957%_
                            _%target196392196449%_
                            _%tl196394196451%_)
                     (letrec ((_%loop196395196454%_
                               (lambda (_%hd196393196457%_
                                        _%rand196399196459%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd196393196457%_))
                                     (let ((_%e196396196462%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd196393196457%_))))
                                       (let ((_%lp-tl196398196467%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e196396196462%_)))
                                             (_%lp-hd196397196465%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e196396196462%_))))
                                         (_%loop196395196454%_
                                          _%lp-tl196398196467%_
                                          (cons _%lp-hd196397196465%_
                                                _%rand196399196459%_))))
                                     (let ((_%rand196400196470%_
                                            (reverse _%rand196399196459%_)))
                                       (_%__kont197954197955%_
                                        _%rand196400196470%_
                                        _%hd196390196444%_))))))
                       (_%loop196395196454%_ _%target196392196449%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197948197949%_))
                  (let ((_%e196366196553%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197948197949%_))))
                    (let ((_%tl196368196558%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196366196553%_)))
                          (_%hd196367196556%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196366196553%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd196367196556%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd196367196556%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196368196558%_))
                                  (let ((_%e196369196561%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196368196558%_))))
                                    (let ((_%tl196371196566%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196369196561%_)))
                                          (_%hd196370196564%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196369196561%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196371196566%_))
                                          (_%__kont197950197951%_)
                                          (_%__kont197958197959%_))))
                                  (_%__kont197958197959%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd196367196556%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196368196558%_))
                                      (let ((_%e196375196538%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196368196558%_))))
                                        (let ((_%tl196377196543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196375196538%_)))
                                              (_%hd196376196541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196375196538%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196377196543%_))
                                              (_%__kont197952197953%_)
                                              (_%__kont197958197959%_))))
                                      (_%__kont197958197959%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd196367196556%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196368196558%_))
                                          (let ((_%e196383196425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196368196558%_))))
                                            (let ((_%tl196385196430%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196383196425%_)))
                                                  (_%hd196384196428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196383196425%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196384196428%_))
                                                  (let ((_%e196386196433%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd196384196428%_))))
                                                    (let ((_%tl196388196438%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196386196433%_)))
                                                          (_%hd196387196436%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196386196433%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd196387196436%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd196387196436%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196388196438%_))
                          (let ((_%e196389196441%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196388196438%_))))
                            (let ((_%tl196391196446%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196389196441%_)))
                                  (_%hd196390196444%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196389196441%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196391196446%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196385196430%_))
                                      (let ((_%__splice197956197957%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl196385196430%_
                                                '0))))
                                        (let ((_%tl196394196451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197956197957%_
                                                  '1)))
                                              (_%target196392196449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197956197957%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196394196451%_))
                                              (_%__match198037198038%_
                                               _%e196366196553%_
                                               _%hd196367196556%_
                                               _%tl196368196558%_
                                               _%e196383196425%_
                                               _%hd196384196428%_
                                               _%tl196385196430%_
                                               _%e196386196433%_
                                               _%hd196387196436%_
                                               _%tl196388196438%_
                                               _%e196389196441%_
                                               _%hd196390196444%_
                                               _%tl196391196446%_
                                               _%__splice197956197957%_
                                               _%target196392196449%_
                                               _%tl196394196451%_)
                                              (_%__kont197958197959%_))))
                                      (_%__kont197958197959%_))
                                  (_%__kont197958197959%_))))
                          (_%__kont197958197959%_))
                      (_%__kont197958197959%_))
                  (_%__kont197958197959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont197958197959%_))))
                                          (_%__kont197958197959%_))
                                      (_%__kont197958197959%_))))
                          (_%__kont197958197959%_))))
                  (_%__kont197958197959%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx196354%_ _%klass196355%_)
        (let ((_%expr-type196357%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx196354%_))))
          (if _%expr-type196357%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type196357%_ _%klass196355%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx196332%_ _%expr196333%_ _%type196334%_)
        (if (not _%type196334%_)
            '#f
            (let ((_%$e196337%_
                   (eq? (##structure-ref _%type196334%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e196337%_
                  _%$e196337%_
                  (let ((_%expr-type196341%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr196333%_))))
                    (if (not _%expr-type196341%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type196341%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e196345%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type196341%_
                                      'gxc#!abort::t))))
                              (if _%$e196345%_
                                  _%$e196345%_
                                  (let ((_%$e196348%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type196341%_
                                            _%type196334%_))))
                                    (if _%$e196348%_
                                        _%$e196348%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type196334%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type196334%_
                                                   _%expr-type196341%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx196332%_
                                                   _%expr196333%_
                                                   _%expr-type196341%_
                                                   _%type196334%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self193767196144%_ _%ctx196146%_ _%stx196147%_ _%args196148%_)
        (let* ((_%self196150%_ _%self193767196144%_)
               (_%self196152%_ _%self196150%_)
               (_%klass196162%_
                (let ((__tmp198557
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self196152%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx196147%_ __tmp198557)))
               (_%fields196164%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass196162%_
                           '5
                           '#f
                           '#f))))
               (_%args196170%_
                (map (lambda (_%g196165196167%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx196146%_ _%g196165196167%_)))
                     _%args196148%_))
               (_%inline-make-object196172%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self196152%_
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
                           _%self196152%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields196164%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass196175%_ _%klass196162%_)
               (_%$e196189%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass196175%_ '6 '#f '#f))))
          (if _%$e196189%_
              ((lambda (_%ctor196192%_)
                 (let ((_%$obj196194%_
                        (let ((__tmp198558
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp198558)))
                       (_%ctor-impl196195%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass196175%_
                           _%ctor196192%_))))
                   (let ((__tmp198559
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj196194%_ '())
                                                  (cons _%inline-make-object196172%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl196195%_
                                                            (let ((__tmp198560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl196195%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj196194%_ '()))
                                             _%args196170%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp198560
                       _%stx196147%_
                       _%ctx196146%_))
                    (let ((_%$ctor196197%_
                           (let ((__tmp198561
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp198561))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor196197%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self196152%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj196194%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor196192%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor196197%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor196197%_ '()))
                              (cons (cons '%#ref (cons _%$obj196194%_ '()))
                                    _%args196170%_)))
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
                             _%self196152%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor196192%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj196194%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp198559 _%stx196147%_))))
               _%$e196189%_)
              (let ((_%$e196199%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass196175%_
                        '10
                        '#f
                        '#f))))
                (if _%$e196199%_
                    ((lambda (_%metaclass196202%_)
                       (let* ((_%$obj196204%_
                               (let ((__tmp198562
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198562)))
                              (_%metakons196206%_
                               (let ((__tmp198563
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx196147%_
                                         _%metaclass196202%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp198563
                                  'instance-init!)))
                              (__tmp198564
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj196204%_
                                                             '())
                                                       (cons _%inline-make-object196172%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons196206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp198565
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons196206%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self196152%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj196204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args196170%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp198565
                            _%stx196147%_
                            _%ctx196146%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self196152%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj196204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args196170%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj196204%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp198564 _%stx196147%_)))
                     _%$e196199%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass196175%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp198566
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args196170%_))))
                              (declare (not safe))
                              (##fx= __tmp198566 _%fields196164%_))
                            (let ((__tmp198567
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self196152%_
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
                                              _%self196152%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args196170%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp198567
                               _%stx196147%_))
                            (let ((__tmp198569
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self196152%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp198568
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass196175%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx196147%_
                               __tmp198569
                               __tmp198568)))
                        (let ((_%$obj196211%_
                               (let ((__tmp198570
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198570))))
                          (let _%lp196213%_ ((_%rest196215%_ _%args196170%_)
                                             (_%initializers196216%_ '()))
                            (let* ((_%__stx198040198041%_ _%rest196215%_)
                                   (_%g196220196241%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx198040198041%_)))))
                              (let ((_%__kont198042198043%_
                                     (lambda (_%L196295%_
                                              _%L196296%_
                                              _%L196297%_)
                                       (let* ((_%slot196324%_
                                               (let ((__tmp198571
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L196297%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp198571)))
                                              (_%off196326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass196175%_
                                                  _%slot196324%_))))
                                         (if _%off196326%_
                                             (_%lp196213%_
                                              _%L196295%_
                                              (cons (cons _%off196326%_
                                                          _%L196296%_)
                                                    _%initializers196216%_))
                                             (let ((__tmp198572
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self196152%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx196147%_
                                                __tmp198572
                                                _%slot196324%_))))))
                                    (_%__kont198044198045%_
                                     (lambda ()
                                       (let ((__tmp198573
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj196211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object196172%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp198576
                                     (cons (cons '%#ref
                                                 (cons _%$obj196211%_ '()))
                                           '()))
                                    (__tmp198574
                                     (let ((__tmp198575
                                            (lambda (_%i196255%_ _%r196256%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self196152%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i196255%_) '()))
                              (cons (cons '%#ref (cons _%$obj196211%_ '()))
                                    (cons (cdr _%i196255%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r196256%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp198575
                                        '()
                                        _%initializers196216%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp198576 __tmp198574)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198573
                                          _%stx196147%_))))
                                    (_%__kont198046198047%_
                                     (lambda ()
                                       (let ((__tmp198577
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj196211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object196172%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj196211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args196170%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj196211%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198577
                                          _%stx196147%_)))))
                                (let* ((_%g196218196258%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx198040198041%_))
                                              (_%__kont198044198045%_)
                                              (_%__kont198046198047%_))))
                                       (_%__match198077198078%_
                                        (lambda (_%e196225196263%_
                                                 _%hd196226196266%_
                                                 _%tl196227196268%_
                                                 _%e196228196271%_
                                                 _%hd196229196274%_
                                                 _%tl196230196276%_
                                                 _%e196231196279%_
                                                 _%hd196232196282%_
                                                 _%tl196233196284%_
                                                 _%e196234196287%_
                                                 _%hd196235196290%_
                                                 _%tl196236196292%_)
                                          (let ((_%L196295%_
                                                 _%tl196236196292%_)
                                                (_%L196296%_
                                                 _%hd196235196290%_)
                                                (_%L196297%_
                                                 _%hd196232196282%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L196297%_))
                                                (_%__kont198042198043%_
                                                 _%L196295%_
                                                 _%L196296%_
                                                 _%L196297%_)
                                                (_%__kont198046198047%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx198040198041%_))
                                      (let ((_%e196225196263%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx198040198041%_))))
                                        (let ((_%tl196227196268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196225196263%_)))
                                              (_%hd196226196266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196225196263%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd196226196266%_))
                                              (let ((_%e196228196271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd196226196266%_))))
                                                (let ((_%tl196230196276%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196228196271%_)))
                                                      (_%hd196229196274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196228196271%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd196229196274%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd196229196274%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196230196276%_))
                      (let ((_%e196231196279%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196230196276%_))))
                        (let ((_%tl196233196284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196231196279%_)))
                              (_%hd196232196282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196231196279%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196233196284%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196227196268%_))
                                  (let ((_%e196234196287%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196227196268%_))))
                                    (let ((_%tl196236196292%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196234196287%_)))
                                          (_%hd196235196290%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196234196287%_))))
                                      (_%__match198077198078%_
                                       _%e196225196263%_
                                       _%hd196226196266%_
                                       _%tl196227196268%_
                                       _%e196228196271%_
                                       _%hd196229196274%_
                                       _%tl196230196276%_
                                       _%e196231196279%_
                                       _%hd196232196282%_
                                       _%tl196233196284%_
                                       _%e196234196287%_
                                       _%hd196235196290%_
                                       _%tl196236196292%_)))
                                  (_%__kont198046198047%_))
                              (_%__kont198046198047%_))))
                      (_%__kont198046198047%_))
                  (_%__kont198046198047%_))
              (_%__kont198046198047%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198046198047%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g196218196258%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self193768195925%_ _%ctx195927%_ _%stx195928%_ _%args195929%_)
        (let* ((_%self195931%_ _%self193768195925%_)
               (_%self195933%_ _%self195931%_)
               (_%arguments-ok?195943%_
                (let ((__method198521
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self195933%_ 'check-arguments))))
                  (if __method198521
                      (let ()
                        (declare (not safe))
                        (__method198521
                         _%self195933%_
                         _%ctx195927%_
                         _%stx195928%_
                         _%args195929%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self195933%_
                                 'check-arguments))
                        '#!void))))
               (_%g195945195955%_
                (lambda (_%g195946195952%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195946195952%_))))
               (_%g195944196019%_
                (lambda (_%g195946195958%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195946195958%_))
                      (let ((_%e195948195960%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195946195958%_))))
                        (let ((_%hd195949195963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195948195960%_)))
                              (_%tl195950195965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195948195960%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195950195965%_))
                              ((lambda (_%L195968%_)
                                 (let* ((_%klass195981%_
                                         (let ((__tmp198578
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195933%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195928%_
                                            __tmp198578)))
                                        (_%field195983%_
                                         (let ((__tmp198579
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195933%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass195981%_
                                            __tmp198579)))
                                        (_%object195985%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195927%_
                                            _%L195968%_)))
                                        (_%klass195988%_ _%klass195981%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass195988%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp198580
                                              (cons (if (or _%arguments-ok?195943%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195933%_
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
                                 _%self195933%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field195983%_ '()))
                        (cons _%object195985%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198580
                                          _%stx195928%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195988%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp198581
                                                  (cons (if (or _%arguments-ok?195943%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195933%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195933%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field195983%_ '()))
                            (cons _%object195985%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198581
                                              _%stx195928%_))
                                           (let ((_%$e196007%_
                                                  (let ((__tmp198582
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self195933%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass195988%_
                                                     __tmp198582))))
                                             (if _%$e196007%_
                                                 ((lambda (_%klass196010%_)
                                                    (let ((__tmp198583
                                                           (cons (if (or _%arguments-ok?195943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195933%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self195933%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field195983%_ '()))
                                     (cons _%object195985%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp198583 _%stx195928%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e196007%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self195933%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp198584
                                                            (let ((_%$obj196016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp198585
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp198585))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj196016%_ '())
                                              (cons _%object195985%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass195988%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj196016%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195933%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195983%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj196016%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?195943%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj196016%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self195933%_
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
                                                             _%self195933%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj196016%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self195933%_
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
               (gxc#xform-wrap-source __tmp198584 _%stx195928%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp198586
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object195985%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195933%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp198586 _%stx195928%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd195949195963%_)
                              (_%g195945195955%_ _%g195946195958%_))))
                      (_%g195945195955%_ _%g195946195958%_)))))
          (_%g195944196019%_ _%args195929%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass197808 __method-table197809)
        (let ((__check-arguments197810
               (let ((__tmp198587
                      (lambda ()
                        (let ((__method197811
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197809
                                  'check-arguments
                                  '#f))))
                          (if __method197811
                              __method197811
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198587)))
              (__slot197812
               (let ((__slot197813
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass197808 'slot))))
                 (if __slot197813
                     __slot197813
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self193768195925%_
                   _%ctx195927%_
                   _%stx195928%_
                   _%args195929%_)
            (let* ((_%self195931%_ _%self193768195925%_)
                   (_%self195933%_ _%self195931%_)
                   (_%arguments-ok?195943%_
                    ((force __check-arguments197810)
                     _%self195933%_
                     _%ctx195927%_
                     _%stx195928%_
                     _%args195929%_))
                   (_%g195945195955%_
                    (lambda (_%g195946195952%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g195946195952%_))))
                   (_%g195944196019%_
                    (lambda (_%g195946195958%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g195946195958%_))
                          (let ((_%e195948195960%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g195946195958%_))))
                            (let ((_%hd195949195963%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195948195960%_)))
                                  (_%tl195950195965%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195948195960%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl195950195965%_))
                                  ((lambda (_%L195968%_)
                                     (let* ((_%klass195981%_
                                             (let ((__tmp198588
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195933%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx195928%_
                                                __tmp198588)))
                                            (_%field195983%_
                                             (let ((__tmp198589
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195933%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass195981%_
                                                __tmp198589)))
                                            (_%object195985%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx195927%_
                                                _%L195968%_)))
                                            (_%klass195988%_ _%klass195981%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195988%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp198590
                                                  (cons (if (or _%arguments-ok?195943%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195933%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195933%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field195983%_ '()))
                            (cons _%object195985%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198590
                                              _%stx195928%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195988%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198591
                                                      (cons (if (or _%arguments-ok?195943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self195933%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195933%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field195983%_ '()))
                                (cons _%object195985%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198591
                                                  _%stx195928%_))
                                               (let ((_%$e196007%_
                                                      (let ((__tmp198592
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self195933%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass195988%_ __tmp198592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e196007%_
                                                     ((lambda (_%klass196010%_)
                                                        (let ((__tmp198593
                                                               (cons (if (or _%arguments-ok?195943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195933%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self195933%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field195983%_ '()))
                                         (cons _%object195985%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp198593 _%stx195928%_)))
              _%$e196007%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self195933%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp198594
                                                                (let ((_%$obj196016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp198595
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198595))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj196016%_ '())
                                                  (cons _%object195985%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass195988%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj196016%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195933%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field195983%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj196016%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?195943%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj196016%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195933%_
                               __slot197812
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
                        (##unchecked-structure-ref _%self195933%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj196016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195933%_
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
                   (gxc#xform-wrap-source __tmp198594 _%stx195928%_))
                 (let ((__tmp198596
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object195985%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195933%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp198596 _%stx195928%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd195949195963%_)
                                  (_%g195945195955%_ _%g195946195958%_))))
                          (_%g195945195955%_ _%g195946195958%_)))))
              (_%g195944196019%_ _%args195929%_))))))
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
      (lambda (_%self193769195687%_ _%ctx195689%_ _%stx195690%_ _%args195691%_)
        (let* ((_%self195693%_ _%self193769195687%_)
               (_%self195695%_ _%self195693%_)
               (_%arguments-ok?195705%_
                (let ((__method198522
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self195695%_ 'check-arguments))))
                  (if __method198522
                      (let ()
                        (declare (not safe))
                        (__method198522
                         _%self195695%_
                         _%ctx195689%_
                         _%stx195690%_
                         _%args195691%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self195695%_
                                 'check-arguments))
                        '#!void))))
               (_%g195707195721%_
                (lambda (_%g195708195718%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195708195718%_))))
               (_%g195706195800%_
                (lambda (_%g195708195724%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195708195724%_))
                      (let ((_%e195711195726%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195708195724%_))))
                        (let ((_%hd195712195729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195711195726%_)))
                              (_%tl195713195731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195711195726%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195713195731%_))
                              (let ((_%e195714195734%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195713195731%_))))
                                (let ((_%hd195715195737%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195714195734%_)))
                                      (_%tl195716195739%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195714195734%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195716195739%_))
                                      ((lambda (_%L195742%_ _%L195743%_)
                                         (let* ((_%klass195759%_
                                                 (let ((__tmp198597
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195695%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx195690%_
                                                    __tmp198597)))
                                                (_%field195761%_
                                                 (let ((__tmp198598
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195695%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass195759%_
                                                    __tmp198598)))
                                                (_%object195763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx195689%_
                                                    _%L195743%_)))
                                                (_%value195765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx195689%_
                                                    _%L195742%_)))
                                                (_%klass195768%_
                                                 _%klass195759%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195768%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198599
                                                      (cons (if (or _%arguments-ok?195705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self195695%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195695%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field195761%_ '()))
                                (cons _%object195763%_
                                      (cons _%value195765%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198599
                                                  _%stx195690%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass195768%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp198600
                                                          (cons (if (or _%arguments-ok?195705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self195695%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195695%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195761%_ '()))
                                    (cons _%object195763%_
                                          (cons _%value195765%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp198600
                                                      _%stx195690%_))
                                                   (let ((_%$e195788%_
                                                          (let ((__tmp198601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195695%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass195768%_
                     __tmp198601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e195788%_
                                                         ((lambda (_%klass195791%_)
                                                            (let ((__tmp198602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?195705%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195695%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self195695%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field195761%_ '()))
                                             (cons _%object195763%_
                                                   (cons _%value195765%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198602 _%stx195690%_)))
                  _%$e195788%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self195695%_ '4 '#f '#f))
                     (let ((__tmp198603
                            (let ((_%$obj195797%_
                                   (let ((__tmp198604
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp198604))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj195797%_ '())
                                                      (cons _%object195763%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass195768%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj195797%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self195695%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field195761%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj195797%_
                                                              '()))
                                                  (cons _%value195765%_
                                                        '())))))
                          (cons (if _%arguments-ok?195705%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self195695%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value195765%_ '())))))
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
                             _%self195695%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj195797%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195695%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value195765%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp198603 _%stx195690%_))
                     (let ((__tmp198605
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object195763%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self195695%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value195765%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp198605
                        _%stx195690%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd195715195737%_
                                       _%hd195712195729%_)
                                      (_%g195707195721%_ _%g195708195724%_))))
                              (_%g195707195721%_ _%g195708195724%_))))
                      (_%g195707195721%_ _%g195708195724%_)))))
          (_%g195706195800%_ _%args195691%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass197814 __method-table197815)
        (let ((__check-arguments197816
               (let ((__tmp198606
                      (lambda ()
                        (let ((__method197817
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197815
                                  'check-arguments
                                  '#f))))
                          (if __method197817
                              __method197817
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198606))))
          (lambda (_%self193769195687%_
                   _%ctx195689%_
                   _%stx195690%_
                   _%args195691%_)
            (let* ((_%self195693%_ _%self193769195687%_)
                   (_%self195695%_ _%self195693%_)
                   (_%arguments-ok?195705%_
                    ((force __check-arguments197816)
                     _%self195695%_
                     _%ctx195689%_
                     _%stx195690%_
                     _%args195691%_))
                   (_%g195707195721%_
                    (lambda (_%g195708195718%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g195708195718%_))))
                   (_%g195706195800%_
                    (lambda (_%g195708195724%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g195708195724%_))
                          (let ((_%e195711195726%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g195708195724%_))))
                            (let ((_%hd195712195729%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195711195726%_)))
                                  (_%tl195713195731%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195711195726%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195713195731%_))
                                  (let ((_%e195714195734%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195713195731%_))))
                                    (let ((_%hd195715195737%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195714195734%_)))
                                          (_%tl195716195739%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195714195734%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl195716195739%_))
                                          ((lambda (_%L195742%_ _%L195743%_)
                                             (let* ((_%klass195759%_
                                                     (let ((__tmp198607
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195695%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx195690%_
                                                        __tmp198607)))
                                                    (_%field195761%_
                                                     (let ((__tmp198608
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195695%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass195759%_
                                                        __tmp198608)))
                                                    (_%object195763%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195689%_
                                                        _%L195743%_)))
                                                    (_%value195765%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195689%_
                                                        _%L195742%_)))
                                                    (_%klass195768%_
                                                     _%klass195759%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass195768%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp198609
                                                          (cons (if (or _%arguments-ok?195705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self195695%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195695%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195761%_ '()))
                                    (cons _%object195763%_
                                          (cons _%value195765%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp198609
                                                      _%stx195690%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass195768%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp198610
                                                              (cons (if (or _%arguments-ok?195705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self195695%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195695%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field195761%_ '()))
                                        (cons _%object195763%_
                                              (cons _%value195765%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp198610 _%stx195690%_))
               (let ((_%$e195788%_
                      (let ((__tmp198611
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195695%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass195768%_
                         __tmp198611))))
                 (if _%$e195788%_
                     ((lambda (_%klass195791%_)
                        (let ((__tmp198612
                               (cons (if (or _%arguments-ok?195705%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self195695%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self195695%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field195761%_
                                                             '()))
                                                 (cons _%object195763%_
                                                       (cons _%value195765%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp198612 _%stx195690%_)))
                      _%$e195788%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195695%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp198613
                                (let ((_%$obj195797%_
                                       (let ((__tmp198614
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp198614))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj195797%_
                                                                '())
                                                          (cons _%object195763%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass195768%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj195797%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self195695%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field195761%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value195765%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?195705%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj195797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self195695%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value195765%_ '())))))
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
                                 _%self195695%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj195797%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195695%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value195765%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp198613 _%stx195690%_))
                         (let ((__tmp198615
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object195763%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195695%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value195765%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp198615
                            _%stx195690%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd195715195737%_
                                           _%hd195712195729%_)
                                          (_%g195707195721%_
                                           _%g195708195724%_))))
                                  (_%g195707195721%_ _%g195708195724%_))))
                          (_%g195707195721%_ _%g195708195724%_)))))
              (_%g195706195800%_ _%args195691%_))))))
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
      (lambda (_%self193770195500%_ _%ctx195502%_ _%stx195503%_ _%args195504%_)
        (let* ((_%self195506%_ _%self193770195500%_)
               (_%self195508%_ _%self195506%_)
               (_%self195517195527%_ _%self195508%_)
               (_%E195519195531%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195517195527%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K195520195541%_
                (lambda (_%inline195534%_ _%dispatch195535%_ _%arity195536%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self195508%_
                         _%args195504%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx195503%_
                         _%arity195536%_)))
                  (if _%inline195534%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp198616 (_%inline195534%_ _%stx195503%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp198616
                           _%stx195503%_
                           _%ctx195502%_)))
                      (if (and _%dispatch195535%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch195535%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch195535%_))
                            (let ((__tmp198617
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch195535%_
                                                           '()))
                                               _%args195504%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp198617
                               _%stx195503%_
                               _%ctx195502%_)))
                          (gxc#!procedure::optimize-call
                           _%self195508%_
                           _%ctx195502%_
                           _%stx195503%_
                           _%args195504%_)))))
               (_%e195521195544%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195517195527%_ '1 '#f '#f)))
               (_%e195522195547%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195517195527%_ '2 '#f '#f)))
               (_%e195523195550%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195517195527%_ '3 '#f '#f)))
               (_%arity195553%_ _%e195523195550%_)
               (_%e195524195555%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195517195527%_ '4 '#f '#f)))
               (_%dispatch195558%_ _%e195524195555%_)
               (_%e195525195560%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195517195527%_ '5 '#f '#f)))
               (_%inline195563%_ _%e195525195560%_))
          (_%K195520195541%_
           _%inline195563%_
           _%dispatch195558%_
           _%arity195553%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self193771195350%_ _%ctx195352%_ _%stx195353%_ _%args195354%_)
        (let* ((_%self195356%_ _%self193771195350%_)
               (_%self195358%_ _%self195356%_)
               (_%$e195372%_
                (let ((__tmp198619
                       (lambda (_%g195367195369%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g195367195369%_
                            _%args195354%_))))
                      (__tmp198618
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self195358%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp198619 __tmp198618))))
          (if _%$e195372%_
              ((lambda (_%clause195375%_)
                 (let ((__method198523
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause195375%_ 'optimize-call))))
                   (if __method198523
                       (let ()
                         (declare (not safe))
                         (__method198523
                          _%clause195375%_
                          _%ctx195352%_
                          _%stx195353%_
                          _%args195354%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause195375%_
                                  'optimize-call))
                         '#!void))))
               _%$e195372%_)
              (let ((__tmp198620
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self195358%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx195353%_
                 __tmp198620))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self193772195088%_ _%ctx195090%_ _%stx195091%_ _%args195092%_)
        (let* ((_%self195094%_ _%self193772195088%_)
               (_%self195096%_ _%self195094%_)
               (_%self195105195114%_ _%self195096%_)
               (_%E195107195118%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195105195114%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K195108195209%_
                (lambda (_%dispatch195121%_ _%table195122%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch195121%_))
                      (let* ((_%g195123195133%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch195121%_)))
                             (_%else195125195141%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch195121%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx195090%_
                                   _%stx195091%_))))
                             (_%K195127195190%_
                              (lambda (_%main195144%_ _%keys195145%_)
                                (let ((_g198621_
                                       (gxc#!kw-lambda-split-args
                                        _%stx195091%_
                                        _%args195092%_)))
                                  (begin
                                    (let ((_g198622_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198621_)
                                                 (##values-length _g198621_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198622_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198622_)))
                                    (let ((_%pargs195147%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198621_ 0)))
                                          (_%kwargs195148%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198621_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main195144%_))
                                        (if _%table195122%_
                                            (let ((_%xargs195156%_
                                                   (map (lambda (_%key195150%_)
                                                          (let ((_%$e195152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key195150%_ _%kwargs195148%_))))
                    (if _%$e195152%_ _%$e195152%_ '(%#ref absent-value))))
                _%keys195145%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw195158%_)
                                                 (if (memq (car _%kw195158%_)
                                                           _%keys195145%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx195091%_
                                                        _%keys195145%_
                                                        _%kw195158%_))))
                                               _%kwargs195148%_)
                                              (let ((__tmp198623
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main195144%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs195147%_
                                  _%xargs195156%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp198623
                                                 _%stx195091%_
                                                 _%ctx195090%_)))
                                            (let* ((_%kwt195160%_
                                                    (let ((__tmp198624
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp198624)))
                                                   (_%kwvars195164%_
                                                    (map (lambda (_%_195162%_)
                                                           (let ((__tmp198625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp198625)))
                 _%kwargs195148%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind195169%_
                                                    (map (lambda (_%kw195166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar195167%_)
                   (cons (cons _%kwvar195167%_ '())
                         (cons (cdr _%kw195166%_) '())))
                 _%kwargs195148%_
                 _%kwvars195164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset195174%_
                                                    (map (lambda (_%kw195171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar195172%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt195160%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw195171%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar195172%_
                                                             '()))
                                                 '()))))))
                 _%kwargs195148%_
                 _%kwvars195164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs195179%_
                                                    (map (lambda (_%kw195176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar195177%_)
                   (cons (car _%kw195176%_)
                         (cons '%#ref (cons _%kwvar195177%_ '()))))
                 _%kwargs195148%_
                 _%kwvars195164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs195187%_
                                                    (map (lambda (_%key195181%_)
                                                           (let ((_%$e195183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key195181%_ _%xkwargs195179%_))))
                     (if _%$e195183%_ _%$e195183%_ '(%#ref absent-value))))
                 _%keys195145%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp198626
                                                    (cons '%#let-values
                                                          (cons _%kwbind195169%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt195160%_ '())
                                                      (cons (let ((__tmp198627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs195148%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198627 _%stx195091%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp198628
                                                             (cons (let ((__tmp198629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main195144%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt195160%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs195147%_
                                                       _%xargs195187%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp198629 _%stx195091%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp198628 _%kwset195174%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp198626
                                               _%stx195091%_
                                               _%ctx195090%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g195123195133%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e195128195193%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195123195133%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e195129195196%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195123195133%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e195130195199%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195123195133%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys195202%_ _%e195130195199%_)
                                   (_%e195131195204%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195123195133%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main195207%_ _%e195131195204%_))
                              (_%K195127195190%_
                               _%main195207%_
                               _%keys195202%_))
                            (_%else195125195141%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx195090%_ _%stx195091%_)))))
               (_%e195109195212%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195105195114%_ '1 '#f '#f)))
               (_%e195110195215%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195105195114%_ '2 '#f '#f)))
               (_%e195111195218%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195105195114%_ '3 '#f '#f)))
               (_%table195221%_ _%e195111195218%_)
               (_%e195112195223%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195105195114%_ '4 '#f '#f)))
               (_%dispatch195226%_ _%e195112195223%_))
          (_%K195108195209%_ _%dispatch195226%_ _%table195221%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx194701%_ _%args194702%_)
        (let _%lp194704%_ ((_%rest194706%_ _%args194702%_)
                           (_%pargs194707%_ '())
                           (_%kwargs194708%_ '()))
          (let* ((_%__stx198082198083%_ _%rest194706%_)
                 (_%g194714194766%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx198082198083%_)))))
            (let ((_%__kont198084198085%_
                   (lambda (_%L194945%_ _%L194946%_)
                     (_%lp194704%_
                      _%L194945%_
                      (cons _%L194946%_ _%pargs194707%_)
                      _%kwargs194708%_)))
                  (_%__kont198086198087%_
                   (lambda (_%L194891%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L194891%_ _%pargs194707%_))
                             (reverse _%kwargs194708%_))))
                  (_%__kont198088198089%_
                   (lambda (_%L194838%_ _%L194839%_ _%L194840%_)
                     (let ((_%kw194857%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L194840%_))))
                       (if (assq _%kw194857%_ _%kwargs194708%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx194701%_
                              _%kw194857%_))
                           (_%lp194704%_
                            _%L194838%_
                            _%pargs194707%_
                            (cons (cons _%kw194857%_ _%L194839%_)
                                  _%kwargs194708%_))))))
                  (_%__kont198090198091%_
                   (lambda (_%L194786%_ _%L194787%_)
                     (_%lp194704%_
                      _%L194786%_
                      (cons _%L194787%_ _%pargs194707%_)
                      _%kwargs194708%_)))
                  (_%__kont198092198093%_
                   (lambda ()
                     (values (reverse _%pargs194707%_)
                             (reverse _%kwargs194708%_)))))
              (let ((_%__match198189198190%_
                     (lambda (_%e194745194806%_
                              _%hd194746194809%_
                              _%tl194747194811%_
                              _%e194748194814%_
                              _%hd194749194817%_
                              _%tl194750194819%_
                              _%e194751194822%_
                              _%hd194752194825%_
                              _%tl194753194827%_
                              _%e194754194830%_
                              _%hd194755194833%_
                              _%tl194756194835%_)
                       (let ((_%L194838%_ _%tl194756194835%_)
                             (_%L194839%_ _%hd194755194833%_)
                             (_%L194840%_ _%hd194752194825%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L194840%_))
                             (_%__kont198088198089%_
                              _%L194838%_
                              _%L194839%_
                              _%L194840%_)
                             (_%__kont198090198091%_
                              _%tl194747194811%_
                              _%hd194746194809%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx198082198083%_))
                    (let ((_%e194718194910%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx198082198083%_))))
                      (let ((_%tl194720194915%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194718194910%_)))
                            (_%hd194719194913%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194718194910%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd194719194913%_))
                            (let ((_%e194721194918%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd194719194913%_))))
                              (let ((_%tl194723194923%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194721194918%_)))
                                    (_%hd194722194921%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194721194918%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd194722194921%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd194722194921%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl194723194923%_))
                                            (let ((_%e194724194926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl194723194923%_))))
                                              (let ((_%tl194726194931%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e194724194926%_)))
                                                    (_%hd194725194929%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e194724194926%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd194725194929%_))
                                                    (let ((_%e194727194934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd194725194929%_))))
                                                      (if (equal? _%e194727194934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194726194931%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194720194915%_))
                          (let ((_%e194728194937%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194720194915%_))))
                            (let ((_%tl194730194942%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194728194937%_)))
                                  (_%hd194729194940%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194728194937%_))))
                              (_%__kont198084198085%_
                               _%tl194730194942%_
                               _%hd194729194940%_)))
                          (_%__kont198090198091%_
                           _%tl194720194915%_
                           _%hd194719194913%_))
                      (_%__kont198090198091%_
                       _%tl194720194915%_
                       _%hd194719194913%_))
                  (if (equal? _%e194727194934%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194726194931%_))
                          (_%__kont198086198087%_ _%tl194720194915%_)
                          (_%__kont198090198091%_
                           _%tl194720194915%_
                           _%hd194719194913%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194726194931%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194720194915%_))
                              (let ((_%e194754194830%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194720194915%_))))
                                (let ((_%tl194756194835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194754194830%_)))
                                      (_%hd194755194833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194754194830%_))))
                                  (_%__match198189198190%_
                                   _%e194718194910%_
                                   _%hd194719194913%_
                                   _%tl194720194915%_
                                   _%e194721194918%_
                                   _%hd194722194921%_
                                   _%tl194723194923%_
                                   _%e194724194926%_
                                   _%hd194725194929%_
                                   _%tl194726194931%_
                                   _%e194754194830%_
                                   _%hd194755194833%_
                                   _%tl194756194835%_)))
                              (_%__kont198090198091%_
                               _%tl194720194915%_
                               _%hd194719194913%_))
                          (_%__kont198090198091%_
                           _%tl194720194915%_
                           _%hd194719194913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194726194931%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl194720194915%_))
                                                            (let ((_%e194754194830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl194720194915%_))))
                      (let ((_%tl194756194835%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194754194830%_)))
                            (_%hd194755194833%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194754194830%_))))
                        (_%__match198189198190%_
                         _%e194718194910%_
                         _%hd194719194913%_
                         _%tl194720194915%_
                         _%e194721194918%_
                         _%hd194722194921%_
                         _%tl194723194923%_
                         _%e194724194926%_
                         _%hd194725194929%_
                         _%tl194726194931%_
                         _%e194754194830%_
                         _%hd194755194833%_
                         _%tl194756194835%_)))
                    (_%__kont198090198091%_
                     _%tl194720194915%_
                     _%hd194719194913%_))
                (_%__kont198090198091%_
                 _%tl194720194915%_
                 _%hd194719194913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont198090198091%_
                                             _%tl194720194915%_
                                             _%hd194719194913%_))
                                        (_%__kont198090198091%_
                                         _%tl194720194915%_
                                         _%hd194719194913%_))
                                    (_%__kont198090198091%_
                                     _%tl194720194915%_
                                     _%hd194719194913%_))))
                            (_%__kont198090198091%_
                             _%tl194720194915%_
                             _%hd194719194913%_))))
                    (_%__kont198092198093%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self193773194683%_ _%ctx194685%_ _%stx194686%_ _%args194687%_)
        (let* ((_%self194689%_ _%self193773194683%_)
               (_%self194691%_ _%self194689%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx194685%_ _%stx194686%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self194371%_ _%stx194372%_)
        (let* ((_%__stx198198198199%_ _%stx194372%_)
               (_%g194375194415%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198198198199%_)))))
          (let ((_%__kont198200198201%_
                 (lambda (_%L194521%_ _%L194522%_)
                   (let ((_%$e194549%_
                          (member 'return:
                                  (let ((__tmp198630
                                         (lambda (_%g194541194544%_
                                                  _%g194542194546%_)
                                           (cons _%g194541194544%_
                                                 _%g194542194546%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp198630 '() _%L194522%_))
                                  gx#stx-eq?)))
                     (if _%$e194549%_
                         ((lambda (_%tail194552%_)
                            (let ((_%type194554%_
                                   (let ((__tmp198631
                                          (let ((__tmp198632
                                                 (cadr _%tail194552%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp198632))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx194372%_
                                      __tmp198631))))
                              (gxc#check-return-type!
                               _%stx194372%_
                               _%L194521%_
                               _%type194554%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self194371%_
                                 _%L194521%_))))
                          _%$e194549%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self194371%_ _%L194521%_))))))
                (_%__kont198204198205%_
                 (lambda (_%L194444%_ _%L194445%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self194371%_ _%L194444%_)))))
            (let ((_%__match198235198236%_
                   (lambda (_%e194379194465%_
                            _%hd194380194468%_
                            _%tl194381194470%_
                            _%e194382194473%_
                            _%hd194383194476%_
                            _%tl194384194478%_
                            _%e194385194481%_
                            _%hd194386194484%_
                            _%tl194387194486%_
                            _%__splice198202198203%_
                            _%target194388194489%_
                            _%tl194390194491%_)
                     (letrec ((_%loop194391194494%_
                               (lambda (_%hd194389194497%_
                                        _%signature194395194499%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd194389194497%_))
                                     (let ((_%e194392194502%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd194389194497%_))))
                                       (let ((_%lp-tl194394194507%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e194392194502%_)))
                                             (_%lp-hd194393194505%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e194392194502%_))))
                                         (_%loop194391194494%_
                                          _%lp-tl194394194507%_
                                          (cons _%lp-hd194393194505%_
                                                _%signature194395194499%_))))
                                     (let ((_%signature194396194510%_
                                            (reverse _%signature194395194499%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl194384194478%_))
                                           (let ((_%e194397194513%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl194384194478%_))))
                                             (let ((_%tl194399194518%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e194397194513%_)))
                                                   (_%hd194398194516%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e194397194513%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl194399194518%_))
                                                   (_%__kont198200198201%_
                                                    _%hd194398194516%_
                                                    _%signature194396194510%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g194375194415%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g194375194415%_))))))))
                       (_%loop194391194494%_ _%target194388194489%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198198198199%_))
                  (let ((_%e194379194465%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198198198199%_))))
                    (let ((_%tl194381194470%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194379194465%_)))
                          (_%hd194380194468%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194379194465%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194381194470%_))
                          (let ((_%e194382194473%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194381194470%_))))
                            (let ((_%tl194384194478%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194382194473%_)))
                                  (_%hd194383194476%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194382194473%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194383194476%_))
                                  (let ((_%e194385194481%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194383194476%_))))
                                    (let ((_%tl194387194486%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194385194481%_)))
                                          (_%hd194386194484%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194385194481%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194386194484%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd194386194484%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl194387194486%_))
                                                  (let ((_%__splice198202198203%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl194387194486%_
                                                            '0))))
                                                    (let ((_%tl194390194491%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice198202198203%_
                                                              '1)))
                                                          (_%target194388194489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice198202198203%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194390194491%_))
                                                          (_%__match198235198236%_
                                                           _%e194379194465%_
                                                           _%hd194380194468%_
                                                           _%tl194381194470%_
                                                           _%e194382194473%_
                                                           _%hd194383194476%_
                                                           _%tl194384194478%_
                                                           _%e194385194481%_
                                                           _%hd194386194484%_
                                                           _%tl194387194486%_
                                                           _%__splice198202198203%_
                                                           _%target194388194489%_
                                                           _%tl194390194491%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl194384194478%_))
                      (let ((_%e194408194436%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl194384194478%_))))
                        (let ((_%tl194410194441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194408194436%_)))
                              (_%hd194409194439%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194408194436%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194410194441%_))
                              (_%__kont198204198205%_
                               _%hd194409194439%_
                               _%hd194383194476%_)
                              (let ()
                                (declare (not safe))
                                (_%g194375194415%_)))))
                      (let () (declare (not safe)) (_%g194375194415%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194384194478%_))
                                                      (let ((_%e194408194436%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194384194478%_))))
                (let ((_%tl194410194441%_
                       (let () (declare (not safe)) (##cdr _%e194408194436%_)))
                      (_%hd194409194439%_
                       (let ()
                         (declare (not safe))
                         (##car _%e194408194436%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194410194441%_))
                      (_%__kont198204198205%_
                       _%hd194409194439%_
                       _%hd194383194476%_)
                      (let () (declare (not safe)) (_%g194375194415%_)))))
              (let () (declare (not safe)) (_%g194375194415%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194384194478%_))
                                                  (let ((_%e194408194436%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194384194478%_))))
                                                    (let ((_%tl194410194441%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194408194436%_)))
                                                          (_%hd194409194439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194408194436%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194410194441%_))
                                                          (_%__kont198204198205%_
                                                           _%hd194409194439%_
                                                           _%hd194383194476%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194375194415%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g194375194415%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194384194478%_))
                                              (let ((_%e194408194436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194384194478%_))))
                                                (let ((_%tl194410194441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194408194436%_)))
                                                      (_%hd194409194439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194408194436%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194410194441%_))
                                                      (_%__kont198204198205%_
                                                       _%hd194409194439%_
                                                       _%hd194383194476%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194375194415%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g194375194415%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194384194478%_))
                                      (let ((_%e194408194436%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194384194478%_))))
                                        (let ((_%tl194410194441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194408194436%_)))
                                              (_%hd194409194439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194408194436%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194410194441%_))
                                              (_%__kont198204198205%_
                                               _%hd194409194439%_
                                               _%hd194383194476%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g194375194415%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194375194415%_))))))
                          (let () (declare (not safe)) (_%g194375194415%_)))))
                  (let () (declare (not safe)) (_%g194375194415%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx194349%_ _%expr194350%_ _%type194351%_)
        (let ((_%$e194353%_ (not _%type194351%_)))
          (if _%$e194353%_
              _%$e194353%_
              (let ((_%$e194356%_
                     (eq? (##structure-ref _%type194351%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e194356%_
                    _%$e194356%_
                    (let ((_%expr-type194360%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr194350%_))))
                      (if (not _%expr-type194360%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx194349%_
                             _%type194351%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type194360%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx194349%_
                                 _%type194351%_
                                 _%expr-type194360%_))
                              (let ((_%$e194364%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type194360%_
                                        'gxc#!abort::t))))
                                (if _%$e194364%_
                                    _%$e194364%_
                                    (let ((_%$e194367%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type194360%_
                                              _%type194351%_))))
                                      (if _%$e194367%_
                                          _%$e194367%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx194349%_
                                             _%type194351%_
                                             _%expr-type194360%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self193775%_ _%stx193776%_)
        (let* ((_%__stx198280198281%_ _%stx193776%_)
               (_%g193781193891%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198280198281%_)))))
          (let ((_%__kont198282198283%_
                 (lambda (_%L194323%_ _%L194324%_ _%L194325%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L194325%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self193775%_ _%L194324%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self193775%_ _%L194323%_)))))
                (_%__kont198284198285%_
                 (lambda (_%L194149%_ _%L194150%_ _%L194151%_ _%L194152%_)
                   (let ((_%$e194184%_
                          (let ((__tmp198633
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L194152%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp198633))))
                     (if _%$e194184%_
                         ((lambda (_%pred-type194187%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type194187%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type194187%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test194192%_
                                        (let ((__tmp198634
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L194152%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L194151%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp198634
                                           _%stx193776%_
                                           _%self193775%_)))
                                       (_%K194196%_
                                        (let ((__tmp198635
                                               (lambda ()
                                                 (let ((__tmp198638
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self193775%_
                                                             _%L194150%_))))
                                                       (__tmp198636
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L194151%_))
                            (let ((__tmp198637
                                   (##structure-ref
                                    _%pred-type194187%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx193776%_
                               __tmp198637)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp198638
                                                    gxc#current-compile-path-type
                                                    __tmp198636)))))
                                          (declare (not safe))
                                          (__make-promise __tmp198635)))
                                       (_%E194199%_
                                        (let ((__tmp198639
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self193775%_
                                                    _%L194149%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp198639)))
                                       (_%__stx198258198259%_ _%test194192%_)
                                       (_%g194203194217%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx198258198259%_)))))
                                  (let ((_%__kont198260198261%_
                                         (lambda (_%L194245%_ _%L194246%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L194245%_))
                                               (force _%K194196%_)
                                               (force _%E194199%_))))
                                        (_%__kont198262198263%_
                                         (lambda ()
                                           (let ((__tmp198640
                                                  (cons '%#if
                                                        (cons _%test194192%_
                                                              (cons (force _%K194196%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E194199%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198640
                                              _%stx193776%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx198258198259%_))
                                        (let ((_%e194207194229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx198258198259%_))))
                                          (let ((_%tl194209194234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194207194229%_)))
                                                (_%hd194208194232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194207194229%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl194209194234%_))
                                                (let ((_%e194210194237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl194209194234%_))))
                                                  (let ((_%tl194212194242%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e194210194237%_)))
                                                        (_%hd194211194240%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e194210194237%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194212194242%_))
                                                        (_%__kont198260198261%_
                                                         _%hd194211194240%_
                                                         _%hd194208194232%_)
                                                        (_%__kont198262198263%_))))
                                                (_%__kont198262198263%_))))
                                        (_%__kont198262198263%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self193775%_
                                   _%stx193776%_))))
                          _%$e194184%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self193775%_
                            _%stx193776%_))))))
                (_%__kont198286198287%_
                 (lambda (_%L194025%_ _%L194026%_ _%L194027%_ _%L194028%_)
                   (gxc#optimize-if%
                    _%self193775%_
                    (let ((__tmp198641
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L194027%_
                                       (cons _%L194025%_
                                             (cons _%L194026%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198641 _%stx193776%_)))))
                (_%__kont198288198289%_
                 (lambda (_%L193928%_ _%L193929%_ _%L193930%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self193775%_ _%stx193776%_)))))
            (let ((_%__match198487198488%_
                   (lambda (_%e193845193953%_
                            _%hd193846193956%_
                            _%tl193847193958%_
                            _%e193848193961%_
                            _%hd193849193964%_
                            _%tl193850193966%_
                            _%e193851193969%_
                            _%hd193852193972%_
                            _%tl193853193974%_
                            _%e193854193977%_
                            _%hd193855193980%_
                            _%tl193856193982%_
                            _%e193857193985%_
                            _%hd193858193988%_
                            _%tl193859193990%_
                            _%e193860193993%_
                            _%hd193861193996%_
                            _%tl193862193998%_
                            _%e193863194001%_
                            _%hd193864194004%_
                            _%tl193865194006%_
                            _%e193866194009%_
                            _%hd193867194012%_
                            _%tl193868194014%_
                            _%e193869194017%_
                            _%hd193870194020%_
                            _%tl193871194022%_)
                     (let ((_%L194025%_ _%hd193870194020%_)
                           (_%L194026%_ _%hd193867194012%_)
                           (_%L194027%_ _%hd193864194004%_)
                           (_%L194028%_ _%hd193861193996%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L194028%_ 'not))
                           (_%__kont198286198287%_
                            _%L194025%_
                            _%L194026%_
                            _%L194027%_
                            _%L194028%_)
                           (_%__kont198288198289%_
                            _%hd193870194020%_
                            _%hd193867194012%_
                            _%hd193849193964%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198280198281%_))
                  (let ((_%e193786194275%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198280198281%_))))
                    (let ((_%tl193788194280%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193786194275%_)))
                          (_%hd193787194278%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193786194275%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193788194280%_))
                          (let ((_%e193789194283%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193788194280%_))))
                            (let ((_%tl193791194288%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193789194283%_)))
                                  (_%hd193790194286%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193789194283%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193790194286%_))
                                  (let ((_%e193792194291%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193790194286%_))))
                                    (let ((_%tl193794194296%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193792194291%_)))
                                          (_%hd193793194294%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193792194291%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193793194294%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd193793194294%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193794194296%_))
                                                  (let ((_%e193795194299%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193794194296%_))))
                                                    (let ((_%tl193797194304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193795194299%_)))
                                                          (_%hd193796194302%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193795194299%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193797194304%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193791194288%_))
                      (let ((_%e193798194307%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193791194288%_))))
                        (let ((_%tl193800194312%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193798194307%_)))
                              (_%hd193799194310%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193798194307%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193800194312%_))
                              (let ((_%e193801194315%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193800194312%_))))
                                (let ((_%tl193803194320%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193801194315%_)))
                                      (_%hd193802194318%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193801194315%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193803194320%_))
                                      (_%__kont198282198283%_
                                       _%hd193802194318%_
                                       _%hd193799194310%_
                                       _%hd193796194302%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g193781193891%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g193781193891%_)))))
                      (let () (declare (not safe)) (_%g193781193891%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193791194288%_))
                      (let ((_%e193881193912%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193791194288%_))))
                        (let ((_%tl193883193917%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193881193912%_)))
                              (_%hd193882193915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193881193912%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193883193917%_))
                              (let ((_%e193884193920%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193883193917%_))))
                                (let ((_%tl193886193925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193884193920%_)))
                                      (_%hd193885193923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193884193920%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193886193925%_))
                                      (_%__kont198288198289%_
                                       _%hd193885193923%_
                                       _%hd193882193915%_
                                       _%hd193790194286%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g193781193891%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g193781193891%_)))))
                      (let () (declare (not safe)) (_%g193781193891%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193791194288%_))
                                                      (let ((_%e193881193912%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193791194288%_))))
                (let ((_%tl193883193917%_
                       (let () (declare (not safe)) (##cdr _%e193881193912%_)))
                      (_%hd193882193915%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193881193912%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193883193917%_))
                      (let ((_%e193884193920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193883193917%_))))
                        (let ((_%tl193886193925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193884193920%_)))
                              (_%hd193885193923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193884193920%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193886193925%_))
                              (_%__kont198288198289%_
                               _%hd193885193923%_
                               _%hd193882193915%_
                               _%hd193790194286%_)
                              (let ()
                                (declare (not safe))
                                (_%g193781193891%_)))))
                      (let () (declare (not safe)) (_%g193781193891%_)))))
              (let () (declare (not safe)) (_%g193781193891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd193793194294%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193794194296%_))
                                                      (let ((_%e193817194085%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193794194296%_))))
                (let ((_%tl193819194090%_
                       (let () (declare (not safe)) (##cdr _%e193817194085%_)))
                      (_%hd193818194088%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193817194085%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193818194088%_))
                      (let ((_%e193820194093%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193818194088%_))))
                        (let ((_%tl193822194098%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193820194093%_)))
                              (_%hd193821194096%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193820194093%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193821194096%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193821194096%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193822194098%_))
                                      (let ((_%e193823194101%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193822194098%_))))
                                        (let ((_%tl193825194106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193823194101%_)))
                                              (_%hd193824194104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193823194101%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193825194106%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193819194090%_))
                                                  (let ((_%e193826194109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193819194090%_))))
                                                    (let ((_%tl193828194114%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193826194109%_)))
                                                          (_%hd193827194112%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193826194109%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193827194112%_))
                                                          (let ((_%e193829194117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193827194112%_))))
                    (let ((_%tl193831194122%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193829194117%_)))
                          (_%hd193830194120%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193829194117%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193830194120%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd193830194120%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193831194122%_))
                                  (let ((_%e193832194125%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193831194122%_))))
                                    (let ((_%tl193834194130%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193832194125%_)))
                                          (_%hd193833194128%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193832194125%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193834194130%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193828194114%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193791194288%_))
                                                  (let ((_%e193835194133%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193791194288%_))))
                                                    (let ((_%tl193837194138%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193835194133%_)))
                                                          (_%hd193836194136%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193835194133%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193837194138%_))
                                                          (let ((_%e193838194141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193837194138%_))))
                    (let ((_%tl193840194146%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193838194141%_)))
                          (_%hd193839194144%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193838194141%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193840194146%_))
                          (_%__kont198284198285%_
                           _%hd193839194144%_
                           _%hd193836194136%_
                           _%hd193833194128%_
                           _%hd193824194104%_)
                          (let () (declare (not safe)) (_%g193781193891%_)))))
                  (let () (declare (not safe)) (_%g193781193891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193781193891%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193791194288%_))
                                                  (let ((_%e193881193912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193791194288%_))))
                                                    (let ((_%tl193883193917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193881193912%_)))
                                                          (_%hd193882193915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193881193912%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193883193917%_))
                                                          (let ((_%e193884193920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193883193917%_))))
                    (let ((_%tl193886193925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193884193920%_)))
                          (_%hd193885193923%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193884193920%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193886193925%_))
                          (_%__kont198288198289%_
                           _%hd193885193923%_
                           _%hd193882193915%_
                           _%hd193790194286%_)
                          (let () (declare (not safe)) (_%g193781193891%_)))))
                  (let () (declare (not safe)) (_%g193781193891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193781193891%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193828194114%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193791194288%_))
                                                  (let ((_%e193866194009%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193791194288%_))))
                                                    (let ((_%tl193868194014%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193866194009%_)))
                                                          (_%hd193867194012%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193866194009%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193868194014%_))
                                                          (let ((_%e193869194017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193868194014%_))))
                    (let ((_%tl193871194022%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193869194017%_)))
                          (_%hd193870194020%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193869194017%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193871194022%_))
                          (_%__match198487198488%_
                           _%e193786194275%_
                           _%hd193787194278%_
                           _%tl193788194280%_
                           _%e193789194283%_
                           _%hd193790194286%_
                           _%tl193791194288%_
                           _%e193792194291%_
                           _%hd193793194294%_
                           _%tl193794194296%_
                           _%e193817194085%_
                           _%hd193818194088%_
                           _%tl193819194090%_
                           _%e193820194093%_
                           _%hd193821194096%_
                           _%tl193822194098%_
                           _%e193823194101%_
                           _%hd193824194104%_
                           _%tl193825194106%_
                           _%e193826194109%_
                           _%hd193827194112%_
                           _%tl193828194114%_
                           _%e193866194009%_
                           _%hd193867194012%_
                           _%tl193868194014%_
                           _%e193869194017%_
                           _%hd193870194020%_
                           _%tl193871194022%_)
                          (let () (declare (not safe)) (_%g193781193891%_)))))
                  (let () (declare (not safe)) (_%g193781193891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193781193891%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193791194288%_))
                                                  (let ((_%e193881193912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193791194288%_))))
                                                    (let ((_%tl193883193917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193881193912%_)))
                                                          (_%hd193882193915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193881193912%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193883193917%_))
                                                          (let ((_%e193884193920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193883193917%_))))
                    (let ((_%tl193886193925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193884193920%_)))
                          (_%hd193885193923%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193884193920%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193886193925%_))
                          (_%__kont198288198289%_
                           _%hd193885193923%_
                           _%hd193882193915%_
                           _%hd193790194286%_)
                          (let () (declare (not safe)) (_%g193781193891%_)))))
                  (let () (declare (not safe)) (_%g193781193891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193781193891%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193828194114%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193791194288%_))
                                          (let ((_%e193866194009%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193791194288%_))))
                                            (let ((_%tl193868194014%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193866194009%_)))
                                                  (_%hd193867194012%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193866194009%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193868194014%_))
                                                  (let ((_%e193869194017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193868194014%_))))
                                                    (let ((_%tl193871194022%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193869194017%_)))
                                                          (_%hd193870194020%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193869194017%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193871194022%_))
                                                          (_%__match198487198488%_
                                                           _%e193786194275%_
                                                           _%hd193787194278%_
                                                           _%tl193788194280%_
                                                           _%e193789194283%_
                                                           _%hd193790194286%_
                                                           _%tl193791194288%_
                                                           _%e193792194291%_
                                                           _%hd193793194294%_
                                                           _%tl193794194296%_
                                                           _%e193817194085%_
                                                           _%hd193818194088%_
                                                           _%tl193819194090%_
                                                           _%e193820194093%_
                                                           _%hd193821194096%_
                                                           _%tl193822194098%_
                                                           _%e193823194101%_
                                                           _%hd193824194104%_
                                                           _%tl193825194106%_
                                                           _%e193826194109%_
                                                           _%hd193827194112%_
                                                           _%tl193828194114%_
                                                           _%e193866194009%_
                                                           _%hd193867194012%_
                                                           _%tl193868194014%_
                                                           _%e193869194017%_
                                                           _%hd193870194020%_
                                                           _%tl193871194022%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193781193891%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193781193891%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193781193891%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193791194288%_))
                                          (let ((_%e193881193912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193791194288%_))))
                                            (let ((_%tl193883193917%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193881193912%_)))
                                                  (_%hd193882193915%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193881193912%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193883193917%_))
                                                  (let ((_%e193884193920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193883193917%_))))
                                                    (let ((_%tl193886193925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193884193920%_)))
                                                          (_%hd193885193923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193884193920%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193886193925%_))
                                                          (_%__kont198288198289%_
                                                           _%hd193885193923%_
                                                           _%hd193882193915%_
                                                           _%hd193790194286%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193781193891%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193781193891%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193781193891%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193828194114%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193791194288%_))
                                      (let ((_%e193866194009%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193791194288%_))))
                                        (let ((_%tl193868194014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193866194009%_)))
                                              (_%hd193867194012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193866194009%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193868194014%_))
                                              (let ((_%e193869194017%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193868194014%_))))
                                                (let ((_%tl193871194022%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193869194017%_)))
                                                      (_%hd193870194020%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193869194017%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193871194022%_))
                                                      (_%__match198487198488%_
                                                       _%e193786194275%_
                                                       _%hd193787194278%_
                                                       _%tl193788194280%_
                                                       _%e193789194283%_
                                                       _%hd193790194286%_
                                                       _%tl193791194288%_
                                                       _%e193792194291%_
                                                       _%hd193793194294%_
                                                       _%tl193794194296%_
                                                       _%e193817194085%_
                                                       _%hd193818194088%_
                                                       _%tl193819194090%_
                                                       _%e193820194093%_
                                                       _%hd193821194096%_
                                                       _%tl193822194098%_
                                                       _%e193823194101%_
                                                       _%hd193824194104%_
                                                       _%tl193825194106%_
                                                       _%e193826194109%_
                                                       _%hd193827194112%_
                                                       _%tl193828194114%_
                                                       _%e193866194009%_
                                                       _%hd193867194012%_
                                                       _%tl193868194014%_
                                                       _%e193869194017%_
                                                       _%hd193870194020%_
                                                       _%tl193871194022%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193781193891%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193781193891%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193781193891%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193791194288%_))
                                      (let ((_%e193881193912%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193791194288%_))))
                                        (let ((_%tl193883193917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193881193912%_)))
                                              (_%hd193882193915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193881193912%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193883193917%_))
                                              (let ((_%e193884193920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193883193917%_))))
                                                (let ((_%tl193886193925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193884193920%_)))
                                                      (_%hd193885193923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193884193920%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193886193925%_))
                                                      (_%__kont198288198289%_
                                                       _%hd193885193923%_
                                                       _%hd193882193915%_
                                                       _%hd193790194286%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193781193891%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193781193891%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193781193891%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193828194114%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193791194288%_))
                                  (let ((_%e193866194009%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193791194288%_))))
                                    (let ((_%tl193868194014%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193866194009%_)))
                                          (_%hd193867194012%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193866194009%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193868194014%_))
                                          (let ((_%e193869194017%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193868194014%_))))
                                            (let ((_%tl193871194022%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193869194017%_)))
                                                  (_%hd193870194020%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193869194017%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193871194022%_))
                                                  (_%__match198487198488%_
                                                   _%e193786194275%_
                                                   _%hd193787194278%_
                                                   _%tl193788194280%_
                                                   _%e193789194283%_
                                                   _%hd193790194286%_
                                                   _%tl193791194288%_
                                                   _%e193792194291%_
                                                   _%hd193793194294%_
                                                   _%tl193794194296%_
                                                   _%e193817194085%_
                                                   _%hd193818194088%_
                                                   _%tl193819194090%_
                                                   _%e193820194093%_
                                                   _%hd193821194096%_
                                                   _%tl193822194098%_
                                                   _%e193823194101%_
                                                   _%hd193824194104%_
                                                   _%tl193825194106%_
                                                   _%e193826194109%_
                                                   _%hd193827194112%_
                                                   _%tl193828194114%_
                                                   _%e193866194009%_
                                                   _%hd193867194012%_
                                                   _%tl193868194014%_
                                                   _%e193869194017%_
                                                   _%hd193870194020%_
                                                   _%tl193871194022%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193781193891%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193781193891%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193781193891%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193791194288%_))
                                  (let ((_%e193881193912%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193791194288%_))))
                                    (let ((_%tl193883193917%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193881193912%_)))
                                          (_%hd193882193915%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193881193912%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193883193917%_))
                                          (let ((_%e193884193920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193883193917%_))))
                                            (let ((_%tl193886193925%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193884193920%_)))
                                                  (_%hd193885193923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193884193920%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193886193925%_))
                                                  (_%__kont198288198289%_
                                                   _%hd193885193923%_
                                                   _%hd193882193915%_
                                                   _%hd193790194286%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193781193891%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193781193891%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193781193891%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193828194114%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193791194288%_))
                          (let ((_%e193866194009%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193791194288%_))))
                            (let ((_%tl193868194014%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193866194009%_)))
                                  (_%hd193867194012%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193866194009%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193868194014%_))
                                  (let ((_%e193869194017%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193868194014%_))))
                                    (let ((_%tl193871194022%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193869194017%_)))
                                          (_%hd193870194020%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193869194017%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193871194022%_))
                                          (_%__match198487198488%_
                                           _%e193786194275%_
                                           _%hd193787194278%_
                                           _%tl193788194280%_
                                           _%e193789194283%_
                                           _%hd193790194286%_
                                           _%tl193791194288%_
                                           _%e193792194291%_
                                           _%hd193793194294%_
                                           _%tl193794194296%_
                                           _%e193817194085%_
                                           _%hd193818194088%_
                                           _%tl193819194090%_
                                           _%e193820194093%_
                                           _%hd193821194096%_
                                           _%tl193822194098%_
                                           _%e193823194101%_
                                           _%hd193824194104%_
                                           _%tl193825194106%_
                                           _%e193826194109%_
                                           _%hd193827194112%_
                                           _%tl193828194114%_
                                           _%e193866194009%_
                                           _%hd193867194012%_
                                           _%tl193868194014%_
                                           _%e193869194017%_
                                           _%hd193870194020%_
                                           _%tl193871194022%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193781193891%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193781193891%_)))))
                          (let () (declare (not safe)) (_%g193781193891%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193791194288%_))
                          (let ((_%e193881193912%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193791194288%_))))
                            (let ((_%tl193883193917%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193881193912%_)))
                                  (_%hd193882193915%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193881193912%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193883193917%_))
                                  (let ((_%e193884193920%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193883193917%_))))
                                    (let ((_%tl193886193925%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193884193920%_)))
                                          (_%hd193885193923%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193884193920%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193886193925%_))
                                          (_%__kont198288198289%_
                                           _%hd193885193923%_
                                           _%hd193882193915%_
                                           _%hd193790194286%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193781193891%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193781193891%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g193781193891%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193791194288%_))
                                                      (let ((_%e193881193912%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193791194288%_))))
                (let ((_%tl193883193917%_
                       (let () (declare (not safe)) (##cdr _%e193881193912%_)))
                      (_%hd193882193915%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193881193912%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193883193917%_))
                      (let ((_%e193884193920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193883193917%_))))
                        (let ((_%tl193886193925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193884193920%_)))
                              (_%hd193885193923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193884193920%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193886193925%_))
                              (_%__kont198288198289%_
                               _%hd193885193923%_
                               _%hd193882193915%_
                               _%hd193790194286%_)
                              (let ()
                                (declare (not safe))
                                (_%g193781193891%_)))))
                      (let () (declare (not safe)) (_%g193781193891%_)))))
              (let () (declare (not safe)) (_%g193781193891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193791194288%_))
                                                  (let ((_%e193881193912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193791194288%_))))
                                                    (let ((_%tl193883193917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193881193912%_)))
                                                          (_%hd193882193915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193881193912%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193883193917%_))
                                                          (let ((_%e193884193920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193883193917%_))))
                    (let ((_%tl193886193925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193884193920%_)))
                          (_%hd193885193923%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193884193920%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193886193925%_))
                          (_%__kont198288198289%_
                           _%hd193885193923%_
                           _%hd193882193915%_
                           _%hd193790194286%_)
                          (let () (declare (not safe)) (_%g193781193891%_)))))
                  (let () (declare (not safe)) (_%g193781193891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193781193891%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193791194288%_))
                                          (let ((_%e193881193912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193791194288%_))))
                                            (let ((_%tl193883193917%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193881193912%_)))
                                                  (_%hd193882193915%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193881193912%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193883193917%_))
                                                  (let ((_%e193884193920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193883193917%_))))
                                                    (let ((_%tl193886193925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193884193920%_)))
                                                          (_%hd193885193923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193884193920%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193886193925%_))
                                                          (_%__kont198288198289%_
                                                           _%hd193885193923%_
                                                           _%hd193882193915%_
                                                           _%hd193790194286%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193781193891%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193781193891%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193781193891%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193791194288%_))
                                      (let ((_%e193881193912%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193791194288%_))))
                                        (let ((_%tl193883193917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193881193912%_)))
                                              (_%hd193882193915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193881193912%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193883193917%_))
                                              (let ((_%e193884193920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193883193917%_))))
                                                (let ((_%tl193886193925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193884193920%_)))
                                                      (_%hd193885193923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193884193920%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193886193925%_))
                                                      (_%__kont198288198289%_
                                                       _%hd193885193923%_
                                                       _%hd193882193915%_
                                                       _%hd193790194286%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193781193891%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193781193891%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193781193891%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193791194288%_))
                                  (let ((_%e193881193912%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193791194288%_))))
                                    (let ((_%tl193883193917%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193881193912%_)))
                                          (_%hd193882193915%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193881193912%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193883193917%_))
                                          (let ((_%e193884193920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193883193917%_))))
                                            (let ((_%tl193886193925%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193884193920%_)))
                                                  (_%hd193885193923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193884193920%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193886193925%_))
                                                  (_%__kont198288198289%_
                                                   _%hd193885193923%_
                                                   _%hd193882193915%_
                                                   _%hd193790194286%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193781193891%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193781193891%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193781193891%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193791194288%_))
                          (let ((_%e193881193912%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193791194288%_))))
                            (let ((_%tl193883193917%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193881193912%_)))
                                  (_%hd193882193915%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193881193912%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193883193917%_))
                                  (let ((_%e193884193920%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193883193917%_))))
                                    (let ((_%tl193886193925%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193884193920%_)))
                                          (_%hd193885193923%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193884193920%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193886193925%_))
                                          (_%__kont198288198289%_
                                           _%hd193885193923%_
                                           _%hd193882193915%_
                                           _%hd193790194286%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193781193891%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193781193891%_)))))
                          (let () (declare (not safe)) (_%g193781193891%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl193791194288%_))
                  (let ((_%e193881193912%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193791194288%_))))
                    (let ((_%tl193883193917%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193881193912%_)))
                          (_%hd193882193915%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193881193912%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193883193917%_))
                          (let ((_%e193884193920%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193883193917%_))))
                            (let ((_%tl193886193925%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193884193920%_)))
                                  (_%hd193885193923%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193884193920%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193886193925%_))
                                  (_%__kont198288198289%_
                                   _%hd193885193923%_
                                   _%hd193882193915%_
                                   _%hd193790194286%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g193781193891%_)))))
                          (let () (declare (not safe)) (_%g193781193891%_)))))
                  (let () (declare (not safe)) (_%g193781193891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193791194288%_))
                                                      (let ((_%e193881193912%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193791194288%_))))
                (let ((_%tl193883193917%_
                       (let () (declare (not safe)) (##cdr _%e193881193912%_)))
                      (_%hd193882193915%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193881193912%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193883193917%_))
                      (let ((_%e193884193920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193883193917%_))))
                        (let ((_%tl193886193925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193884193920%_)))
                              (_%hd193885193923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193884193920%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193886193925%_))
                              (_%__kont198288198289%_
                               _%hd193885193923%_
                               _%hd193882193915%_
                               _%hd193790194286%_)
                              (let ()
                                (declare (not safe))
                                (_%g193781193891%_)))))
                      (let () (declare (not safe)) (_%g193781193891%_)))))
              (let () (declare (not safe)) (_%g193781193891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193791194288%_))
                                              (let ((_%e193881193912%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193791194288%_))))
                                                (let ((_%tl193883193917%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193881193912%_)))
                                                      (_%hd193882193915%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193881193912%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193883193917%_))
                                                      (let ((_%e193884193920%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193883193917%_))))
                (let ((_%tl193886193925%_
                       (let () (declare (not safe)) (##cdr _%e193884193920%_)))
                      (_%hd193885193923%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193884193920%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193886193925%_))
                      (_%__kont198288198289%_
                       _%hd193885193923%_
                       _%hd193882193915%_
                       _%hd193790194286%_)
                      (let () (declare (not safe)) (_%g193781193891%_)))))
              (let () (declare (not safe)) (_%g193781193891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g193781193891%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193791194288%_))
                                      (let ((_%e193881193912%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193791194288%_))))
                                        (let ((_%tl193883193917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193881193912%_)))
                                              (_%hd193882193915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193881193912%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193883193917%_))
                                              (let ((_%e193884193920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193883193917%_))))
                                                (let ((_%tl193886193925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193884193920%_)))
                                                      (_%hd193885193923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193884193920%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193886193925%_))
                                                      (_%__kont198288198289%_
                                                       _%hd193885193923%_
                                                       _%hd193882193915%_
                                                       _%hd193790194286%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193781193891%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193781193891%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193781193891%_))))))
                          (let () (declare (not safe)) (_%g193781193891%_)))))
                  (let () (declare (not safe)) (_%g193781193891%_))))))))))
