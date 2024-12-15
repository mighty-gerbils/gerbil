(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1734225200)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp198346 (list gxc#::basic-xform::t))
            (__tmp198345 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp198346
         '()
         __tmp198345
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args197623%_
        (apply make-instance gxc#::optimize-call::t _%$args197623%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp198347
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
        (__make-promise __tmp198347)))
    (define gxc#apply-optimize-call
      (lambda (_%stx197615%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self197618%_
                (let ((__obj198337
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj198337))
               (__tmp198348
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197618%_ _%stx197615%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198348
           gxc#current-compile-method
           _%self197618%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp198350 (list gxc#::void::t))
            (__tmp198349 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp198350
         '()
         __tmp198349
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args197612%_
        (apply make-instance gxc#::check-return-type::t _%$args197612%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp198351
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
        (__make-promise __tmp198351)))
    (define gxc#apply-check-return-type
      (lambda (_%stx197604%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self197607%_
                (let ((__obj198339
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj198339))
               (__tmp198352
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197607%_ _%stx197604%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198352
           gxc#current-compile-method
           _%self197607%_))))
    (define gxc#optimize-call%
      (lambda (_%self197205%_ _%stx197206%_)
        (let* ((_%__stx197692197693%_ _%stx197206%_)
               (_%g197209197255%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197692197693%_)))))
          (let ((_%__kont197694197695%_
                 (lambda (_%L197398%_ _%L197399%_)
                   (let* ((_%rator-id197419%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L197399%_)))
                          (_%rator-type197421%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id197419%_))))
                     (if (or (not _%rator-type197421%_)
                             (eq? (##structure-ref
                                   _%rator-type197421%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self197205%_ _%stx197206%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type197421%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp198353
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type197421%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id197419%_
                                  '" => "
                                  _%rator-type197421%_
                                  '" "
                                  __tmp198353))
                               (let* ((_%optimized197436%_
                                       (let ((__method198340
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type197421%_
                                                 'optimize-call))))
                                         (if __method198340
                                             (let ((__tmp198354
                                                    (let ((__tmp198355
                                                           (lambda (_%g197428197431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197429197433%_)
                     (cons _%g197428197431%_ _%g197429197433%_))))
              (declare (not safe))
              (__foldr1 __tmp198355 '() _%L197398%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method198340
                                                _%rator-type197421%_
                                                _%self197205%_
                                                _%stx197206%_
                                                __tmp198354))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type197421%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx197640197641%_
                                       _%optimized197436%_)
                                      (_%g197439197468%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx197640197641%_)))))
                                 (let ((_%__kont197642197643%_
                                        (lambda (_%L197536%_ _%L197537%_)
                                          (let* ((_%optimized-rator-id197564%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L197537%_)))
                                                 (_%rator-type197569%_
                                                  (let ((_%$e197566%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id197564%_))))
                                                    (if _%$e197566%_
                                                        _%$e197566%_
                                                        _%rator-type197421%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type197569%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id197564%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type197569%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type197569%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized197436%_
                                                (let ((__tmp198356
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L197537%_ '()))
                           (let ((__tmp198357
                                  (lambda (_%g197577197580%_ _%g197578197582%_)
                                    (cons _%g197577197580%_
                                          _%g197578197582%_))))
                             (declare (not safe))
                             (__foldr1 __tmp198357 '() _%L197536%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp198356
                                                   _%stx197206%_))))))
                                       (_%__kont197646197647%_
                                        (lambda () _%optimized197436%_)))
                                   (let ((_%__match197689197690%_
                                          (lambda (_%e197443197480%_
                                                   _%hd197444197483%_
                                                   _%tl197445197485%_
                                                   _%e197446197488%_
                                                   _%hd197447197491%_
                                                   _%tl197448197493%_
                                                   _%e197449197496%_
                                                   _%hd197450197499%_
                                                   _%tl197451197501%_
                                                   _%e197452197504%_
                                                   _%hd197453197507%_
                                                   _%tl197454197509%_
                                                   _%__splice197644197645%_
                                                   _%target197455197512%_
                                                   _%tl197457197514%_)
                                            (letrec ((_%loop197458197517%_
                                                      (lambda (_%hd197456197520%_
                                                               _%arg197462197522%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd197456197520%_))
                                                            (let ((_%e197459197525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd197456197520%_))))
                      (let ((_%lp-tl197461197530%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197459197525%_)))
                            (_%lp-hd197460197528%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197459197525%_))))
                        (_%loop197458197517%_
                         _%lp-tl197461197530%_
                         (cons _%lp-hd197460197528%_ _%arg197462197522%_))))
                    (let ((_%arg197463197533%_ (reverse _%arg197462197522%_)))
                      (_%__kont197642197643%_
                       _%arg197463197533%_
                       _%hd197453197507%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop197458197517%_
                                               _%target197455197512%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx197640197641%_))
                                         (let ((_%e197443197480%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx197640197641%_))))
                                           (let ((_%tl197445197485%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197443197480%_)))
                                                 (_%hd197444197483%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197443197480%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd197444197483%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd197444197483%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl197445197485%_))
                                                         (let ((_%e197446197488%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl197445197485%_))))
                   (let ((_%tl197448197493%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e197446197488%_)))
                         (_%hd197447197491%_
                          (let ()
                            (declare (not safe))
                            (##car _%e197446197488%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd197447197491%_))
                         (let ((_%e197449197496%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd197447197491%_))))
                           (let ((_%tl197451197501%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197449197496%_)))
                                 (_%hd197450197499%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197449197496%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd197450197499%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd197450197499%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl197451197501%_))
                                         (let ((_%e197452197504%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl197451197501%_))))
                                           (let ((_%tl197454197509%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197452197504%_)))
                                                 (_%hd197453197507%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197452197504%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl197454197509%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl197448197493%_))
                                                     (let ((_%__splice197644197645%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl197448197493%_
                                                               '0))))
                                                       (let ((_%tl197457197514%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice197644197645%_ '1)))
                     (_%target197455197512%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice197644197645%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl197457197514%_))
                     (_%__match197689197690%_
                      _%e197443197480%_
                      _%hd197444197483%_
                      _%tl197445197485%_
                      _%e197446197488%_
                      _%hd197447197491%_
                      _%tl197448197493%_
                      _%e197449197496%_
                      _%hd197450197499%_
                      _%tl197451197501%_
                      _%e197452197504%_
                      _%hd197453197507%_
                      _%tl197454197509%_
                      _%__splice197644197645%_
                      _%target197455197512%_
                      _%tl197457197514%_)
                     (_%__kont197646197647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont197646197647%_))
                                                 (_%__kont197646197647%_))))
                                         (_%__kont197646197647%_))
                                     (_%__kont197646197647%_))
                                 (_%__kont197646197647%_))))
                         (_%__kont197646197647%_))))
                 (_%__kont197646197647%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont197646197647%_))
                                                 (_%__kont197646197647%_))))
                                         (_%__kont197646197647%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type197421%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type197421%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp198358
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L197399%_
                                                                '()))
                                                    (map (lambda (_%g197588197590%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self197205%_
                                                              _%g197588197590%_)))
                                                         (let ((__tmp198359
                                                                (lambda (_%g197592197595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g197593197597%_)
                          (cons _%g197592197595%_ _%g197593197597%_))))
                   (declare (not safe))
                   (__foldr1 __tmp198359 '() _%L197398%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp198358
                                    _%stx197206%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx197206%_
                                    _%rator-type197421%_))))))))
                (_%__kont197698197699%_
                 (lambda (_%L197300%_ _%L197301%_)
                   (let ((_%rator-type197318%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L197301%_))))
                     (if (and _%rator-type197318%_
                              (eq? (##structure-ref
                                    _%rator-type197318%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type197318%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type197318%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type197318%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp198360
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self197205%_
                                               _%L197301%_))
                                            (map (lambda (_%g197320197322%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self197205%_
                                                      _%g197320197322%_)))
                                                 (let ((__tmp198361
                                                        (lambda (_%g197324197327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g197325197329%_)
                  (cons _%g197324197327%_ _%g197325197329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp198361
                                                    '()
                                                    _%L197300%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp198360 _%stx197206%_))
                         (if (or (not _%rator-type197318%_)
                                 (let ((__tmp198362
                                        (##structure-ref
                                         _%rator-type197318%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp198362 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self197205%_ _%stx197206%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx197206%_
                                _%rator-type197318%_))))))))
            (let* ((_%__match197759197760%_
                    (lambda (_%e197236197260%_
                             _%hd197237197263%_
                             _%tl197238197265%_
                             _%e197239197268%_
                             _%hd197240197271%_
                             _%tl197241197273%_
                             _%__splice197700197701%_
                             _%target197242197276%_
                             _%tl197244197278%_)
                      (letrec ((_%loop197245197281%_
                                (lambda (_%hd197243197284%_
                                         _%rand197249197286%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197243197284%_))
                                      (let ((_%e197246197289%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197243197284%_))))
                                        (let ((_%lp-tl197248197294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197246197289%_)))
                                              (_%lp-hd197247197292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197246197289%_))))
                                          (_%loop197245197281%_
                                           _%lp-tl197248197294%_
                                           (cons _%lp-hd197247197292%_
                                                 _%rand197249197286%_))))
                                      (let ((_%rand197250197297%_
                                             (reverse _%rand197249197286%_)))
                                        (_%__kont197698197699%_
                                         _%rand197250197297%_
                                         _%hd197240197271%_))))))
                        (_%loop197245197281%_ _%target197242197276%_ '()))))
                   (_%__match197739197740%_
                    (lambda (_%e197213197342%_
                             _%hd197214197345%_
                             _%tl197215197347%_
                             _%e197216197350%_
                             _%hd197217197353%_
                             _%tl197218197355%_
                             _%e197219197358%_
                             _%hd197220197361%_
                             _%tl197221197363%_
                             _%e197222197366%_
                             _%hd197223197369%_
                             _%tl197224197371%_
                             _%__splice197696197697%_
                             _%target197225197374%_
                             _%tl197227197376%_)
                      (letrec ((_%loop197228197379%_
                                (lambda (_%hd197226197382%_
                                         _%rand197232197384%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197226197382%_))
                                      (let ((_%e197229197387%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197226197382%_))))
                                        (let ((_%lp-tl197231197392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197229197387%_)))
                                              (_%lp-hd197230197390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197229197387%_))))
                                          (_%loop197228197379%_
                                           _%lp-tl197231197392%_
                                           (cons _%lp-hd197230197390%_
                                                 _%rand197232197384%_))))
                                      (let ((_%rand197233197395%_
                                             (reverse _%rand197232197384%_)))
                                        (_%__kont197694197695%_
                                         _%rand197233197395%_
                                         _%hd197223197369%_))))))
                        (_%loop197228197379%_ _%target197225197374%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197692197693%_))
                  (let ((_%e197213197342%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197692197693%_))))
                    (let ((_%tl197215197347%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197213197342%_)))
                          (_%hd197214197345%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197213197342%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197215197347%_))
                          (let ((_%e197216197350%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197215197347%_))))
                            (let ((_%tl197218197355%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197216197350%_)))
                                  (_%hd197217197353%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197216197350%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197217197353%_))
                                  (let ((_%e197219197358%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197217197353%_))))
                                    (let ((_%tl197221197363%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197219197358%_)))
                                          (_%hd197220197361%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197219197358%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197220197361%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197220197361%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197221197363%_))
                                                  (let ((_%e197222197366%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197221197363%_))))
                                                    (let ((_%tl197224197371%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197222197366%_)))
                                                          (_%hd197223197369%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197222197366%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197224197371%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl197218197355%_))
                      (let ((_%__splice197696197697%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197218197355%_
                                '0))))
                        (let ((_%tl197227197376%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197696197697%_ '1)))
                              (_%target197225197374%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197696197697%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197227197376%_))
                              (_%__match197739197740%_
                               _%e197213197342%_
                               _%hd197214197345%_
                               _%tl197215197347%_
                               _%e197216197350%_
                               _%hd197217197353%_
                               _%tl197218197355%_
                               _%e197219197358%_
                               _%hd197220197361%_
                               _%tl197221197363%_
                               _%e197222197366%_
                               _%hd197223197369%_
                               _%tl197224197371%_
                               _%__splice197696197697%_
                               _%target197225197374%_
                               _%tl197227197376%_)
                              (let ()
                                (declare (not safe))
                                (_%g197209197255%_)))))
                      (let () (declare (not safe)) (_%g197209197255%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl197218197355%_))
                      (let ((_%__splice197700197701%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197218197355%_
                                '0))))
                        (let ((_%tl197244197278%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197700197701%_ '1)))
                              (_%target197242197276%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197700197701%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197244197278%_))
                              (_%__match197759197760%_
                               _%e197213197342%_
                               _%hd197214197345%_
                               _%tl197215197347%_
                               _%e197216197350%_
                               _%hd197217197353%_
                               _%tl197218197355%_
                               _%__splice197700197701%_
                               _%target197242197276%_
                               _%tl197244197278%_)
                              (let ()
                                (declare (not safe))
                                (_%g197209197255%_)))))
                      (let () (declare (not safe)) (_%g197209197255%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl197218197355%_))
                                                      (let ((_%__splice197700197701%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl197218197355%_ '0))))
                (let ((_%tl197244197278%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice197700197701%_ '1)))
                      (_%target197242197276%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice197700197701%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197244197278%_))
                      (_%__match197759197760%_
                       _%e197213197342%_
                       _%hd197214197345%_
                       _%tl197215197347%_
                       _%e197216197350%_
                       _%hd197217197353%_
                       _%tl197218197355%_
                       _%__splice197700197701%_
                       _%target197242197276%_
                       _%tl197244197278%_)
                      (let () (declare (not safe)) (_%g197209197255%_)))))
              (let () (declare (not safe)) (_%g197209197255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl197218197355%_))
                                                  (let ((_%__splice197700197701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl197218197355%_
                                                            '0))))
                                                    (let ((_%tl197244197278%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197700197701%_
                                                              '1)))
                                                          (_%target197242197276%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197700197701%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197244197278%_))
                                                          (_%__match197759197760%_
                                                           _%e197213197342%_
                                                           _%hd197214197345%_
                                                           _%tl197215197347%_
                                                           _%e197216197350%_
                                                           _%hd197217197353%_
                                                           _%tl197218197355%_
                                                           _%__splice197700197701%_
                                                           _%target197242197276%_
                                                           _%tl197244197278%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197209197255%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197209197255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197218197355%_))
                                              (let ((_%__splice197700197701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197218197355%_
                                                        '0))))
                                                (let ((_%tl197244197278%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice197700197701%_
                                                          '1)))
                                                      (_%target197242197276%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice197700197701%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197244197278%_))
                                                      (_%__match197759197760%_
                                                       _%e197213197342%_
                                                       _%hd197214197345%_
                                                       _%tl197215197347%_
                                                       _%e197216197350%_
                                                       _%hd197217197353%_
                                                       _%tl197218197355%_
                                                       _%__splice197700197701%_
                                                       _%target197242197276%_
                                                       _%tl197244197278%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197209197255%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197209197255%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197218197355%_))
                                      (let ((_%__splice197700197701%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl197218197355%_
                                                '0))))
                                        (let ((_%tl197244197278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197700197701%_
                                                  '1)))
                                              (_%target197242197276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197700197701%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197244197278%_))
                                              (_%__match197759197760%_
                                               _%e197213197342%_
                                               _%hd197214197345%_
                                               _%tl197215197347%_
                                               _%e197216197350%_
                                               _%hd197217197353%_
                                               _%tl197218197355%_
                                               _%__splice197700197701%_
                                               _%target197242197276%_
                                               _%tl197244197278%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197209197255%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197209197255%_))))))
                          (let () (declare (not safe)) (_%g197209197255%_)))))
                  (let () (declare (not safe)) (_%g197209197255%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self193584197165%_ _%ctx197167%_ _%stx197168%_ _%args197169%_)
        (let* ((_%self197171%_ _%self193584197165%_)
               (_%self197173%_ _%self197171%_))
          (if (let ((__method198341
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self197173%_ 'check-arguments))))
                (if __method198341
                    (let ()
                      (declare (not safe))
                      (__method198341
                       _%self197173%_
                       _%ctx197167%_
                       _%stx197168%_
                       _%args197169%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self197173%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature197183%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197173%_ '2 '#f '#f)))
                     (_%signature197185%_ _%signature197183%_)
                     (_%$e197195%_
                      (if _%signature197185%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature197185%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e197195%_
                    ((lambda (_%unchecked197198%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked197198%_))
                           (let ((__tmp198363
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked197198%_
                                                          '()))
                                              (map (lambda (_%g197199197201%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx197167%_
                                                        _%g197199197201%_)))
                                                   _%args197169%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp198363
                              _%stx197168%_
                              _%ctx197167%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx197167%_ _%stx197168%_))))
                     _%$e197195%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx197167%_ _%stx197168%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx197167%_ _%stx197168%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass197625 __method-table197626)
        (let ((__check-arguments197627
               (let ((__tmp198364
                      (lambda ()
                        (let ((__method197628
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197626
                                  'check-arguments
                                  '#f))))
                          (if __method197628
                              __method197628
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198364))))
          (lambda (_%self193584197165%_
                   _%ctx197167%_
                   _%stx197168%_
                   _%args197169%_)
            (let* ((_%self197171%_ _%self193584197165%_)
                   (_%self197173%_ _%self197171%_))
              (if ((force __check-arguments197627)
                   _%self197173%_
                   _%ctx197167%_
                   _%stx197168%_
                   _%args197169%_)
                  (let* ((_%signature197183%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self197173%_
                             '2
                             '#f
                             '#f)))
                         (_%signature197185%_ _%signature197183%_)
                         (_%$e197195%_
                          (if _%signature197185%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature197185%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e197195%_
                        ((lambda (_%unchecked197198%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked197198%_))
                               (let ((__tmp198365
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked197198%_
                                                              '()))
                                                  (map (lambda (_%g197199197201%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx197167%_
                                                            _%g197199197201%_)))
                                                       _%args197169%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp198365
                                  _%stx197168%_
                                  _%ctx197167%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx197167%_
                                  _%stx197168%_))))
                         _%$e197195%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx197167%_ _%stx197168%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx197167%_ _%stx197168%_))))))))
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
      (lambda (_%self193585196914%_ _%ctx196916%_ _%stx196917%_ _%args196918%_)
        (let* ((_%self196920%_ _%self193585196914%_)
               (_%self196922%_ _%self196920%_)
               (_%signature196931196933%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196922%_ '2 '#f '#f))))
          (if _%signature196931196933%_
              (let* ((_%signature196936%_ _%signature196931196933%_)
                     (_%argument-types196937196939%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature196936%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types196937196939%_
                    (let* ((_%argument-types196942%_
                            _%argument-types196937196939%_)
                           (_%argument-types196947%_
                            (let ((__tmp198366
                                   (lambda (_%t196945%_)
                                     (if _%t196945%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196917%_
                                            _%t196945%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp198366
                               _%argument-types196942%_))))
                      (let _%loop196949%_ ((_%rest-args196951%_ _%args196918%_)
                                           (_%rest-types196952%_
                                            _%argument-types196947%_)
                                           (_%result196953%_ '#t))
                        (let* ((_%rest-args196954196962%_ _%rest-args196951%_)
                               (_%else196956196970%_
                                (lambda () _%result196953%_))
                               (_%K196958197031%_
                                (lambda (_%rest-args196973%_ _%arg196974%_)
                                  (let* ((_%rest-types196975196986%_
                                          _%rest-types196952%_)
                                         (_%E196979196990%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types196975196986%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K196982197019%_
                                           (lambda (_%rest-types197016%_
                                                    _%type197017%_)
                                             (_%loop196949%_
                                              _%rest-args196973%_
                                              _%rest-types197016%_
                                              (if (gxc#check-expression-type!
                                                   _%stx196917%_
                                                   _%arg196974%_
                                                   _%type197017%_)
                                                  _%result196953%_
                                                  '#f))))
                                          (_%K196981197010%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx196917%_
                                                _%argument-types196947%_))))
                                          (_%K196980197000%_
                                           (lambda (_%tail-type196994%_)
                                             (if (let ((__tmp198367
                                                        (lambda (_%g196995196997%_)
                                                          (gxc#check-expression-type!
                                                           _%stx196917%_
                                                           _%g196995196997%_
                                                           _%tail-type196994%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp198367
                                                    _%rest-args196973%_))
                                                 _%result196953%_
                                                 '#f))))
                                      (let ((_%try-match196977197013%_
                                             (lambda ()
                                               (if (null? _%rest-types196975196986%_)
                                                   (_%K196981197010%_)
                                                   (let ((_%tail-type197003%_
                                                          _%rest-types196975196986%_))
                                                     (_%K196980197000%_
                                                      _%tail-type197003%_))))))
                                        (if (pair? _%rest-types196975196986%_)
                                            (let ((_%tl196984197024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types196975196986%_)))
                                                  (_%hd196983197022%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types196975196986%_))))
                                              (let ((_%type197027%_
                                                     _%hd196983197022%_)
                                                    (_%rest-types197029%_
                                                     _%tl196984197024%_))
                                                (_%K196982197019%_
                                                 _%rest-types197029%_
                                                 _%type197027%_)))
                                            (_%try-match196977197013%_))))))))
                          (if (pair? _%rest-args196954196962%_)
                              (let ((_%hd196959197034%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args196954196962%_)))
                                    (_%tl196960197036%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args196954196962%_))))
                                (let* ((_%arg197039%_ _%hd196959197034%_)
                                       (_%rest-args197041%_
                                        _%tl196960197036%_))
                                  (_%K196958197031%_
                                   _%rest-args197041%_
                                   _%arg197039%_)))
                              (_%else196956196970%_)))))
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
      (lambda (_%self193586196723%_ _%ctx196725%_ _%stx196726%_ _%args196727%_)
        (let* ((_%self196729%_ _%self193586196723%_)
               (_%self196731%_ _%self196729%_)
               (_%g196741196751%_
                (lambda (_%g196742196748%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196742196748%_))))
               (_%g196740196789%_
                (lambda (_%g196742196754%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196742196754%_))
                      (let ((_%e196744196756%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196742196754%_))))
                        (let ((_%hd196745196759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196744196756%_)))
                              (_%tl196746196761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196744196756%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196746196761%_))
                              ((lambda (_%L196764%_)
                                 (let* ((_%klass196776%_
                                         (let ((__tmp198368
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self196731%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196726%_
                                            __tmp198368)))
                                        (_%object196778%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx196725%_
                                            _%L196764%_)))
                                        (_%instance?196783%_
                                         (let ((_%$e196780%_
                                                (gxc#expression-type?
                                                 _%object196778%_
                                                 _%klass196776%_)))
                                           (if _%$e196780%_
                                               _%$e196780%_
                                               (gxc#expression-type?
                                                _%L196764%_
                                                _%klass196776%_)))))
                                   (if _%instance?196783%_
                                       (let ((__tmp198369
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object196778%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L196764%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object196778%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198369
                                          _%stx196726%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx196725%_
                                          _%stx196726%_)))))
                               _%hd196745196759%_)
                              (_%g196741196751%_ _%g196742196754%_))))
                      (_%g196741196751%_ _%g196742196754%_)))))
          (_%g196740196789%_ _%args196727%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self193587196517%_ _%ctx196519%_ _%stx196520%_ _%args196521%_)
        (let* ((_%self196523%_ _%self193587196517%_)
               (_%self196525%_ _%self196523%_)
               (_%g196535196545%_
                (lambda (_%g196536196542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196536196542%_))))
               (_%g196534196598%_
                (lambda (_%g196536196548%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196536196548%_))
                      (let ((_%e196538196550%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196536196548%_))))
                        (let ((_%hd196539196553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196538196550%_)))
                              (_%tl196540196555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196538196550%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196540196555%_))
                              ((lambda (_%L196558%_)
                                 (let* ((_%klass196570%_
                                         (let ((__tmp198370
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self196525%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196520%_
                                            __tmp198370)))
                                        (_%object196572%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx196519%_
                                            _%L196558%_)))
                                        (_%instance?196577%_
                                         (let ((_%$e196574%_
                                                (gxc#expression-type?
                                                 _%object196572%_
                                                 _%klass196570%_)))
                                           (if _%$e196574%_
                                               _%$e196574%_
                                               (gxc#expression-type?
                                                _%L196558%_
                                                _%klass196570%_))))
                                        (_%klass196580%_ _%klass196570%_))
                                   (if _%instance?196577%_
                                       (let ((__tmp198371
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object196572%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L196558%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object196572%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198371
                                          _%stx196520%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass196580%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp198372
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass196580%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object196572%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198372
                                              _%stx196520%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass196580%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198373
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass196580%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object196572%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198373
                                                  _%stx196520%_))
                                               (let ((__tmp198374
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self196525%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object196572%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198374
                                                  _%stx196520%_)))))))
                               _%hd196539196553%_)
                              (_%g196535196545%_ _%g196536196548%_))))
                      (_%g196535196545%_ _%g196536196548%_)))))
          (_%g196534196598%_ _%args196521%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx196180%_)
        (let* ((_%__stx197769197770%_ _%stx196180%_)
               (_%g196185196226%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197769197770%_)))))
          (let ((_%__kont197771197772%_ (lambda () '#t))
                (_%__kont197773197774%_ (lambda () '#t))
                (_%__kont197775197776%_
                 (lambda (_%L196294%_ _%L196295%_)
                   (let ((_%rator-type196316196318%_
                          (let ((__tmp198375
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L196295%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp198375))))
                     (if _%rator-type196316196318%_
                         (let* ((_%rator-type196321%_
                                 _%rator-type196316196318%_)
                                (_%rator-signature196322196324%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type196321%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type196321%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature196322196324%_
                               (let* ((_%rator-signature196327%_
                                       _%rator-signature196322196324%_)
                                      (_%rator-effect196328196330%_
                                       (if _%rator-signature196327%_
                                           (##direct-structure-ref
                                            _%rator-signature196327%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect196328196330%_
                                     (let ((_%rator-effect196333%_
                                            _%rator-effect196328196330%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect196333%_)
                                               (equal? '(alloc)
                                                       _%rator-effect196333%_))
                                           (let ((__tmp198376
                                                  (let ((__tmp198377
                                                         (lambda (_%g196338196341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g196339196343%_)
                   (cons _%g196338196341%_ _%g196339196343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp198377
                                                     '()
                                                     _%L196294%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp198376))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont197779197780%_ (lambda () '#f)))
            (let ((_%__match197858197859%_
                   (lambda (_%e196201196238%_
                            _%hd196202196241%_
                            _%tl196203196243%_
                            _%e196204196246%_
                            _%hd196205196249%_
                            _%tl196206196251%_
                            _%e196207196254%_
                            _%hd196208196257%_
                            _%tl196209196259%_
                            _%e196210196262%_
                            _%hd196211196265%_
                            _%tl196212196267%_
                            _%__splice197777197778%_
                            _%target196213196270%_
                            _%tl196215196272%_)
                     (letrec ((_%loop196216196275%_
                               (lambda (_%hd196214196278%_
                                        _%rand196220196280%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd196214196278%_))
                                     (let ((_%e196217196283%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd196214196278%_))))
                                       (let ((_%lp-tl196219196288%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e196217196283%_)))
                                             (_%lp-hd196218196286%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e196217196283%_))))
                                         (_%loop196216196275%_
                                          _%lp-tl196219196288%_
                                          (cons _%lp-hd196218196286%_
                                                _%rand196220196280%_))))
                                     (let ((_%rand196221196291%_
                                            (reverse _%rand196220196280%_)))
                                       (_%__kont197775197776%_
                                        _%rand196221196291%_
                                        _%hd196211196265%_))))))
                       (_%loop196216196275%_ _%target196213196270%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197769197770%_))
                  (let ((_%e196187196374%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197769197770%_))))
                    (let ((_%tl196189196379%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196187196374%_)))
                          (_%hd196188196377%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196187196374%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd196188196377%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd196188196377%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196189196379%_))
                                  (let ((_%e196190196382%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196189196379%_))))
                                    (let ((_%tl196192196387%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196190196382%_)))
                                          (_%hd196191196385%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196190196382%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196192196387%_))
                                          (_%__kont197771197772%_)
                                          (_%__kont197779197780%_))))
                                  (_%__kont197779197780%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd196188196377%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196189196379%_))
                                      (let ((_%e196196196359%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196189196379%_))))
                                        (let ((_%tl196198196364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196196196359%_)))
                                              (_%hd196197196362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196196196359%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196198196364%_))
                                              (_%__kont197773197774%_)
                                              (_%__kont197779197780%_))))
                                      (_%__kont197779197780%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd196188196377%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196189196379%_))
                                          (let ((_%e196204196246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196189196379%_))))
                                            (let ((_%tl196206196251%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196204196246%_)))
                                                  (_%hd196205196249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196204196246%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196205196249%_))
                                                  (let ((_%e196207196254%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd196205196249%_))))
                                                    (let ((_%tl196209196259%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196207196254%_)))
                                                          (_%hd196208196257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196207196254%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd196208196257%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd196208196257%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196209196259%_))
                          (let ((_%e196210196262%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196209196259%_))))
                            (let ((_%tl196212196267%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196210196262%_)))
                                  (_%hd196211196265%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196210196262%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196212196267%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196206196251%_))
                                      (let ((_%__splice197777197778%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196206196251%_
                                                '0))))
                                        (let ((_%tl196215196272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197777197778%_
                                                  '1)))
                                              (_%target196213196270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197777197778%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196215196272%_))
                                              (_%__match197858197859%_
                                               _%e196187196374%_
                                               _%hd196188196377%_
                                               _%tl196189196379%_
                                               _%e196204196246%_
                                               _%hd196205196249%_
                                               _%tl196206196251%_
                                               _%e196207196254%_
                                               _%hd196208196257%_
                                               _%tl196209196259%_
                                               _%e196210196262%_
                                               _%hd196211196265%_
                                               _%tl196212196267%_
                                               _%__splice197777197778%_
                                               _%target196213196270%_
                                               _%tl196215196272%_)
                                              (_%__kont197779197780%_))))
                                      (_%__kont197779197780%_))
                                  (_%__kont197779197780%_))))
                          (_%__kont197779197780%_))
                      (_%__kont197779197780%_))
                  (_%__kont197779197780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont197779197780%_))))
                                          (_%__kont197779197780%_))
                                      (_%__kont197779197780%_))))
                          (_%__kont197779197780%_))))
                  (_%__kont197779197780%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx196175%_ _%klass196176%_)
        (let ((_%expr-type196178%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx196175%_))))
          (if _%expr-type196178%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type196178%_ _%klass196176%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx196153%_ _%expr196154%_ _%type196155%_)
        (if (not _%type196155%_)
            '#f
            (let ((_%$e196158%_
                   (eq? (##structure-ref _%type196155%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e196158%_
                  _%$e196158%_
                  (let ((_%expr-type196162%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr196154%_))))
                    (if (not _%expr-type196162%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type196162%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e196166%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type196162%_
                                      'gxc#!abort::t))))
                              (if _%$e196166%_
                                  _%$e196166%_
                                  (let ((_%$e196169%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type196162%_
                                            _%type196155%_))))
                                    (if _%$e196169%_
                                        _%$e196169%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type196155%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type196155%_
                                                   _%expr-type196162%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx196153%_
                                                   _%expr196154%_
                                                   _%expr-type196162%_
                                                   _%type196155%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self193588195965%_ _%ctx195967%_ _%stx195968%_ _%args195969%_)
        (let* ((_%self195971%_ _%self193588195965%_)
               (_%self195973%_ _%self195971%_)
               (_%klass195983%_
                (let ((__tmp198378
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self195973%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx195968%_ __tmp198378)))
               (_%fields195985%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass195983%_
                           '5
                           '#f
                           '#f))))
               (_%args195991%_
                (map (lambda (_%g195986195988%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx195967%_ _%g195986195988%_)))
                     _%args195969%_))
               (_%inline-make-object195993%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self195973%_
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
                           _%self195973%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields195985%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass195996%_ _%klass195983%_)
               (_%$e196010%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass195996%_ '6 '#f '#f))))
          (if _%$e196010%_
              ((lambda (_%ctor196013%_)
                 (let ((_%$obj196015%_
                        (let ((__tmp198379
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp198379)))
                       (_%ctor-impl196016%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass195996%_
                           _%ctor196013%_))))
                   (let ((__tmp198380
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj196015%_ '())
                                                  (cons _%inline-make-object195993%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl196016%_
                                                            (let ((__tmp198381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl196016%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj196015%_ '()))
                                             _%args195991%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp198381
                       _%stx195968%_
                       _%ctx195967%_))
                    (let ((_%$ctor196018%_
                           (let ((__tmp198382
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp198382))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor196018%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195973%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj196015%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor196013%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor196018%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor196018%_ '()))
                              (cons (cons '%#ref (cons _%$obj196015%_ '()))
                                    _%args195991%_)))
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
                             _%self195973%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor196013%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj196015%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp198380 _%stx195968%_))))
               _%$e196010%_)
              (let ((_%$e196020%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass195996%_
                        '10
                        '#f
                        '#f))))
                (if _%$e196020%_
                    ((lambda (_%metaclass196023%_)
                       (let* ((_%$obj196025%_
                               (let ((__tmp198383
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198383)))
                              (_%metakons196027%_
                               (let ((__tmp198384
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx195968%_
                                         _%metaclass196023%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp198384
                                  'instance-init!)))
                              (__tmp198385
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj196025%_
                                                             '())
                                                       (cons _%inline-make-object195993%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons196027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp198386
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons196027%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self195973%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj196025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args195991%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp198386
                            _%stx195968%_
                            _%ctx195967%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self195973%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj196025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args195991%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj196025%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp198385 _%stx195968%_)))
                     _%$e196020%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass195996%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp198387
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args195991%_))))
                              (declare (not safe))
                              (##fx= __tmp198387 _%fields195985%_))
                            (let ((__tmp198388
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self195973%_
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
                                              _%self195973%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args195991%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp198388
                               _%stx195968%_))
                            (let ((__tmp198390
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self195973%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp198389
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195996%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx195968%_
                               __tmp198390
                               __tmp198389)))
                        (let ((_%$obj196032%_
                               (let ((__tmp198391
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198391))))
                          (let _%lp196034%_ ((_%rest196036%_ _%args195991%_)
                                             (_%initializers196037%_ '()))
                            (let* ((_%__stx197861197862%_ _%rest196036%_)
                                   (_%g196041196062%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx197861197862%_)))))
                              (let ((_%__kont197863197864%_
                                     (lambda (_%L196116%_
                                              _%L196117%_
                                              _%L196118%_)
                                       (let* ((_%slot196145%_
                                               (let ((__tmp198392
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L196118%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp198392)))
                                              (_%off196147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass195996%_
                                                  _%slot196145%_))))
                                         (if _%off196147%_
                                             (_%lp196034%_
                                              _%L196116%_
                                              (cons (cons _%off196147%_
                                                          _%L196117%_)
                                                    _%initializers196037%_))
                                             (let ((__tmp198393
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195973%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx195968%_
                                                __tmp198393
                                                _%slot196145%_))))))
                                    (_%__kont197865197866%_
                                     (lambda ()
                                       (let ((__tmp198394
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj196032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object195993%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp198397
                                     (cons (cons '%#ref
                                                 (cons _%$obj196032%_ '()))
                                           '()))
                                    (__tmp198395
                                     (let ((__tmp198396
                                            (lambda (_%i196076%_ _%r196077%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self195973%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i196076%_) '()))
                              (cons (cons '%#ref (cons _%$obj196032%_ '()))
                                    (cons (cdr _%i196076%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r196077%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp198396
                                        '()
                                        _%initializers196037%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp198397 __tmp198395)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198394
                                          _%stx195968%_))))
                                    (_%__kont197867197868%_
                                     (lambda ()
                                       (let ((__tmp198398
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj196032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object195993%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj196032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args195991%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj196032%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198398
                                          _%stx195968%_)))))
                                (let* ((_%g196039196079%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx197861197862%_))
                                              (_%__kont197865197866%_)
                                              (_%__kont197867197868%_))))
                                       (_%__match197898197899%_
                                        (lambda (_%e196046196084%_
                                                 _%hd196047196087%_
                                                 _%tl196048196089%_
                                                 _%e196049196092%_
                                                 _%hd196050196095%_
                                                 _%tl196051196097%_
                                                 _%e196052196100%_
                                                 _%hd196053196103%_
                                                 _%tl196054196105%_
                                                 _%e196055196108%_
                                                 _%hd196056196111%_
                                                 _%tl196057196113%_)
                                          (let ((_%L196116%_
                                                 _%tl196057196113%_)
                                                (_%L196117%_
                                                 _%hd196056196111%_)
                                                (_%L196118%_
                                                 _%hd196053196103%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L196118%_))
                                                (_%__kont197863197864%_
                                                 _%L196116%_
                                                 _%L196117%_
                                                 _%L196118%_)
                                                (_%__kont197867197868%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx197861197862%_))
                                      (let ((_%e196046196084%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx197861197862%_))))
                                        (let ((_%tl196048196089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196046196084%_)))
                                              (_%hd196047196087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196046196084%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd196047196087%_))
                                              (let ((_%e196049196092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd196047196087%_))))
                                                (let ((_%tl196051196097%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196049196092%_)))
                                                      (_%hd196050196095%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196049196092%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd196050196095%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd196050196095%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196051196097%_))
                      (let ((_%e196052196100%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196051196097%_))))
                        (let ((_%tl196054196105%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196052196100%_)))
                              (_%hd196053196103%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196052196100%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196054196105%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196048196089%_))
                                  (let ((_%e196055196108%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196048196089%_))))
                                    (let ((_%tl196057196113%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196055196108%_)))
                                          (_%hd196056196111%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196055196108%_))))
                                      (_%__match197898197899%_
                                       _%e196046196084%_
                                       _%hd196047196087%_
                                       _%tl196048196089%_
                                       _%e196049196092%_
                                       _%hd196050196095%_
                                       _%tl196051196097%_
                                       _%e196052196100%_
                                       _%hd196053196103%_
                                       _%tl196054196105%_
                                       _%e196055196108%_
                                       _%hd196056196111%_
                                       _%tl196057196113%_)))
                                  (_%__kont197867197868%_))
                              (_%__kont197867197868%_))))
                      (_%__kont197867197868%_))
                  (_%__kont197867197868%_))
              (_%__kont197867197868%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont197867197868%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g196039196079%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self193589195746%_ _%ctx195748%_ _%stx195749%_ _%args195750%_)
        (let* ((_%self195752%_ _%self193589195746%_)
               (_%self195754%_ _%self195752%_)
               (_%arguments-ok?195764%_
                (let ((__method198342
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self195754%_ 'check-arguments))))
                  (if __method198342
                      (let ()
                        (declare (not safe))
                        (__method198342
                         _%self195754%_
                         _%ctx195748%_
                         _%stx195749%_
                         _%args195750%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self195754%_
                                 'check-arguments))
                        '#!void))))
               (_%g195766195776%_
                (lambda (_%g195767195773%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195767195773%_))))
               (_%g195765195840%_
                (lambda (_%g195767195779%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195767195779%_))
                      (let ((_%e195769195781%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195767195779%_))))
                        (let ((_%hd195770195784%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195769195781%_)))
                              (_%tl195771195786%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195769195781%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195771195786%_))
                              ((lambda (_%L195789%_)
                                 (let* ((_%klass195802%_
                                         (let ((__tmp198399
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195754%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195749%_
                                            __tmp198399)))
                                        (_%field195804%_
                                         (let ((__tmp198400
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195754%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass195802%_
                                            __tmp198400)))
                                        (_%object195806%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195748%_
                                            _%L195789%_)))
                                        (_%klass195809%_ _%klass195802%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass195809%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp198401
                                              (cons (if (or _%arguments-ok?195764%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195754%_
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
                                 _%self195754%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field195804%_ '()))
                        (cons _%object195806%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198401
                                          _%stx195749%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195809%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp198402
                                                  (cons (if (or _%arguments-ok?195764%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195754%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195754%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field195804%_ '()))
                            (cons _%object195806%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198402
                                              _%stx195749%_))
                                           (let ((_%$e195828%_
                                                  (let ((__tmp198403
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self195754%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass195809%_
                                                     __tmp198403))))
                                             (if _%$e195828%_
                                                 ((lambda (_%klass195831%_)
                                                    (let ((__tmp198404
                                                           (cons (if (or _%arguments-ok?195764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195754%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self195754%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field195804%_ '()))
                                     (cons _%object195806%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp198404 _%stx195749%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e195828%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self195754%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp198405
                                                            (let ((_%$obj195837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp198406
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp198406))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj195837%_ '())
                                              (cons _%object195806%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass195809%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj195837%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195754%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195804%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj195837%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?195764%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj195837%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self195754%_
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
                                                             _%self195754%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj195837%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self195754%_
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
               (gxc#xform-wrap-source __tmp198405 _%stx195749%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp198407
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object195806%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195754%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp198407 _%stx195749%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd195770195784%_)
                              (_%g195766195776%_ _%g195767195779%_))))
                      (_%g195766195776%_ _%g195767195779%_)))))
          (_%g195765195840%_ _%args195750%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass197629 __method-table197630)
        (let ((__check-arguments197631
               (let ((__tmp198408
                      (lambda ()
                        (let ((__method197632
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197630
                                  'check-arguments
                                  '#f))))
                          (if __method197632
                              __method197632
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198408)))
              (__slot197633
               (let ((__slot197634
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass197629 'slot))))
                 (if __slot197634
                     __slot197634
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self193589195746%_
                   _%ctx195748%_
                   _%stx195749%_
                   _%args195750%_)
            (let* ((_%self195752%_ _%self193589195746%_)
                   (_%self195754%_ _%self195752%_)
                   (_%arguments-ok?195764%_
                    ((force __check-arguments197631)
                     _%self195754%_
                     _%ctx195748%_
                     _%stx195749%_
                     _%args195750%_))
                   (_%g195766195776%_
                    (lambda (_%g195767195773%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g195767195773%_))))
                   (_%g195765195840%_
                    (lambda (_%g195767195779%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g195767195779%_))
                          (let ((_%e195769195781%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g195767195779%_))))
                            (let ((_%hd195770195784%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195769195781%_)))
                                  (_%tl195771195786%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195769195781%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl195771195786%_))
                                  ((lambda (_%L195789%_)
                                     (let* ((_%klass195802%_
                                             (let ((__tmp198409
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195754%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx195749%_
                                                __tmp198409)))
                                            (_%field195804%_
                                             (let ((__tmp198410
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195754%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass195802%_
                                                __tmp198410)))
                                            (_%object195806%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx195748%_
                                                _%L195789%_)))
                                            (_%klass195809%_ _%klass195802%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195809%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp198411
                                                  (cons (if (or _%arguments-ok?195764%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195754%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195754%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field195804%_ '()))
                            (cons _%object195806%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198411
                                              _%stx195749%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195809%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198412
                                                      (cons (if (or _%arguments-ok?195764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self195754%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195754%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field195804%_ '()))
                                (cons _%object195806%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198412
                                                  _%stx195749%_))
                                               (let ((_%$e195828%_
                                                      (let ((__tmp198413
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self195754%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass195809%_ __tmp198413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e195828%_
                                                     ((lambda (_%klass195831%_)
                                                        (let ((__tmp198414
                                                               (cons (if (or _%arguments-ok?195764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195754%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self195754%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field195804%_ '()))
                                         (cons _%object195806%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp198414 _%stx195749%_)))
              _%$e195828%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self195754%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp198415
                                                                (let ((_%$obj195837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp198416
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198416))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj195837%_ '())
                                                  (cons _%object195806%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass195809%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj195837%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195754%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field195804%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj195837%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?195764%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj195837%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195754%_
                               __slot197633
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
                        (##unchecked-structure-ref _%self195754%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj195837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195754%_
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
                   (gxc#xform-wrap-source __tmp198415 _%stx195749%_))
                 (let ((__tmp198417
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object195806%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195754%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp198417 _%stx195749%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd195770195784%_)
                                  (_%g195766195776%_ _%g195767195779%_))))
                          (_%g195766195776%_ _%g195767195779%_)))))
              (_%g195765195840%_ _%args195750%_))))))
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
      (lambda (_%self193590195508%_ _%ctx195510%_ _%stx195511%_ _%args195512%_)
        (let* ((_%self195514%_ _%self193590195508%_)
               (_%self195516%_ _%self195514%_)
               (_%arguments-ok?195526%_
                (let ((__method198343
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self195516%_ 'check-arguments))))
                  (if __method198343
                      (let ()
                        (declare (not safe))
                        (__method198343
                         _%self195516%_
                         _%ctx195510%_
                         _%stx195511%_
                         _%args195512%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self195516%_
                                 'check-arguments))
                        '#!void))))
               (_%g195528195542%_
                (lambda (_%g195529195539%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195529195539%_))))
               (_%g195527195621%_
                (lambda (_%g195529195545%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195529195545%_))
                      (let ((_%e195532195547%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195529195545%_))))
                        (let ((_%hd195533195550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195532195547%_)))
                              (_%tl195534195552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195532195547%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195534195552%_))
                              (let ((_%e195535195555%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195534195552%_))))
                                (let ((_%hd195536195558%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195535195555%_)))
                                      (_%tl195537195560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195535195555%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195537195560%_))
                                      ((lambda (_%L195563%_ _%L195564%_)
                                         (let* ((_%klass195580%_
                                                 (let ((__tmp198418
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195516%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx195511%_
                                                    __tmp198418)))
                                                (_%field195582%_
                                                 (let ((__tmp198419
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195516%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass195580%_
                                                    __tmp198419)))
                                                (_%object195584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx195510%_
                                                    _%L195564%_)))
                                                (_%value195586%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx195510%_
                                                    _%L195563%_)))
                                                (_%klass195589%_
                                                 _%klass195580%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195589%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198420
                                                      (cons (if (or _%arguments-ok?195526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self195516%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195516%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field195582%_ '()))
                                (cons _%object195584%_
                                      (cons _%value195586%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198420
                                                  _%stx195511%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass195589%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp198421
                                                          (cons (if (or _%arguments-ok?195526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self195516%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195516%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195582%_ '()))
                                    (cons _%object195584%_
                                          (cons _%value195586%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp198421
                                                      _%stx195511%_))
                                                   (let ((_%$e195609%_
                                                          (let ((__tmp198422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195516%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass195589%_
                     __tmp198422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e195609%_
                                                         ((lambda (_%klass195612%_)
                                                            (let ((__tmp198423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?195526%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195516%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self195516%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field195582%_ '()))
                                             (cons _%object195584%_
                                                   (cons _%value195586%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198423 _%stx195511%_)))
                  _%$e195609%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self195516%_ '4 '#f '#f))
                     (let ((__tmp198424
                            (let ((_%$obj195618%_
                                   (let ((__tmp198425
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp198425))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj195618%_ '())
                                                      (cons _%object195584%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass195589%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj195618%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self195516%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field195582%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj195618%_
                                                              '()))
                                                  (cons _%value195586%_
                                                        '())))))
                          (cons (if _%arguments-ok?195526%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self195516%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value195586%_ '())))))
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
                             _%self195516%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj195618%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195516%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value195586%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp198424 _%stx195511%_))
                     (let ((__tmp198426
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object195584%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self195516%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value195586%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp198426
                        _%stx195511%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd195536195558%_
                                       _%hd195533195550%_)
                                      (_%g195528195542%_ _%g195529195545%_))))
                              (_%g195528195542%_ _%g195529195545%_))))
                      (_%g195528195542%_ _%g195529195545%_)))))
          (_%g195527195621%_ _%args195512%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass197635 __method-table197636)
        (let ((__check-arguments197637
               (let ((__tmp198427
                      (lambda ()
                        (let ((__method197638
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197636
                                  'check-arguments
                                  '#f))))
                          (if __method197638
                              __method197638
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198427))))
          (lambda (_%self193590195508%_
                   _%ctx195510%_
                   _%stx195511%_
                   _%args195512%_)
            (let* ((_%self195514%_ _%self193590195508%_)
                   (_%self195516%_ _%self195514%_)
                   (_%arguments-ok?195526%_
                    ((force __check-arguments197637)
                     _%self195516%_
                     _%ctx195510%_
                     _%stx195511%_
                     _%args195512%_))
                   (_%g195528195542%_
                    (lambda (_%g195529195539%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g195529195539%_))))
                   (_%g195527195621%_
                    (lambda (_%g195529195545%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g195529195545%_))
                          (let ((_%e195532195547%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g195529195545%_))))
                            (let ((_%hd195533195550%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195532195547%_)))
                                  (_%tl195534195552%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195532195547%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195534195552%_))
                                  (let ((_%e195535195555%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195534195552%_))))
                                    (let ((_%hd195536195558%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195535195555%_)))
                                          (_%tl195537195560%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195535195555%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl195537195560%_))
                                          ((lambda (_%L195563%_ _%L195564%_)
                                             (let* ((_%klass195580%_
                                                     (let ((__tmp198428
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195516%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx195511%_
                                                        __tmp198428)))
                                                    (_%field195582%_
                                                     (let ((__tmp198429
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195516%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass195580%_
                                                        __tmp198429)))
                                                    (_%object195584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195510%_
                                                        _%L195564%_)))
                                                    (_%value195586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195510%_
                                                        _%L195563%_)))
                                                    (_%klass195589%_
                                                     _%klass195580%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass195589%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp198430
                                                          (cons (if (or _%arguments-ok?195526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self195516%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195516%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195582%_ '()))
                                    (cons _%object195584%_
                                          (cons _%value195586%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp198430
                                                      _%stx195511%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass195589%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp198431
                                                              (cons (if (or _%arguments-ok?195526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self195516%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195516%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field195582%_ '()))
                                        (cons _%object195584%_
                                              (cons _%value195586%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp198431 _%stx195511%_))
               (let ((_%$e195609%_
                      (let ((__tmp198432
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195516%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass195589%_
                         __tmp198432))))
                 (if _%$e195609%_
                     ((lambda (_%klass195612%_)
                        (let ((__tmp198433
                               (cons (if (or _%arguments-ok?195526%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self195516%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self195516%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field195582%_
                                                             '()))
                                                 (cons _%object195584%_
                                                       (cons _%value195586%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp198433 _%stx195511%_)))
                      _%$e195609%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195516%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp198434
                                (let ((_%$obj195618%_
                                       (let ((__tmp198435
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp198435))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj195618%_
                                                                '())
                                                          (cons _%object195584%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass195589%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj195618%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self195516%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field195582%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value195586%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?195526%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj195618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self195516%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value195586%_ '())))))
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
                                 _%self195516%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj195618%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195516%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value195586%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp198434 _%stx195511%_))
                         (let ((__tmp198436
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object195584%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195516%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value195586%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp198436
                            _%stx195511%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd195536195558%_
                                           _%hd195533195550%_)
                                          (_%g195528195542%_
                                           _%g195529195545%_))))
                                  (_%g195528195542%_ _%g195529195545%_))))
                          (_%g195528195542%_ _%g195529195545%_)))))
              (_%g195527195621%_ _%args195512%_))))))
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
      (lambda (_%self193591195321%_ _%ctx195323%_ _%stx195324%_ _%args195325%_)
        (let* ((_%self195327%_ _%self193591195321%_)
               (_%self195329%_ _%self195327%_)
               (_%self195338195348%_ _%self195329%_)
               (_%E195340195352%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195338195348%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K195341195362%_
                (lambda (_%inline195355%_ _%dispatch195356%_ _%arity195357%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self195329%_
                         _%args195325%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx195324%_
                         _%arity195357%_)))
                  (if _%inline195355%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp198437 (_%inline195355%_ _%stx195324%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp198437
                           _%stx195324%_
                           _%ctx195323%_)))
                      (if (and _%dispatch195356%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch195356%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch195356%_))
                            (let ((__tmp198438
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch195356%_
                                                           '()))
                                               _%args195325%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp198438
                               _%stx195324%_
                               _%ctx195323%_)))
                          (gxc#!procedure::optimize-call
                           _%self195329%_
                           _%ctx195323%_
                           _%stx195324%_
                           _%args195325%_)))))
               (_%e195342195365%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195338195348%_ '1 '#f '#f)))
               (_%e195343195368%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195338195348%_ '2 '#f '#f)))
               (_%e195344195371%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195338195348%_ '3 '#f '#f)))
               (_%arity195374%_ _%e195344195371%_)
               (_%e195345195376%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195338195348%_ '4 '#f '#f)))
               (_%dispatch195379%_ _%e195345195376%_)
               (_%e195346195381%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195338195348%_ '5 '#f '#f)))
               (_%inline195384%_ _%e195346195381%_))
          (_%K195341195362%_
           _%inline195384%_
           _%dispatch195379%_
           _%arity195374%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self193592195171%_ _%ctx195173%_ _%stx195174%_ _%args195175%_)
        (let* ((_%self195177%_ _%self193592195171%_)
               (_%self195179%_ _%self195177%_)
               (_%$e195193%_
                (let ((__tmp198440
                       (lambda (_%g195188195190%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g195188195190%_
                            _%args195175%_))))
                      (__tmp198439
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self195179%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp198440 __tmp198439))))
          (if _%$e195193%_
              ((lambda (_%clause195196%_)
                 (let ((__method198344
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause195196%_ 'optimize-call))))
                   (if __method198344
                       (let ()
                         (declare (not safe))
                         (__method198344
                          _%clause195196%_
                          _%ctx195173%_
                          _%stx195174%_
                          _%args195175%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause195196%_
                                  'optimize-call))
                         '#!void))))
               _%$e195193%_)
              (let ((__tmp198441
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self195179%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx195174%_
                 __tmp198441))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self193593194909%_ _%ctx194911%_ _%stx194912%_ _%args194913%_)
        (let* ((_%self194915%_ _%self193593194909%_)
               (_%self194917%_ _%self194915%_)
               (_%self194926194935%_ _%self194917%_)
               (_%E194928194939%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self194926194935%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K194929195030%_
                (lambda (_%dispatch194942%_ _%table194943%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch194942%_))
                      (let* ((_%g194944194954%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch194942%_)))
                             (_%else194946194962%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch194942%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx194911%_
                                   _%stx194912%_))))
                             (_%K194948195011%_
                              (lambda (_%main194965%_ _%keys194966%_)
                                (let ((_g198442_
                                       (gxc#!kw-lambda-split-args
                                        _%stx194912%_
                                        _%args194913%_)))
                                  (begin
                                    (let ((_g198443_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198442_)
                                                 (##values-length _g198442_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198443_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198443_)))
                                    (let ((_%pargs194968%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198442_ 0)))
                                          (_%kwargs194969%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198442_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main194965%_))
                                        (if _%table194943%_
                                            (let ((_%xargs194977%_
                                                   (map (lambda (_%key194971%_)
                                                          (let ((_%$e194973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key194971%_ _%kwargs194969%_))))
                    (if _%$e194973%_ _%$e194973%_ '(%#ref absent-value))))
                _%keys194966%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw194979%_)
                                                 (if (memq (car _%kw194979%_)
                                                           _%keys194966%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx194912%_
                                                        _%keys194966%_
                                                        _%kw194979%_))))
                                               _%kwargs194969%_)
                                              (let ((__tmp198444
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main194965%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs194968%_
                                  _%xargs194977%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp198444
                                                 _%stx194912%_
                                                 _%ctx194911%_)))
                                            (let* ((_%kwt194981%_
                                                    (let ((__tmp198445
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp198445)))
                                                   (_%kwvars194985%_
                                                    (map (lambda (_%_194983%_)
                                                           (let ((__tmp198446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp198446)))
                 _%kwargs194969%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind194990%_
                                                    (map (lambda (_%kw194987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194988%_)
                   (cons (cons _%kwvar194988%_ '())
                         (cons (cdr _%kw194987%_) '())))
                 _%kwargs194969%_
                 _%kwvars194985%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset194995%_
                                                    (map (lambda (_%kw194992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194993%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt194981%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw194992%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar194993%_
                                                             '()))
                                                 '()))))))
                 _%kwargs194969%_
                 _%kwvars194985%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs195000%_
                                                    (map (lambda (_%kw194997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194998%_)
                   (cons (car _%kw194997%_)
                         (cons '%#ref (cons _%kwvar194998%_ '()))))
                 _%kwargs194969%_
                 _%kwvars194985%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs195008%_
                                                    (map (lambda (_%key195002%_)
                                                           (let ((_%$e195004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key195002%_ _%xkwargs195000%_))))
                     (if _%$e195004%_ _%$e195004%_ '(%#ref absent-value))))
                 _%keys194966%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp198447
                                                    (cons '%#let-values
                                                          (cons _%kwbind194990%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt194981%_ '())
                                                      (cons (let ((__tmp198448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs194969%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198448 _%stx194912%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp198449
                                                             (cons (let ((__tmp198450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main194965%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt194981%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs194968%_
                                                       _%xargs195008%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp198450 _%stx194912%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp198449 _%kwset194995%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp198447
                                               _%stx194912%_
                                               _%ctx194911%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g194944194954%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e194949195014%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194944194954%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e194950195017%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194944194954%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e194951195020%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194944194954%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys195023%_ _%e194951195020%_)
                                   (_%e194952195025%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194944194954%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main195028%_ _%e194952195025%_))
                              (_%K194948195011%_
                               _%main195028%_
                               _%keys195023%_))
                            (_%else194946194962%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx194911%_ _%stx194912%_)))))
               (_%e194930195033%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194926194935%_ '1 '#f '#f)))
               (_%e194931195036%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194926194935%_ '2 '#f '#f)))
               (_%e194932195039%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194926194935%_ '3 '#f '#f)))
               (_%table195042%_ _%e194932195039%_)
               (_%e194933195044%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194926194935%_ '4 '#f '#f)))
               (_%dispatch195047%_ _%e194933195044%_))
          (_%K194929195030%_ _%dispatch195047%_ _%table195042%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx194522%_ _%args194523%_)
        (let _%lp194525%_ ((_%rest194527%_ _%args194523%_)
                           (_%pargs194528%_ '())
                           (_%kwargs194529%_ '()))
          (let* ((_%__stx197903197904%_ _%rest194527%_)
                 (_%g194535194587%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx197903197904%_)))))
            (let ((_%__kont197905197906%_
                   (lambda (_%L194766%_ _%L194767%_)
                     (_%lp194525%_
                      _%L194766%_
                      (cons _%L194767%_ _%pargs194528%_)
                      _%kwargs194529%_)))
                  (_%__kont197907197908%_
                   (lambda (_%L194712%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L194712%_ _%pargs194528%_))
                             (reverse _%kwargs194529%_))))
                  (_%__kont197909197910%_
                   (lambda (_%L194659%_ _%L194660%_ _%L194661%_)
                     (let ((_%kw194678%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L194661%_))))
                       (if (assq _%kw194678%_ _%kwargs194529%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx194522%_
                              _%kw194678%_))
                           (_%lp194525%_
                            _%L194659%_
                            _%pargs194528%_
                            (cons (cons _%kw194678%_ _%L194660%_)
                                  _%kwargs194529%_))))))
                  (_%__kont197911197912%_
                   (lambda (_%L194607%_ _%L194608%_)
                     (_%lp194525%_
                      _%L194607%_
                      (cons _%L194608%_ _%pargs194528%_)
                      _%kwargs194529%_)))
                  (_%__kont197913197914%_
                   (lambda ()
                     (values (reverse _%pargs194528%_)
                             (reverse _%kwargs194529%_)))))
              (let ((_%__match198010198011%_
                     (lambda (_%e194566194627%_
                              _%hd194567194630%_
                              _%tl194568194632%_
                              _%e194569194635%_
                              _%hd194570194638%_
                              _%tl194571194640%_
                              _%e194572194643%_
                              _%hd194573194646%_
                              _%tl194574194648%_
                              _%e194575194651%_
                              _%hd194576194654%_
                              _%tl194577194656%_)
                       (let ((_%L194659%_ _%tl194577194656%_)
                             (_%L194660%_ _%hd194576194654%_)
                             (_%L194661%_ _%hd194573194646%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L194661%_))
                             (_%__kont197909197910%_
                              _%L194659%_
                              _%L194660%_
                              _%L194661%_)
                             (_%__kont197911197912%_
                              _%tl194568194632%_
                              _%hd194567194630%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx197903197904%_))
                    (let ((_%e194539194731%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx197903197904%_))))
                      (let ((_%tl194541194736%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194539194731%_)))
                            (_%hd194540194734%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194539194731%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd194540194734%_))
                            (let ((_%e194542194739%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd194540194734%_))))
                              (let ((_%tl194544194744%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194542194739%_)))
                                    (_%hd194543194742%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194542194739%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd194543194742%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd194543194742%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl194544194744%_))
                                            (let ((_%e194545194747%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl194544194744%_))))
                                              (let ((_%tl194547194752%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e194545194747%_)))
                                                    (_%hd194546194750%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e194545194747%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd194546194750%_))
                                                    (let ((_%e194548194755%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd194546194750%_))))
                                                      (if (equal? _%e194548194755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194547194752%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194541194736%_))
                          (let ((_%e194549194758%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194541194736%_))))
                            (let ((_%tl194551194763%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194549194758%_)))
                                  (_%hd194550194761%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194549194758%_))))
                              (_%__kont197905197906%_
                               _%tl194551194763%_
                               _%hd194550194761%_)))
                          (_%__kont197911197912%_
                           _%tl194541194736%_
                           _%hd194540194734%_))
                      (_%__kont197911197912%_
                       _%tl194541194736%_
                       _%hd194540194734%_))
                  (if (equal? _%e194548194755%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194547194752%_))
                          (_%__kont197907197908%_ _%tl194541194736%_)
                          (_%__kont197911197912%_
                           _%tl194541194736%_
                           _%hd194540194734%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194547194752%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194541194736%_))
                              (let ((_%e194575194651%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194541194736%_))))
                                (let ((_%tl194577194656%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194575194651%_)))
                                      (_%hd194576194654%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194575194651%_))))
                                  (_%__match198010198011%_
                                   _%e194539194731%_
                                   _%hd194540194734%_
                                   _%tl194541194736%_
                                   _%e194542194739%_
                                   _%hd194543194742%_
                                   _%tl194544194744%_
                                   _%e194545194747%_
                                   _%hd194546194750%_
                                   _%tl194547194752%_
                                   _%e194575194651%_
                                   _%hd194576194654%_
                                   _%tl194577194656%_)))
                              (_%__kont197911197912%_
                               _%tl194541194736%_
                               _%hd194540194734%_))
                          (_%__kont197911197912%_
                           _%tl194541194736%_
                           _%hd194540194734%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194547194752%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl194541194736%_))
                                                            (let ((_%e194575194651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl194541194736%_))))
                      (let ((_%tl194577194656%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194575194651%_)))
                            (_%hd194576194654%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194575194651%_))))
                        (_%__match198010198011%_
                         _%e194539194731%_
                         _%hd194540194734%_
                         _%tl194541194736%_
                         _%e194542194739%_
                         _%hd194543194742%_
                         _%tl194544194744%_
                         _%e194545194747%_
                         _%hd194546194750%_
                         _%tl194547194752%_
                         _%e194575194651%_
                         _%hd194576194654%_
                         _%tl194577194656%_)))
                    (_%__kont197911197912%_
                     _%tl194541194736%_
                     _%hd194540194734%_))
                (_%__kont197911197912%_
                 _%tl194541194736%_
                 _%hd194540194734%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont197911197912%_
                                             _%tl194541194736%_
                                             _%hd194540194734%_))
                                        (_%__kont197911197912%_
                                         _%tl194541194736%_
                                         _%hd194540194734%_))
                                    (_%__kont197911197912%_
                                     _%tl194541194736%_
                                     _%hd194540194734%_))))
                            (_%__kont197911197912%_
                             _%tl194541194736%_
                             _%hd194540194734%_))))
                    (_%__kont197913197914%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self193594194504%_ _%ctx194506%_ _%stx194507%_ _%args194508%_)
        (let* ((_%self194510%_ _%self193594194504%_)
               (_%self194512%_ _%self194510%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx194506%_ _%stx194507%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self194192%_ _%stx194193%_)
        (let* ((_%__stx198019198020%_ _%stx194193%_)
               (_%g194196194236%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198019198020%_)))))
          (let ((_%__kont198021198022%_
                 (lambda (_%L194342%_ _%L194343%_)
                   (let ((_%$e194370%_
                          (member 'return:
                                  (let ((__tmp198451
                                         (lambda (_%g194362194365%_
                                                  _%g194363194367%_)
                                           (cons _%g194362194365%_
                                                 _%g194363194367%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp198451 '() _%L194343%_))
                                  gx#stx-eq?)))
                     (if _%$e194370%_
                         ((lambda (_%tail194373%_)
                            (let ((_%type194375%_
                                   (let ((__tmp198452
                                          (let ((__tmp198453
                                                 (cadr _%tail194373%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp198453))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx194193%_
                                      __tmp198452))))
                              (gxc#check-return-type!
                               _%stx194193%_
                               _%L194342%_
                               _%type194375%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self194192%_
                                 _%L194342%_))))
                          _%$e194370%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self194192%_ _%L194342%_))))))
                (_%__kont198025198026%_
                 (lambda (_%L194265%_ _%L194266%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self194192%_ _%L194265%_)))))
            (let ((_%__match198056198057%_
                   (lambda (_%e194200194286%_
                            _%hd194201194289%_
                            _%tl194202194291%_
                            _%e194203194294%_
                            _%hd194204194297%_
                            _%tl194205194299%_
                            _%e194206194302%_
                            _%hd194207194305%_
                            _%tl194208194307%_
                            _%__splice198023198024%_
                            _%target194209194310%_
                            _%tl194211194312%_)
                     (letrec ((_%loop194212194315%_
                               (lambda (_%hd194210194318%_
                                        _%signature194216194320%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd194210194318%_))
                                     (let ((_%e194213194323%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd194210194318%_))))
                                       (let ((_%lp-tl194215194328%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e194213194323%_)))
                                             (_%lp-hd194214194326%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e194213194323%_))))
                                         (_%loop194212194315%_
                                          _%lp-tl194215194328%_
                                          (cons _%lp-hd194214194326%_
                                                _%signature194216194320%_))))
                                     (let ((_%signature194217194331%_
                                            (reverse _%signature194216194320%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl194205194299%_))
                                           (let ((_%e194218194334%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl194205194299%_))))
                                             (let ((_%tl194220194339%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e194218194334%_)))
                                                   (_%hd194219194337%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e194218194334%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl194220194339%_))
                                                   (_%__kont198021198022%_
                                                    _%hd194219194337%_
                                                    _%signature194217194331%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g194196194236%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g194196194236%_))))))))
                       (_%loop194212194315%_ _%target194209194310%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198019198020%_))
                  (let ((_%e194200194286%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198019198020%_))))
                    (let ((_%tl194202194291%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194200194286%_)))
                          (_%hd194201194289%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194200194286%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194202194291%_))
                          (let ((_%e194203194294%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194202194291%_))))
                            (let ((_%tl194205194299%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194203194294%_)))
                                  (_%hd194204194297%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194203194294%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194204194297%_))
                                  (let ((_%e194206194302%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194204194297%_))))
                                    (let ((_%tl194208194307%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194206194302%_)))
                                          (_%hd194207194305%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194206194302%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194207194305%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd194207194305%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl194208194307%_))
                                                  (let ((_%__splice198023198024%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl194208194307%_
                                                            '0))))
                                                    (let ((_%tl194211194312%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice198023198024%_
                                                              '1)))
                                                          (_%target194209194310%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice198023198024%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194211194312%_))
                                                          (_%__match198056198057%_
                                                           _%e194200194286%_
                                                           _%hd194201194289%_
                                                           _%tl194202194291%_
                                                           _%e194203194294%_
                                                           _%hd194204194297%_
                                                           _%tl194205194299%_
                                                           _%e194206194302%_
                                                           _%hd194207194305%_
                                                           _%tl194208194307%_
                                                           _%__splice198023198024%_
                                                           _%target194209194310%_
                                                           _%tl194211194312%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl194205194299%_))
                      (let ((_%e194229194257%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl194205194299%_))))
                        (let ((_%tl194231194262%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194229194257%_)))
                              (_%hd194230194260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194229194257%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194231194262%_))
                              (_%__kont198025198026%_
                               _%hd194230194260%_
                               _%hd194204194297%_)
                              (let ()
                                (declare (not safe))
                                (_%g194196194236%_)))))
                      (let () (declare (not safe)) (_%g194196194236%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194205194299%_))
                                                      (let ((_%e194229194257%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194205194299%_))))
                (let ((_%tl194231194262%_
                       (let () (declare (not safe)) (##cdr _%e194229194257%_)))
                      (_%hd194230194260%_
                       (let ()
                         (declare (not safe))
                         (##car _%e194229194257%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194231194262%_))
                      (_%__kont198025198026%_
                       _%hd194230194260%_
                       _%hd194204194297%_)
                      (let () (declare (not safe)) (_%g194196194236%_)))))
              (let () (declare (not safe)) (_%g194196194236%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194205194299%_))
                                                  (let ((_%e194229194257%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194205194299%_))))
                                                    (let ((_%tl194231194262%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194229194257%_)))
                                                          (_%hd194230194260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194229194257%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194231194262%_))
                                                          (_%__kont198025198026%_
                                                           _%hd194230194260%_
                                                           _%hd194204194297%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194196194236%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g194196194236%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194205194299%_))
                                              (let ((_%e194229194257%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194205194299%_))))
                                                (let ((_%tl194231194262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194229194257%_)))
                                                      (_%hd194230194260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194229194257%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194231194262%_))
                                                      (_%__kont198025198026%_
                                                       _%hd194230194260%_
                                                       _%hd194204194297%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194196194236%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g194196194236%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194205194299%_))
                                      (let ((_%e194229194257%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194205194299%_))))
                                        (let ((_%tl194231194262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194229194257%_)))
                                              (_%hd194230194260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194229194257%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194231194262%_))
                                              (_%__kont198025198026%_
                                               _%hd194230194260%_
                                               _%hd194204194297%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g194196194236%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194196194236%_))))))
                          (let () (declare (not safe)) (_%g194196194236%_)))))
                  (let () (declare (not safe)) (_%g194196194236%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx194170%_ _%expr194171%_ _%type194172%_)
        (let ((_%$e194174%_ (not _%type194172%_)))
          (if _%$e194174%_
              _%$e194174%_
              (let ((_%$e194177%_
                     (eq? (##structure-ref _%type194172%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e194177%_
                    _%$e194177%_
                    (let ((_%expr-type194181%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr194171%_))))
                      (if (not _%expr-type194181%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx194170%_
                             _%type194172%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type194181%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx194170%_
                                 _%type194172%_
                                 _%expr-type194181%_))
                              (let ((_%$e194185%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type194181%_
                                        'gxc#!abort::t))))
                                (if _%$e194185%_
                                    _%$e194185%_
                                    (let ((_%$e194188%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type194181%_
                                              _%type194172%_))))
                                      (if _%$e194188%_
                                          _%$e194188%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx194170%_
                                             _%type194172%_
                                             _%expr-type194181%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self193596%_ _%stx193597%_)
        (let* ((_%__stx198101198102%_ _%stx193597%_)
               (_%g193602193712%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198101198102%_)))))
          (let ((_%__kont198103198104%_
                 (lambda (_%L194144%_ _%L194145%_ _%L194146%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L194146%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self193596%_ _%L194145%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self193596%_ _%L194144%_)))))
                (_%__kont198105198106%_
                 (lambda (_%L193970%_ _%L193971%_ _%L193972%_ _%L193973%_)
                   (let ((_%$e194005%_
                          (let ((__tmp198454
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L193973%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp198454))))
                     (if _%$e194005%_
                         ((lambda (_%pred-type194008%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type194008%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type194008%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test194013%_
                                        (let ((__tmp198455
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L193973%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L193972%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp198455
                                           _%stx193597%_
                                           _%self193596%_)))
                                       (_%K194017%_
                                        (let ((__tmp198456
                                               (lambda ()
                                                 (let ((__tmp198459
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self193596%_
                                                             _%L193971%_))))
                                                       (__tmp198457
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L193972%_))
                            (let ((__tmp198458
                                   (##structure-ref
                                    _%pred-type194008%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx193597%_
                               __tmp198458)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp198459
                                                    gxc#current-compile-path-type
                                                    __tmp198457)))))
                                          (declare (not safe))
                                          (__make-promise __tmp198456)))
                                       (_%E194020%_
                                        (let ((__tmp198460
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self193596%_
                                                    _%L193970%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp198460)))
                                       (_%__stx198079198080%_ _%test194013%_)
                                       (_%g194024194038%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx198079198080%_)))))
                                  (let ((_%__kont198081198082%_
                                         (lambda (_%L194066%_ _%L194067%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L194066%_))
                                               (force _%K194017%_)
                                               (force _%E194020%_))))
                                        (_%__kont198083198084%_
                                         (lambda ()
                                           (let ((__tmp198461
                                                  (cons '%#if
                                                        (cons _%test194013%_
                                                              (cons (force _%K194017%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E194020%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198461
                                              _%stx193597%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx198079198080%_))
                                        (let ((_%e194028194050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx198079198080%_))))
                                          (let ((_%tl194030194055%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194028194050%_)))
                                                (_%hd194029194053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194028194050%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl194030194055%_))
                                                (let ((_%e194031194058%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl194030194055%_))))
                                                  (let ((_%tl194033194063%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e194031194058%_)))
                                                        (_%hd194032194061%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e194031194058%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194033194063%_))
                                                        (_%__kont198081198082%_
                                                         _%hd194032194061%_
                                                         _%hd194029194053%_)
                                                        (_%__kont198083198084%_))))
                                                (_%__kont198083198084%_))))
                                        (_%__kont198083198084%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self193596%_
                                   _%stx193597%_))))
                          _%$e194005%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self193596%_
                            _%stx193597%_))))))
                (_%__kont198107198108%_
                 (lambda (_%L193846%_ _%L193847%_ _%L193848%_ _%L193849%_)
                   (gxc#optimize-if%
                    _%self193596%_
                    (let ((__tmp198462
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L193848%_
                                       (cons _%L193846%_
                                             (cons _%L193847%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198462 _%stx193597%_)))))
                (_%__kont198109198110%_
                 (lambda (_%L193749%_ _%L193750%_ _%L193751%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self193596%_ _%stx193597%_)))))
            (let ((_%__match198308198309%_
                   (lambda (_%e193666193774%_
                            _%hd193667193777%_
                            _%tl193668193779%_
                            _%e193669193782%_
                            _%hd193670193785%_
                            _%tl193671193787%_
                            _%e193672193790%_
                            _%hd193673193793%_
                            _%tl193674193795%_
                            _%e193675193798%_
                            _%hd193676193801%_
                            _%tl193677193803%_
                            _%e193678193806%_
                            _%hd193679193809%_
                            _%tl193680193811%_
                            _%e193681193814%_
                            _%hd193682193817%_
                            _%tl193683193819%_
                            _%e193684193822%_
                            _%hd193685193825%_
                            _%tl193686193827%_
                            _%e193687193830%_
                            _%hd193688193833%_
                            _%tl193689193835%_
                            _%e193690193838%_
                            _%hd193691193841%_
                            _%tl193692193843%_)
                     (let ((_%L193846%_ _%hd193691193841%_)
                           (_%L193847%_ _%hd193688193833%_)
                           (_%L193848%_ _%hd193685193825%_)
                           (_%L193849%_ _%hd193682193817%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L193849%_ 'not))
                           (_%__kont198107198108%_
                            _%L193846%_
                            _%L193847%_
                            _%L193848%_
                            _%L193849%_)
                           (_%__kont198109198110%_
                            _%hd193691193841%_
                            _%hd193688193833%_
                            _%hd193670193785%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198101198102%_))
                  (let ((_%e193607194096%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198101198102%_))))
                    (let ((_%tl193609194101%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193607194096%_)))
                          (_%hd193608194099%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193607194096%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193609194101%_))
                          (let ((_%e193610194104%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193609194101%_))))
                            (let ((_%tl193612194109%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193610194104%_)))
                                  (_%hd193611194107%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193610194104%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193611194107%_))
                                  (let ((_%e193613194112%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193611194107%_))))
                                    (let ((_%tl193615194117%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193613194112%_)))
                                          (_%hd193614194115%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193613194112%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193614194115%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd193614194115%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193615194117%_))
                                                  (let ((_%e193616194120%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193615194117%_))))
                                                    (let ((_%tl193618194125%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193616194120%_)))
                                                          (_%hd193617194123%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193616194120%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193618194125%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193612194109%_))
                      (let ((_%e193619194128%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193612194109%_))))
                        (let ((_%tl193621194133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193619194128%_)))
                              (_%hd193620194131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193619194128%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193621194133%_))
                              (let ((_%e193622194136%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193621194133%_))))
                                (let ((_%tl193624194141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193622194136%_)))
                                      (_%hd193623194139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193622194136%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193624194141%_))
                                      (_%__kont198103198104%_
                                       _%hd193623194139%_
                                       _%hd193620194131%_
                                       _%hd193617194123%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g193602193712%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g193602193712%_)))))
                      (let () (declare (not safe)) (_%g193602193712%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193612194109%_))
                      (let ((_%e193702193733%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193612194109%_))))
                        (let ((_%tl193704193738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193702193733%_)))
                              (_%hd193703193736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193702193733%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193704193738%_))
                              (let ((_%e193705193741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193704193738%_))))
                                (let ((_%tl193707193746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193705193741%_)))
                                      (_%hd193706193744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193705193741%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193707193746%_))
                                      (_%__kont198109198110%_
                                       _%hd193706193744%_
                                       _%hd193703193736%_
                                       _%hd193611194107%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g193602193712%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g193602193712%_)))))
                      (let () (declare (not safe)) (_%g193602193712%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193612194109%_))
                                                      (let ((_%e193702193733%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193612194109%_))))
                (let ((_%tl193704193738%_
                       (let () (declare (not safe)) (##cdr _%e193702193733%_)))
                      (_%hd193703193736%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193702193733%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193704193738%_))
                      (let ((_%e193705193741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193704193738%_))))
                        (let ((_%tl193707193746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193705193741%_)))
                              (_%hd193706193744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193705193741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193707193746%_))
                              (_%__kont198109198110%_
                               _%hd193706193744%_
                               _%hd193703193736%_
                               _%hd193611194107%_)
                              (let ()
                                (declare (not safe))
                                (_%g193602193712%_)))))
                      (let () (declare (not safe)) (_%g193602193712%_)))))
              (let () (declare (not safe)) (_%g193602193712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd193614194115%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193615194117%_))
                                                      (let ((_%e193638193906%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193615194117%_))))
                (let ((_%tl193640193911%_
                       (let () (declare (not safe)) (##cdr _%e193638193906%_)))
                      (_%hd193639193909%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193638193906%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193639193909%_))
                      (let ((_%e193641193914%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193639193909%_))))
                        (let ((_%tl193643193919%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193641193914%_)))
                              (_%hd193642193917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193641193914%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193642193917%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193642193917%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193643193919%_))
                                      (let ((_%e193644193922%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193643193919%_))))
                                        (let ((_%tl193646193927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193644193922%_)))
                                              (_%hd193645193925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193644193922%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193646193927%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193640193911%_))
                                                  (let ((_%e193647193930%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193640193911%_))))
                                                    (let ((_%tl193649193935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193647193930%_)))
                                                          (_%hd193648193933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193647193930%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193648193933%_))
                                                          (let ((_%e193650193938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193648193933%_))))
                    (let ((_%tl193652193943%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193650193938%_)))
                          (_%hd193651193941%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193650193938%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193651193941%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd193651193941%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193652193943%_))
                                  (let ((_%e193653193946%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193652193943%_))))
                                    (let ((_%tl193655193951%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193653193946%_)))
                                          (_%hd193654193949%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193653193946%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193655193951%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193649193935%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193612194109%_))
                                                  (let ((_%e193656193954%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193612194109%_))))
                                                    (let ((_%tl193658193959%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193656193954%_)))
                                                          (_%hd193657193957%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193656193954%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193658193959%_))
                                                          (let ((_%e193659193962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193658193959%_))))
                    (let ((_%tl193661193967%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193659193962%_)))
                          (_%hd193660193965%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193659193962%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193661193967%_))
                          (_%__kont198105198106%_
                           _%hd193660193965%_
                           _%hd193657193957%_
                           _%hd193654193949%_
                           _%hd193645193925%_)
                          (let () (declare (not safe)) (_%g193602193712%_)))))
                  (let () (declare (not safe)) (_%g193602193712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193602193712%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193612194109%_))
                                                  (let ((_%e193702193733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193612194109%_))))
                                                    (let ((_%tl193704193738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193702193733%_)))
                                                          (_%hd193703193736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193702193733%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193704193738%_))
                                                          (let ((_%e193705193741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193704193738%_))))
                    (let ((_%tl193707193746%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193705193741%_)))
                          (_%hd193706193744%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193705193741%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193707193746%_))
                          (_%__kont198109198110%_
                           _%hd193706193744%_
                           _%hd193703193736%_
                           _%hd193611194107%_)
                          (let () (declare (not safe)) (_%g193602193712%_)))))
                  (let () (declare (not safe)) (_%g193602193712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193602193712%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193649193935%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193612194109%_))
                                                  (let ((_%e193687193830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193612194109%_))))
                                                    (let ((_%tl193689193835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193687193830%_)))
                                                          (_%hd193688193833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193687193830%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193689193835%_))
                                                          (let ((_%e193690193838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193689193835%_))))
                    (let ((_%tl193692193843%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193690193838%_)))
                          (_%hd193691193841%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193690193838%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193692193843%_))
                          (_%__match198308198309%_
                           _%e193607194096%_
                           _%hd193608194099%_
                           _%tl193609194101%_
                           _%e193610194104%_
                           _%hd193611194107%_
                           _%tl193612194109%_
                           _%e193613194112%_
                           _%hd193614194115%_
                           _%tl193615194117%_
                           _%e193638193906%_
                           _%hd193639193909%_
                           _%tl193640193911%_
                           _%e193641193914%_
                           _%hd193642193917%_
                           _%tl193643193919%_
                           _%e193644193922%_
                           _%hd193645193925%_
                           _%tl193646193927%_
                           _%e193647193930%_
                           _%hd193648193933%_
                           _%tl193649193935%_
                           _%e193687193830%_
                           _%hd193688193833%_
                           _%tl193689193835%_
                           _%e193690193838%_
                           _%hd193691193841%_
                           _%tl193692193843%_)
                          (let () (declare (not safe)) (_%g193602193712%_)))))
                  (let () (declare (not safe)) (_%g193602193712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193602193712%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193612194109%_))
                                                  (let ((_%e193702193733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193612194109%_))))
                                                    (let ((_%tl193704193738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193702193733%_)))
                                                          (_%hd193703193736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193702193733%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193704193738%_))
                                                          (let ((_%e193705193741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193704193738%_))))
                    (let ((_%tl193707193746%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193705193741%_)))
                          (_%hd193706193744%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193705193741%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193707193746%_))
                          (_%__kont198109198110%_
                           _%hd193706193744%_
                           _%hd193703193736%_
                           _%hd193611194107%_)
                          (let () (declare (not safe)) (_%g193602193712%_)))))
                  (let () (declare (not safe)) (_%g193602193712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193602193712%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193649193935%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193612194109%_))
                                          (let ((_%e193687193830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193612194109%_))))
                                            (let ((_%tl193689193835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193687193830%_)))
                                                  (_%hd193688193833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193687193830%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193689193835%_))
                                                  (let ((_%e193690193838%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193689193835%_))))
                                                    (let ((_%tl193692193843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193690193838%_)))
                                                          (_%hd193691193841%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193690193838%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193692193843%_))
                                                          (_%__match198308198309%_
                                                           _%e193607194096%_
                                                           _%hd193608194099%_
                                                           _%tl193609194101%_
                                                           _%e193610194104%_
                                                           _%hd193611194107%_
                                                           _%tl193612194109%_
                                                           _%e193613194112%_
                                                           _%hd193614194115%_
                                                           _%tl193615194117%_
                                                           _%e193638193906%_
                                                           _%hd193639193909%_
                                                           _%tl193640193911%_
                                                           _%e193641193914%_
                                                           _%hd193642193917%_
                                                           _%tl193643193919%_
                                                           _%e193644193922%_
                                                           _%hd193645193925%_
                                                           _%tl193646193927%_
                                                           _%e193647193930%_
                                                           _%hd193648193933%_
                                                           _%tl193649193935%_
                                                           _%e193687193830%_
                                                           _%hd193688193833%_
                                                           _%tl193689193835%_
                                                           _%e193690193838%_
                                                           _%hd193691193841%_
                                                           _%tl193692193843%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193602193712%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193602193712%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193602193712%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193612194109%_))
                                          (let ((_%e193702193733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193612194109%_))))
                                            (let ((_%tl193704193738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193702193733%_)))
                                                  (_%hd193703193736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193702193733%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193704193738%_))
                                                  (let ((_%e193705193741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193704193738%_))))
                                                    (let ((_%tl193707193746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193705193741%_)))
                                                          (_%hd193706193744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193705193741%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193707193746%_))
                                                          (_%__kont198109198110%_
                                                           _%hd193706193744%_
                                                           _%hd193703193736%_
                                                           _%hd193611194107%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193602193712%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193602193712%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193602193712%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193649193935%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193612194109%_))
                                      (let ((_%e193687193830%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193612194109%_))))
                                        (let ((_%tl193689193835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193687193830%_)))
                                              (_%hd193688193833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193687193830%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193689193835%_))
                                              (let ((_%e193690193838%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193689193835%_))))
                                                (let ((_%tl193692193843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193690193838%_)))
                                                      (_%hd193691193841%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193690193838%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193692193843%_))
                                                      (_%__match198308198309%_
                                                       _%e193607194096%_
                                                       _%hd193608194099%_
                                                       _%tl193609194101%_
                                                       _%e193610194104%_
                                                       _%hd193611194107%_
                                                       _%tl193612194109%_
                                                       _%e193613194112%_
                                                       _%hd193614194115%_
                                                       _%tl193615194117%_
                                                       _%e193638193906%_
                                                       _%hd193639193909%_
                                                       _%tl193640193911%_
                                                       _%e193641193914%_
                                                       _%hd193642193917%_
                                                       _%tl193643193919%_
                                                       _%e193644193922%_
                                                       _%hd193645193925%_
                                                       _%tl193646193927%_
                                                       _%e193647193930%_
                                                       _%hd193648193933%_
                                                       _%tl193649193935%_
                                                       _%e193687193830%_
                                                       _%hd193688193833%_
                                                       _%tl193689193835%_
                                                       _%e193690193838%_
                                                       _%hd193691193841%_
                                                       _%tl193692193843%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193602193712%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193602193712%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193602193712%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193612194109%_))
                                      (let ((_%e193702193733%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193612194109%_))))
                                        (let ((_%tl193704193738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193702193733%_)))
                                              (_%hd193703193736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193702193733%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193704193738%_))
                                              (let ((_%e193705193741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193704193738%_))))
                                                (let ((_%tl193707193746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193705193741%_)))
                                                      (_%hd193706193744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193705193741%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193707193746%_))
                                                      (_%__kont198109198110%_
                                                       _%hd193706193744%_
                                                       _%hd193703193736%_
                                                       _%hd193611194107%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193602193712%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193602193712%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193602193712%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193649193935%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193612194109%_))
                                  (let ((_%e193687193830%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193612194109%_))))
                                    (let ((_%tl193689193835%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193687193830%_)))
                                          (_%hd193688193833%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193687193830%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193689193835%_))
                                          (let ((_%e193690193838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193689193835%_))))
                                            (let ((_%tl193692193843%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193690193838%_)))
                                                  (_%hd193691193841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193690193838%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193692193843%_))
                                                  (_%__match198308198309%_
                                                   _%e193607194096%_
                                                   _%hd193608194099%_
                                                   _%tl193609194101%_
                                                   _%e193610194104%_
                                                   _%hd193611194107%_
                                                   _%tl193612194109%_
                                                   _%e193613194112%_
                                                   _%hd193614194115%_
                                                   _%tl193615194117%_
                                                   _%e193638193906%_
                                                   _%hd193639193909%_
                                                   _%tl193640193911%_
                                                   _%e193641193914%_
                                                   _%hd193642193917%_
                                                   _%tl193643193919%_
                                                   _%e193644193922%_
                                                   _%hd193645193925%_
                                                   _%tl193646193927%_
                                                   _%e193647193930%_
                                                   _%hd193648193933%_
                                                   _%tl193649193935%_
                                                   _%e193687193830%_
                                                   _%hd193688193833%_
                                                   _%tl193689193835%_
                                                   _%e193690193838%_
                                                   _%hd193691193841%_
                                                   _%tl193692193843%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193602193712%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193602193712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193602193712%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193612194109%_))
                                  (let ((_%e193702193733%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193612194109%_))))
                                    (let ((_%tl193704193738%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193702193733%_)))
                                          (_%hd193703193736%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193702193733%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193704193738%_))
                                          (let ((_%e193705193741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193704193738%_))))
                                            (let ((_%tl193707193746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193705193741%_)))
                                                  (_%hd193706193744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193705193741%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193707193746%_))
                                                  (_%__kont198109198110%_
                                                   _%hd193706193744%_
                                                   _%hd193703193736%_
                                                   _%hd193611194107%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193602193712%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193602193712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193602193712%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193649193935%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193612194109%_))
                          (let ((_%e193687193830%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193612194109%_))))
                            (let ((_%tl193689193835%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193687193830%_)))
                                  (_%hd193688193833%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193687193830%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193689193835%_))
                                  (let ((_%e193690193838%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193689193835%_))))
                                    (let ((_%tl193692193843%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193690193838%_)))
                                          (_%hd193691193841%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193690193838%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193692193843%_))
                                          (_%__match198308198309%_
                                           _%e193607194096%_
                                           _%hd193608194099%_
                                           _%tl193609194101%_
                                           _%e193610194104%_
                                           _%hd193611194107%_
                                           _%tl193612194109%_
                                           _%e193613194112%_
                                           _%hd193614194115%_
                                           _%tl193615194117%_
                                           _%e193638193906%_
                                           _%hd193639193909%_
                                           _%tl193640193911%_
                                           _%e193641193914%_
                                           _%hd193642193917%_
                                           _%tl193643193919%_
                                           _%e193644193922%_
                                           _%hd193645193925%_
                                           _%tl193646193927%_
                                           _%e193647193930%_
                                           _%hd193648193933%_
                                           _%tl193649193935%_
                                           _%e193687193830%_
                                           _%hd193688193833%_
                                           _%tl193689193835%_
                                           _%e193690193838%_
                                           _%hd193691193841%_
                                           _%tl193692193843%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193602193712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193602193712%_)))))
                          (let () (declare (not safe)) (_%g193602193712%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193612194109%_))
                          (let ((_%e193702193733%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193612194109%_))))
                            (let ((_%tl193704193738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193702193733%_)))
                                  (_%hd193703193736%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193702193733%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193704193738%_))
                                  (let ((_%e193705193741%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193704193738%_))))
                                    (let ((_%tl193707193746%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193705193741%_)))
                                          (_%hd193706193744%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193705193741%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193707193746%_))
                                          (_%__kont198109198110%_
                                           _%hd193706193744%_
                                           _%hd193703193736%_
                                           _%hd193611194107%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193602193712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193602193712%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g193602193712%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193612194109%_))
                                                      (let ((_%e193702193733%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193612194109%_))))
                (let ((_%tl193704193738%_
                       (let () (declare (not safe)) (##cdr _%e193702193733%_)))
                      (_%hd193703193736%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193702193733%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193704193738%_))
                      (let ((_%e193705193741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193704193738%_))))
                        (let ((_%tl193707193746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193705193741%_)))
                              (_%hd193706193744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193705193741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193707193746%_))
                              (_%__kont198109198110%_
                               _%hd193706193744%_
                               _%hd193703193736%_
                               _%hd193611194107%_)
                              (let ()
                                (declare (not safe))
                                (_%g193602193712%_)))))
                      (let () (declare (not safe)) (_%g193602193712%_)))))
              (let () (declare (not safe)) (_%g193602193712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193612194109%_))
                                                  (let ((_%e193702193733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193612194109%_))))
                                                    (let ((_%tl193704193738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193702193733%_)))
                                                          (_%hd193703193736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193702193733%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193704193738%_))
                                                          (let ((_%e193705193741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193704193738%_))))
                    (let ((_%tl193707193746%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193705193741%_)))
                          (_%hd193706193744%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193705193741%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193707193746%_))
                          (_%__kont198109198110%_
                           _%hd193706193744%_
                           _%hd193703193736%_
                           _%hd193611194107%_)
                          (let () (declare (not safe)) (_%g193602193712%_)))))
                  (let () (declare (not safe)) (_%g193602193712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193602193712%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193612194109%_))
                                          (let ((_%e193702193733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193612194109%_))))
                                            (let ((_%tl193704193738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193702193733%_)))
                                                  (_%hd193703193736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193702193733%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193704193738%_))
                                                  (let ((_%e193705193741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193704193738%_))))
                                                    (let ((_%tl193707193746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193705193741%_)))
                                                          (_%hd193706193744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193705193741%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193707193746%_))
                                                          (_%__kont198109198110%_
                                                           _%hd193706193744%_
                                                           _%hd193703193736%_
                                                           _%hd193611194107%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193602193712%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193602193712%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193602193712%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193612194109%_))
                                      (let ((_%e193702193733%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193612194109%_))))
                                        (let ((_%tl193704193738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193702193733%_)))
                                              (_%hd193703193736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193702193733%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193704193738%_))
                                              (let ((_%e193705193741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193704193738%_))))
                                                (let ((_%tl193707193746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193705193741%_)))
                                                      (_%hd193706193744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193705193741%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193707193746%_))
                                                      (_%__kont198109198110%_
                                                       _%hd193706193744%_
                                                       _%hd193703193736%_
                                                       _%hd193611194107%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193602193712%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193602193712%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193602193712%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193612194109%_))
                                  (let ((_%e193702193733%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193612194109%_))))
                                    (let ((_%tl193704193738%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193702193733%_)))
                                          (_%hd193703193736%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193702193733%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193704193738%_))
                                          (let ((_%e193705193741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193704193738%_))))
                                            (let ((_%tl193707193746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193705193741%_)))
                                                  (_%hd193706193744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193705193741%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193707193746%_))
                                                  (_%__kont198109198110%_
                                                   _%hd193706193744%_
                                                   _%hd193703193736%_
                                                   _%hd193611194107%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193602193712%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193602193712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193602193712%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193612194109%_))
                          (let ((_%e193702193733%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193612194109%_))))
                            (let ((_%tl193704193738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193702193733%_)))
                                  (_%hd193703193736%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193702193733%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193704193738%_))
                                  (let ((_%e193705193741%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193704193738%_))))
                                    (let ((_%tl193707193746%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193705193741%_)))
                                          (_%hd193706193744%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193705193741%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193707193746%_))
                                          (_%__kont198109198110%_
                                           _%hd193706193744%_
                                           _%hd193703193736%_
                                           _%hd193611194107%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193602193712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193602193712%_)))))
                          (let () (declare (not safe)) (_%g193602193712%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl193612194109%_))
                  (let ((_%e193702193733%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193612194109%_))))
                    (let ((_%tl193704193738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193702193733%_)))
                          (_%hd193703193736%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193702193733%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193704193738%_))
                          (let ((_%e193705193741%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193704193738%_))))
                            (let ((_%tl193707193746%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193705193741%_)))
                                  (_%hd193706193744%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193705193741%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193707193746%_))
                                  (_%__kont198109198110%_
                                   _%hd193706193744%_
                                   _%hd193703193736%_
                                   _%hd193611194107%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g193602193712%_)))))
                          (let () (declare (not safe)) (_%g193602193712%_)))))
                  (let () (declare (not safe)) (_%g193602193712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193612194109%_))
                                                      (let ((_%e193702193733%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193612194109%_))))
                (let ((_%tl193704193738%_
                       (let () (declare (not safe)) (##cdr _%e193702193733%_)))
                      (_%hd193703193736%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193702193733%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193704193738%_))
                      (let ((_%e193705193741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193704193738%_))))
                        (let ((_%tl193707193746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193705193741%_)))
                              (_%hd193706193744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193705193741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193707193746%_))
                              (_%__kont198109198110%_
                               _%hd193706193744%_
                               _%hd193703193736%_
                               _%hd193611194107%_)
                              (let ()
                                (declare (not safe))
                                (_%g193602193712%_)))))
                      (let () (declare (not safe)) (_%g193602193712%_)))))
              (let () (declare (not safe)) (_%g193602193712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193612194109%_))
                                              (let ((_%e193702193733%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193612194109%_))))
                                                (let ((_%tl193704193738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193702193733%_)))
                                                      (_%hd193703193736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193702193733%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193704193738%_))
                                                      (let ((_%e193705193741%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193704193738%_))))
                (let ((_%tl193707193746%_
                       (let () (declare (not safe)) (##cdr _%e193705193741%_)))
                      (_%hd193706193744%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193705193741%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193707193746%_))
                      (_%__kont198109198110%_
                       _%hd193706193744%_
                       _%hd193703193736%_
                       _%hd193611194107%_)
                      (let () (declare (not safe)) (_%g193602193712%_)))))
              (let () (declare (not safe)) (_%g193602193712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g193602193712%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193612194109%_))
                                      (let ((_%e193702193733%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193612194109%_))))
                                        (let ((_%tl193704193738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193702193733%_)))
                                              (_%hd193703193736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193702193733%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193704193738%_))
                                              (let ((_%e193705193741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193704193738%_))))
                                                (let ((_%tl193707193746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193705193741%_)))
                                                      (_%hd193706193744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193705193741%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193707193746%_))
                                                      (_%__kont198109198110%_
                                                       _%hd193706193744%_
                                                       _%hd193703193736%_
                                                       _%hd193611194107%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193602193712%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193602193712%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193602193712%_))))))
                          (let () (declare (not safe)) (_%g193602193712%_)))))
                  (let () (declare (not safe)) (_%g193602193712%_))))))))))
