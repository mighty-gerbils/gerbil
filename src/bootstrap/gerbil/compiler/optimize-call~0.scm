(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1742237319)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp198545 (list gxc#::basic-xform::t))
            (__tmp198544 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp198545
         '()
         __tmp198544
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args197822%_
        (apply make-instance gxc#::optimize-call::t _%$args197822%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp198546
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
        (__make-promise __tmp198546)))
    (define gxc#apply-optimize-call
      (lambda (_%stx197814%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self197817%_
                (let ((__obj198536
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj198536))
               (__tmp198547
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197817%_ _%stx197814%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198547
           gxc#current-compile-method
           _%self197817%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp198549 (list gxc#::void::t))
            (__tmp198548 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp198549
         '()
         __tmp198548
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args197811%_
        (apply make-instance gxc#::check-return-type::t _%$args197811%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp198550
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
        (__make-promise __tmp198550)))
    (define gxc#apply-check-return-type
      (lambda (_%stx197803%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self197806%_
                (let ((__obj198538
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj198538))
               (__tmp198551
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197806%_ _%stx197803%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198551
           gxc#current-compile-method
           _%self197806%_))))
    (define gxc#optimize-call%
      (lambda (_%self197404%_ _%stx197405%_)
        (let* ((_%__stx197891197892%_ _%stx197405%_)
               (_%g197408197454%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197891197892%_)))))
          (let ((_%__kont197893197894%_
                 (lambda (_%L197597%_ _%L197598%_)
                   (let* ((_%rator-id197618%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L197598%_)))
                          (_%rator-type197620%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id197618%_))))
                     (if (or (not _%rator-type197620%_)
                             (eq? (##structure-ref
                                   _%rator-type197620%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self197404%_ _%stx197405%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type197620%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp198552
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type197620%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id197618%_
                                  '" => "
                                  _%rator-type197620%_
                                  '" "
                                  __tmp198552))
                               (let* ((_%optimized197635%_
                                       (let ((__method198539
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type197620%_
                                                 'optimize-call))))
                                         (if __method198539
                                             (let ((__tmp198553
                                                    (let ((__tmp198554
                                                           (lambda (_%g197627197630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197628197632%_)
                     (cons _%g197627197630%_ _%g197628197632%_))))
              (declare (not safe))
              (__foldr1 __tmp198554 '() _%L197597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method198539
                                                _%rator-type197620%_
                                                _%self197404%_
                                                _%stx197405%_
                                                __tmp198553))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type197620%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx197839197840%_
                                       _%optimized197635%_)
                                      (_%g197638197667%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx197839197840%_)))))
                                 (let ((_%__kont197841197842%_
                                        (lambda (_%L197735%_ _%L197736%_)
                                          (let* ((_%optimized-rator-id197763%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L197736%_)))
                                                 (_%rator-type197768%_
                                                  (let ((_%$e197765%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id197763%_))))
                                                    (if _%$e197765%_
                                                        _%$e197765%_
                                                        _%rator-type197620%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type197768%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id197763%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type197768%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type197768%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized197635%_
                                                (let ((__tmp198555
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L197736%_ '()))
                           (let ((__tmp198556
                                  (lambda (_%g197776197779%_ _%g197777197781%_)
                                    (cons _%g197776197779%_
                                          _%g197777197781%_))))
                             (declare (not safe))
                             (__foldr1 __tmp198556 '() _%L197735%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp198555
                                                   _%stx197405%_))))))
                                       (_%__kont197845197846%_
                                        (lambda () _%optimized197635%_)))
                                   (let ((_%__match197888197889%_
                                          (lambda (_%e197642197679%_
                                                   _%hd197643197682%_
                                                   _%tl197644197684%_
                                                   _%e197645197687%_
                                                   _%hd197646197690%_
                                                   _%tl197647197692%_
                                                   _%e197648197695%_
                                                   _%hd197649197698%_
                                                   _%tl197650197700%_
                                                   _%e197651197703%_
                                                   _%hd197652197706%_
                                                   _%tl197653197708%_
                                                   _%__splice197843197844%_
                                                   _%target197654197711%_
                                                   _%tl197656197713%_)
                                            (letrec ((_%loop197657197716%_
                                                      (lambda (_%hd197655197719%_
                                                               _%arg197661197721%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd197655197719%_))
                                                            (let ((_%e197658197724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd197655197719%_))))
                      (let ((_%lp-tl197660197729%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197658197724%_)))
                            (_%lp-hd197659197727%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197658197724%_))))
                        (_%loop197657197716%_
                         _%lp-tl197660197729%_
                         (cons _%lp-hd197659197727%_ _%arg197661197721%_))))
                    (let ((_%arg197662197732%_ (reverse _%arg197661197721%_)))
                      (_%__kont197841197842%_
                       _%arg197662197732%_
                       _%hd197652197706%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop197657197716%_
                                               _%target197654197711%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx197839197840%_))
                                         (let ((_%e197642197679%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx197839197840%_))))
                                           (let ((_%tl197644197684%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197642197679%_)))
                                                 (_%hd197643197682%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197642197679%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd197643197682%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd197643197682%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl197644197684%_))
                                                         (let ((_%e197645197687%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl197644197684%_))))
                   (let ((_%tl197647197692%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e197645197687%_)))
                         (_%hd197646197690%_
                          (let ()
                            (declare (not safe))
                            (##car _%e197645197687%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd197646197690%_))
                         (let ((_%e197648197695%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd197646197690%_))))
                           (let ((_%tl197650197700%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197648197695%_)))
                                 (_%hd197649197698%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197648197695%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd197649197698%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd197649197698%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl197650197700%_))
                                         (let ((_%e197651197703%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl197650197700%_))))
                                           (let ((_%tl197653197708%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197651197703%_)))
                                                 (_%hd197652197706%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197651197703%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl197653197708%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl197647197692%_))
                                                     (let ((_%__splice197843197844%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl197647197692%_
                                                               '0))))
                                                       (let ((_%tl197656197713%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice197843197844%_ '1)))
                     (_%target197654197711%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice197843197844%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl197656197713%_))
                     (_%__match197888197889%_
                      _%e197642197679%_
                      _%hd197643197682%_
                      _%tl197644197684%_
                      _%e197645197687%_
                      _%hd197646197690%_
                      _%tl197647197692%_
                      _%e197648197695%_
                      _%hd197649197698%_
                      _%tl197650197700%_
                      _%e197651197703%_
                      _%hd197652197706%_
                      _%tl197653197708%_
                      _%__splice197843197844%_
                      _%target197654197711%_
                      _%tl197656197713%_)
                     (_%__kont197845197846%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont197845197846%_))
                                                 (_%__kont197845197846%_))))
                                         (_%__kont197845197846%_))
                                     (_%__kont197845197846%_))
                                 (_%__kont197845197846%_))))
                         (_%__kont197845197846%_))))
                 (_%__kont197845197846%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont197845197846%_))
                                                 (_%__kont197845197846%_))))
                                         (_%__kont197845197846%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type197620%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type197620%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp198557
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L197598%_
                                                                '()))
                                                    (map (lambda (_%g197787197789%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self197404%_
                                                              _%g197787197789%_)))
                                                         (let ((__tmp198558
                                                                (lambda (_%g197791197794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g197792197796%_)
                          (cons _%g197791197794%_ _%g197792197796%_))))
                   (declare (not safe))
                   (__foldr1 __tmp198558 '() _%L197597%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp198557
                                    _%stx197405%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx197405%_
                                    _%rator-type197620%_))))))))
                (_%__kont197897197898%_
                 (lambda (_%L197499%_ _%L197500%_)
                   (let ((_%rator-type197517%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L197500%_))))
                     (if (and _%rator-type197517%_
                              (eq? (##structure-ref
                                    _%rator-type197517%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type197517%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type197517%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type197517%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp198559
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self197404%_
                                               _%L197500%_))
                                            (map (lambda (_%g197519197521%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self197404%_
                                                      _%g197519197521%_)))
                                                 (let ((__tmp198560
                                                        (lambda (_%g197523197526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g197524197528%_)
                  (cons _%g197523197526%_ _%g197524197528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp198560
                                                    '()
                                                    _%L197499%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp198559 _%stx197405%_))
                         (if (or (not _%rator-type197517%_)
                                 (let ((__tmp198561
                                        (##structure-ref
                                         _%rator-type197517%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp198561 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self197404%_ _%stx197405%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx197405%_
                                _%rator-type197517%_))))))))
            (let* ((_%__match197958197959%_
                    (lambda (_%e197435197459%_
                             _%hd197436197462%_
                             _%tl197437197464%_
                             _%e197438197467%_
                             _%hd197439197470%_
                             _%tl197440197472%_
                             _%__splice197899197900%_
                             _%target197441197475%_
                             _%tl197443197477%_)
                      (letrec ((_%loop197444197480%_
                                (lambda (_%hd197442197483%_
                                         _%rand197448197485%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197442197483%_))
                                      (let ((_%e197445197488%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197442197483%_))))
                                        (let ((_%lp-tl197447197493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197445197488%_)))
                                              (_%lp-hd197446197491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197445197488%_))))
                                          (_%loop197444197480%_
                                           _%lp-tl197447197493%_
                                           (cons _%lp-hd197446197491%_
                                                 _%rand197448197485%_))))
                                      (let ((_%rand197449197496%_
                                             (reverse _%rand197448197485%_)))
                                        (_%__kont197897197898%_
                                         _%rand197449197496%_
                                         _%hd197439197470%_))))))
                        (_%loop197444197480%_ _%target197441197475%_ '()))))
                   (_%__match197938197939%_
                    (lambda (_%e197412197541%_
                             _%hd197413197544%_
                             _%tl197414197546%_
                             _%e197415197549%_
                             _%hd197416197552%_
                             _%tl197417197554%_
                             _%e197418197557%_
                             _%hd197419197560%_
                             _%tl197420197562%_
                             _%e197421197565%_
                             _%hd197422197568%_
                             _%tl197423197570%_
                             _%__splice197895197896%_
                             _%target197424197573%_
                             _%tl197426197575%_)
                      (letrec ((_%loop197427197578%_
                                (lambda (_%hd197425197581%_
                                         _%rand197431197583%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197425197581%_))
                                      (let ((_%e197428197586%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197425197581%_))))
                                        (let ((_%lp-tl197430197591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197428197586%_)))
                                              (_%lp-hd197429197589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197428197586%_))))
                                          (_%loop197427197578%_
                                           _%lp-tl197430197591%_
                                           (cons _%lp-hd197429197589%_
                                                 _%rand197431197583%_))))
                                      (let ((_%rand197432197594%_
                                             (reverse _%rand197431197583%_)))
                                        (_%__kont197893197894%_
                                         _%rand197432197594%_
                                         _%hd197422197568%_))))))
                        (_%loop197427197578%_ _%target197424197573%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197891197892%_))
                  (let ((_%e197412197541%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197891197892%_))))
                    (let ((_%tl197414197546%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197412197541%_)))
                          (_%hd197413197544%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197412197541%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197414197546%_))
                          (let ((_%e197415197549%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197414197546%_))))
                            (let ((_%tl197417197554%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197415197549%_)))
                                  (_%hd197416197552%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197415197549%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197416197552%_))
                                  (let ((_%e197418197557%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197416197552%_))))
                                    (let ((_%tl197420197562%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197418197557%_)))
                                          (_%hd197419197560%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197418197557%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197419197560%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197419197560%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197420197562%_))
                                                  (let ((_%e197421197565%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197420197562%_))))
                                                    (let ((_%tl197423197570%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197421197565%_)))
                                                          (_%hd197422197568%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197421197565%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197423197570%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl197417197554%_))
                      (let ((_%__splice197895197896%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl197417197554%_
                                '0))))
                        (let ((_%tl197426197575%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197895197896%_ '1)))
                              (_%target197424197573%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197895197896%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197426197575%_))
                              (_%__match197938197939%_
                               _%e197412197541%_
                               _%hd197413197544%_
                               _%tl197414197546%_
                               _%e197415197549%_
                               _%hd197416197552%_
                               _%tl197417197554%_
                               _%e197418197557%_
                               _%hd197419197560%_
                               _%tl197420197562%_
                               _%e197421197565%_
                               _%hd197422197568%_
                               _%tl197423197570%_
                               _%__splice197895197896%_
                               _%target197424197573%_
                               _%tl197426197575%_)
                              (let ()
                                (declare (not safe))
                                (_%g197408197454%_)))))
                      (let () (declare (not safe)) (_%g197408197454%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl197417197554%_))
                      (let ((_%__splice197899197900%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl197417197554%_
                                '0))))
                        (let ((_%tl197443197477%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197899197900%_ '1)))
                              (_%target197441197475%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197899197900%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197443197477%_))
                              (_%__match197958197959%_
                               _%e197412197541%_
                               _%hd197413197544%_
                               _%tl197414197546%_
                               _%e197415197549%_
                               _%hd197416197552%_
                               _%tl197417197554%_
                               _%__splice197899197900%_
                               _%target197441197475%_
                               _%tl197443197477%_)
                              (let ()
                                (declare (not safe))
                                (_%g197408197454%_)))))
                      (let () (declare (not safe)) (_%g197408197454%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl197417197554%_))
                                                      (let ((_%__splice197899197900%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl197417197554%_
                        '0))))
                (let ((_%tl197443197477%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice197899197900%_ '1)))
                      (_%target197441197475%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice197899197900%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197443197477%_))
                      (_%__match197958197959%_
                       _%e197412197541%_
                       _%hd197413197544%_
                       _%tl197414197546%_
                       _%e197415197549%_
                       _%hd197416197552%_
                       _%tl197417197554%_
                       _%__splice197899197900%_
                       _%target197441197475%_
                       _%tl197443197477%_)
                      (let () (declare (not safe)) (_%g197408197454%_)))))
              (let () (declare (not safe)) (_%g197408197454%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl197417197554%_))
                                                  (let ((_%__splice197899197900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl197417197554%_
                                                            '0))))
                                                    (let ((_%tl197443197477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197899197900%_
                                                              '1)))
                                                          (_%target197441197475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197899197900%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197443197477%_))
                                                          (_%__match197958197959%_
                                                           _%e197412197541%_
                                                           _%hd197413197544%_
                                                           _%tl197414197546%_
                                                           _%e197415197549%_
                                                           _%hd197416197552%_
                                                           _%tl197417197554%_
                                                           _%__splice197899197900%_
                                                           _%target197441197475%_
                                                           _%tl197443197477%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197408197454%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197408197454%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197417197554%_))
                                              (let ((_%__splice197899197900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl197417197554%_
                                                        '0))))
                                                (let ((_%tl197443197477%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice197899197900%_
                                                          '1)))
                                                      (_%target197441197475%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice197899197900%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197443197477%_))
                                                      (_%__match197958197959%_
                                                       _%e197412197541%_
                                                       _%hd197413197544%_
                                                       _%tl197414197546%_
                                                       _%e197415197549%_
                                                       _%hd197416197552%_
                                                       _%tl197417197554%_
                                                       _%__splice197899197900%_
                                                       _%target197441197475%_
                                                       _%tl197443197477%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197408197454%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197408197454%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197417197554%_))
                                      (let ((_%__splice197899197900%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl197417197554%_
                                                '0))))
                                        (let ((_%tl197443197477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197899197900%_
                                                  '1)))
                                              (_%target197441197475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197899197900%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197443197477%_))
                                              (_%__match197958197959%_
                                               _%e197412197541%_
                                               _%hd197413197544%_
                                               _%tl197414197546%_
                                               _%e197415197549%_
                                               _%hd197416197552%_
                                               _%tl197417197554%_
                                               _%__splice197899197900%_
                                               _%target197441197475%_
                                               _%tl197443197477%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197408197454%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197408197454%_))))))
                          (let () (declare (not safe)) (_%g197408197454%_)))))
                  (let () (declare (not safe)) (_%g197408197454%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self193783197364%_ _%ctx197366%_ _%stx197367%_ _%args197368%_)
        (let* ((_%self197370%_ _%self193783197364%_)
               (_%self197372%_ _%self197370%_))
          (if (let ((__method198540
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self197372%_ 'check-arguments))))
                (if __method198540
                    (let ()
                      (declare (not safe))
                      (__method198540
                       _%self197372%_
                       _%ctx197366%_
                       _%stx197367%_
                       _%args197368%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self197372%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature197382%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197372%_ '2 '#f '#f)))
                     (_%signature197384%_ _%signature197382%_)
                     (_%$e197394%_
                      (if _%signature197384%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature197384%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e197394%_
                    ((lambda (_%unchecked197397%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked197397%_))
                           (let ((__tmp198562
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked197397%_
                                                          '()))
                                              (map (lambda (_%g197398197400%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx197366%_
                                                        _%g197398197400%_)))
                                                   _%args197368%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp198562
                              _%stx197367%_
                              _%ctx197366%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx197366%_ _%stx197367%_))))
                     _%$e197394%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx197366%_ _%stx197367%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx197366%_ _%stx197367%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass197824 __method-table197825)
        (let ((__check-arguments197826
               (let ((__tmp198563
                      (lambda ()
                        (let ((__method197827
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197825
                                  'check-arguments
                                  '#f))))
                          (if __method197827
                              __method197827
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198563))))
          (lambda (_%self193783197364%_
                   _%ctx197366%_
                   _%stx197367%_
                   _%args197368%_)
            (let* ((_%self197370%_ _%self193783197364%_)
                   (_%self197372%_ _%self197370%_))
              (if ((force __check-arguments197826)
                   _%self197372%_
                   _%ctx197366%_
                   _%stx197367%_
                   _%args197368%_)
                  (let* ((_%signature197382%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self197372%_
                             '2
                             '#f
                             '#f)))
                         (_%signature197384%_ _%signature197382%_)
                         (_%$e197394%_
                          (if _%signature197384%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature197384%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e197394%_
                        ((lambda (_%unchecked197397%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked197397%_))
                               (let ((__tmp198564
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked197397%_
                                                              '()))
                                                  (map (lambda (_%g197398197400%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx197366%_
                                                            _%g197398197400%_)))
                                                       _%args197368%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp198564
                                  _%stx197367%_
                                  _%ctx197366%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx197366%_
                                  _%stx197367%_))))
                         _%$e197394%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx197366%_ _%stx197367%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx197366%_ _%stx197367%_))))))))
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
      (lambda (_%self193784197113%_ _%ctx197115%_ _%stx197116%_ _%args197117%_)
        (let* ((_%self197119%_ _%self193784197113%_)
               (_%self197121%_ _%self197119%_)
               (_%signature197130197132%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197121%_ '2 '#f '#f))))
          (if _%signature197130197132%_
              (let* ((_%signature197135%_ _%signature197130197132%_)
                     (_%argument-types197136197138%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature197135%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types197136197138%_
                    (let* ((_%argument-types197141%_
                            _%argument-types197136197138%_)
                           (_%argument-types197146%_
                            (let ((__tmp198565
                                   (lambda (_%t197144%_)
                                     (if _%t197144%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx197116%_
                                            _%t197144%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp198565
                               _%argument-types197141%_))))
                      (let _%loop197148%_ ((_%rest-args197150%_ _%args197117%_)
                                           (_%rest-types197151%_
                                            _%argument-types197146%_)
                                           (_%result197152%_ '#t))
                        (let* ((_%rest-args197153197161%_ _%rest-args197150%_)
                               (_%else197155197169%_
                                (lambda () _%result197152%_))
                               (_%K197157197230%_
                                (lambda (_%rest-args197172%_ _%arg197173%_)
                                  (let* ((_%rest-types197174197185%_
                                          _%rest-types197151%_)
                                         (_%E197178197189%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types197174197185%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K197181197218%_
                                           (lambda (_%rest-types197215%_
                                                    _%type197216%_)
                                             (_%loop197148%_
                                              _%rest-args197172%_
                                              _%rest-types197215%_
                                              (if (gxc#check-expression-type!
                                                   _%stx197116%_
                                                   _%arg197173%_
                                                   _%type197216%_)
                                                  _%result197152%_
                                                  '#f))))
                                          (_%K197180197209%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx197116%_
                                                _%argument-types197146%_))))
                                          (_%K197179197199%_
                                           (lambda (_%tail-type197193%_)
                                             (if (let ((__tmp198566
                                                        (lambda (_%g197194197196%_)
                                                          (gxc#check-expression-type!
                                                           _%stx197116%_
                                                           _%g197194197196%_
                                                           _%tail-type197193%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp198566
                                                    _%rest-args197172%_))
                                                 _%result197152%_
                                                 '#f))))
                                      (let ((_%try-match197176197212%_
                                             (lambda ()
                                               (if (null? _%rest-types197174197185%_)
                                                   (_%K197180197209%_)
                                                   (let ((_%tail-type197202%_
                                                          _%rest-types197174197185%_))
                                                     (_%K197179197199%_
                                                      _%tail-type197202%_))))))
                                        (if (pair? _%rest-types197174197185%_)
                                            (let ((_%tl197183197223%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types197174197185%_)))
                                                  (_%hd197182197221%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types197174197185%_))))
                                              (let ((_%type197226%_
                                                     _%hd197182197221%_)
                                                    (_%rest-types197228%_
                                                     _%tl197183197223%_))
                                                (_%K197181197218%_
                                                 _%rest-types197228%_
                                                 _%type197226%_)))
                                            (_%try-match197176197212%_))))))))
                          (if (pair? _%rest-args197153197161%_)
                              (let ((_%hd197158197233%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args197153197161%_)))
                                    (_%tl197159197235%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args197153197161%_))))
                                (let* ((_%arg197238%_ _%hd197158197233%_)
                                       (_%rest-args197240%_
                                        _%tl197159197235%_))
                                  (_%K197157197230%_
                                   _%rest-args197240%_
                                   _%arg197238%_)))
                              (_%else197155197169%_)))))
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
      (lambda (_%self193785196922%_ _%ctx196924%_ _%stx196925%_ _%args196926%_)
        (let* ((_%self196928%_ _%self193785196922%_)
               (_%self196930%_ _%self196928%_)
               (_%g196940196950%_
                (lambda (_%g196941196947%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196941196947%_))))
               (_%g196939196988%_
                (lambda (_%g196941196953%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196941196953%_))
                      (let ((_%e196943196955%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196941196953%_))))
                        (let ((_%hd196944196958%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196943196955%_)))
                              (_%tl196945196960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196943196955%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196945196960%_))
                              ((lambda (_%L196963%_)
                                 (let* ((_%klass196975%_
                                         (let ((__tmp198567
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self196930%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196925%_
                                            __tmp198567)))
                                        (_%object196977%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx196924%_
                                            _%L196963%_)))
                                        (_%instance?196982%_
                                         (let ((_%$e196979%_
                                                (gxc#expression-type?
                                                 _%object196977%_
                                                 _%klass196975%_)))
                                           (if _%$e196979%_
                                               _%$e196979%_
                                               (gxc#expression-type?
                                                _%L196963%_
                                                _%klass196975%_)))))
                                   (if _%instance?196982%_
                                       (let ((__tmp198568
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object196977%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L196963%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object196977%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198568
                                          _%stx196925%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx196924%_
                                          _%stx196925%_)))))
                               _%hd196944196958%_)
                              (_%g196940196950%_ _%g196941196953%_))))
                      (_%g196940196950%_ _%g196941196953%_)))))
          (_%g196939196988%_ _%args196926%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self193786196716%_ _%ctx196718%_ _%stx196719%_ _%args196720%_)
        (let* ((_%self196722%_ _%self193786196716%_)
               (_%self196724%_ _%self196722%_)
               (_%g196734196744%_
                (lambda (_%g196735196741%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196735196741%_))))
               (_%g196733196797%_
                (lambda (_%g196735196747%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196735196747%_))
                      (let ((_%e196737196749%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196735196747%_))))
                        (let ((_%hd196738196752%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196737196749%_)))
                              (_%tl196739196754%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196737196749%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196739196754%_))
                              ((lambda (_%L196757%_)
                                 (let* ((_%klass196769%_
                                         (let ((__tmp198569
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self196724%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196719%_
                                            __tmp198569)))
                                        (_%object196771%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx196718%_
                                            _%L196757%_)))
                                        (_%instance?196776%_
                                         (let ((_%$e196773%_
                                                (gxc#expression-type?
                                                 _%object196771%_
                                                 _%klass196769%_)))
                                           (if _%$e196773%_
                                               _%$e196773%_
                                               (gxc#expression-type?
                                                _%L196757%_
                                                _%klass196769%_))))
                                        (_%klass196779%_ _%klass196769%_))
                                   (if _%instance?196776%_
                                       (let ((__tmp198570
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object196771%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L196757%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object196771%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198570
                                          _%stx196719%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass196779%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp198571
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass196779%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object196771%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198571
                                              _%stx196719%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass196779%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198572
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass196779%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object196771%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198572
                                                  _%stx196719%_))
                                               (let ((__tmp198573
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self196724%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object196771%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198573
                                                  _%stx196719%_)))))))
                               _%hd196738196752%_)
                              (_%g196734196744%_ _%g196735196747%_))))
                      (_%g196734196744%_ _%g196735196747%_)))))
          (_%g196733196797%_ _%args196720%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx196379%_)
        (let* ((_%__stx197968197969%_ _%stx196379%_)
               (_%g196384196425%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197968197969%_)))))
          (let ((_%__kont197970197971%_ (lambda () '#t))
                (_%__kont197972197973%_ (lambda () '#t))
                (_%__kont197974197975%_
                 (lambda (_%L196493%_ _%L196494%_)
                   (let ((_%rator-type196515196517%_
                          (let ((__tmp198574
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L196494%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp198574))))
                     (if _%rator-type196515196517%_
                         (let* ((_%rator-type196520%_
                                 _%rator-type196515196517%_)
                                (_%rator-signature196521196523%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type196520%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type196520%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature196521196523%_
                               (let* ((_%rator-signature196526%_
                                       _%rator-signature196521196523%_)
                                      (_%rator-effect196527196529%_
                                       (if _%rator-signature196526%_
                                           (##direct-structure-ref
                                            _%rator-signature196526%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect196527196529%_
                                     (let ((_%rator-effect196532%_
                                            _%rator-effect196527196529%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect196532%_)
                                               (equal? '(alloc)
                                                       _%rator-effect196532%_))
                                           (let ((__tmp198575
                                                  (let ((__tmp198576
                                                         (lambda (_%g196537196540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g196538196542%_)
                   (cons _%g196537196540%_ _%g196538196542%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp198576
                                                     '()
                                                     _%L196493%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp198575))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont197978197979%_ (lambda () '#f)))
            (let ((_%__match198057198058%_
                   (lambda (_%e196400196437%_
                            _%hd196401196440%_
                            _%tl196402196442%_
                            _%e196403196445%_
                            _%hd196404196448%_
                            _%tl196405196450%_
                            _%e196406196453%_
                            _%hd196407196456%_
                            _%tl196408196458%_
                            _%e196409196461%_
                            _%hd196410196464%_
                            _%tl196411196466%_
                            _%__splice197976197977%_
                            _%target196412196469%_
                            _%tl196414196471%_)
                     (letrec ((_%loop196415196474%_
                               (lambda (_%hd196413196477%_
                                        _%rand196419196479%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd196413196477%_))
                                     (let ((_%e196416196482%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd196413196477%_))))
                                       (let ((_%lp-tl196418196487%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e196416196482%_)))
                                             (_%lp-hd196417196485%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e196416196482%_))))
                                         (_%loop196415196474%_
                                          _%lp-tl196418196487%_
                                          (cons _%lp-hd196417196485%_
                                                _%rand196419196479%_))))
                                     (let ((_%rand196420196490%_
                                            (reverse _%rand196419196479%_)))
                                       (_%__kont197974197975%_
                                        _%rand196420196490%_
                                        _%hd196410196464%_))))))
                       (_%loop196415196474%_ _%target196412196469%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197968197969%_))
                  (let ((_%e196386196573%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197968197969%_))))
                    (let ((_%tl196388196578%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196386196573%_)))
                          (_%hd196387196576%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196386196573%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd196387196576%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd196387196576%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196388196578%_))
                                  (let ((_%e196389196581%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196388196578%_))))
                                    (let ((_%tl196391196586%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196389196581%_)))
                                          (_%hd196390196584%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196389196581%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196391196586%_))
                                          (_%__kont197970197971%_)
                                          (_%__kont197978197979%_))))
                                  (_%__kont197978197979%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd196387196576%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196388196578%_))
                                      (let ((_%e196395196558%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196388196578%_))))
                                        (let ((_%tl196397196563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196395196558%_)))
                                              (_%hd196396196561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196395196558%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196397196563%_))
                                              (_%__kont197972197973%_)
                                              (_%__kont197978197979%_))))
                                      (_%__kont197978197979%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd196387196576%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196388196578%_))
                                          (let ((_%e196403196445%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196388196578%_))))
                                            (let ((_%tl196405196450%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196403196445%_)))
                                                  (_%hd196404196448%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196403196445%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196404196448%_))
                                                  (let ((_%e196406196453%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd196404196448%_))))
                                                    (let ((_%tl196408196458%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196406196453%_)))
                                                          (_%hd196407196456%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196406196453%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd196407196456%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd196407196456%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196408196458%_))
                          (let ((_%e196409196461%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196408196458%_))))
                            (let ((_%tl196411196466%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196409196461%_)))
                                  (_%hd196410196464%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196409196461%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196411196466%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196405196450%_))
                                      (let ((_%__splice197976197977%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl196405196450%_
                                                '0))))
                                        (let ((_%tl196414196471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197976197977%_
                                                  '1)))
                                              (_%target196412196469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197976197977%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196414196471%_))
                                              (_%__match198057198058%_
                                               _%e196386196573%_
                                               _%hd196387196576%_
                                               _%tl196388196578%_
                                               _%e196403196445%_
                                               _%hd196404196448%_
                                               _%tl196405196450%_
                                               _%e196406196453%_
                                               _%hd196407196456%_
                                               _%tl196408196458%_
                                               _%e196409196461%_
                                               _%hd196410196464%_
                                               _%tl196411196466%_
                                               _%__splice197976197977%_
                                               _%target196412196469%_
                                               _%tl196414196471%_)
                                              (_%__kont197978197979%_))))
                                      (_%__kont197978197979%_))
                                  (_%__kont197978197979%_))))
                          (_%__kont197978197979%_))
                      (_%__kont197978197979%_))
                  (_%__kont197978197979%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont197978197979%_))))
                                          (_%__kont197978197979%_))
                                      (_%__kont197978197979%_))))
                          (_%__kont197978197979%_))))
                  (_%__kont197978197979%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx196374%_ _%klass196375%_)
        (let ((_%expr-type196377%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx196374%_))))
          (if _%expr-type196377%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type196377%_ _%klass196375%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx196352%_ _%expr196353%_ _%type196354%_)
        (if (not _%type196354%_)
            '#f
            (let ((_%$e196357%_
                   (eq? (##structure-ref _%type196354%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e196357%_
                  _%$e196357%_
                  (let ((_%expr-type196361%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr196353%_))))
                    (if (not _%expr-type196361%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type196361%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e196365%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type196361%_
                                      'gxc#!abort::t))))
                              (if _%$e196365%_
                                  _%$e196365%_
                                  (let ((_%$e196368%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type196361%_
                                            _%type196354%_))))
                                    (if _%$e196368%_
                                        _%$e196368%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type196354%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type196354%_
                                                   _%expr-type196361%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx196352%_
                                                   _%expr196353%_
                                                   _%expr-type196361%_
                                                   _%type196354%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self193787196164%_ _%ctx196166%_ _%stx196167%_ _%args196168%_)
        (let* ((_%self196170%_ _%self193787196164%_)
               (_%self196172%_ _%self196170%_)
               (_%klass196182%_
                (let ((__tmp198577
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self196172%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx196167%_ __tmp198577)))
               (_%fields196184%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass196182%_
                           '5
                           '#f
                           '#f))))
               (_%args196190%_
                (map (lambda (_%g196185196187%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx196166%_ _%g196185196187%_)))
                     _%args196168%_))
               (_%inline-make-object196192%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self196172%_
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
                           _%self196172%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields196184%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass196195%_ _%klass196182%_)
               (_%$e196209%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass196195%_ '6 '#f '#f))))
          (if _%$e196209%_
              ((lambda (_%ctor196212%_)
                 (let ((_%$obj196214%_
                        (let ((__tmp198578
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp198578)))
                       (_%ctor-impl196215%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass196195%_
                           _%ctor196212%_))))
                   (let ((__tmp198579
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj196214%_ '())
                                                  (cons _%inline-make-object196192%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl196215%_
                                                            (let ((__tmp198580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl196215%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj196214%_ '()))
                                             _%args196190%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp198580
                       _%stx196167%_
                       _%ctx196166%_))
                    (let ((_%$ctor196217%_
                           (let ((__tmp198581
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp198581))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor196217%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self196172%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj196214%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor196212%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor196217%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor196217%_ '()))
                              (cons (cons '%#ref (cons _%$obj196214%_ '()))
                                    _%args196190%_)))
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
                             _%self196172%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor196212%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj196214%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp198579 _%stx196167%_))))
               _%$e196209%_)
              (let ((_%$e196219%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass196195%_
                        '10
                        '#f
                        '#f))))
                (if _%$e196219%_
                    ((lambda (_%metaclass196222%_)
                       (let* ((_%$obj196224%_
                               (let ((__tmp198582
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198582)))
                              (_%metakons196226%_
                               (let ((__tmp198583
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx196167%_
                                         _%metaclass196222%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp198583
                                  'instance-init!)))
                              (__tmp198584
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj196224%_
                                                             '())
                                                       (cons _%inline-make-object196192%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons196226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp198585
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons196226%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self196172%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj196224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args196190%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp198585
                            _%stx196167%_
                            _%ctx196166%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self196172%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj196224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args196190%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj196224%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp198584 _%stx196167%_)))
                     _%$e196219%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass196195%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp198586
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args196190%_))))
                              (declare (not safe))
                              (##fx= __tmp198586 _%fields196184%_))
                            (let ((__tmp198587
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self196172%_
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
                                              _%self196172%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args196190%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp198587
                               _%stx196167%_))
                            (let ((__tmp198589
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self196172%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp198588
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass196195%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx196167%_
                               __tmp198589
                               __tmp198588)))
                        (let ((_%$obj196231%_
                               (let ((__tmp198590
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198590))))
                          (let _%lp196233%_ ((_%rest196235%_ _%args196190%_)
                                             (_%initializers196236%_ '()))
                            (let* ((_%__stx198060198061%_ _%rest196235%_)
                                   (_%g196240196261%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx198060198061%_)))))
                              (let ((_%__kont198062198063%_
                                     (lambda (_%L196315%_
                                              _%L196316%_
                                              _%L196317%_)
                                       (let* ((_%slot196344%_
                                               (let ((__tmp198591
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L196317%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp198591)))
                                              (_%off196346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass196195%_
                                                  _%slot196344%_))))
                                         (if _%off196346%_
                                             (_%lp196233%_
                                              _%L196315%_
                                              (cons (cons _%off196346%_
                                                          _%L196316%_)
                                                    _%initializers196236%_))
                                             (let ((__tmp198592
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self196172%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx196167%_
                                                __tmp198592
                                                _%slot196344%_))))))
                                    (_%__kont198064198065%_
                                     (lambda ()
                                       (let ((__tmp198593
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj196231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object196192%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp198596
                                     (cons (cons '%#ref
                                                 (cons _%$obj196231%_ '()))
                                           '()))
                                    (__tmp198594
                                     (let ((__tmp198595
                                            (lambda (_%i196275%_ _%r196276%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self196172%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i196275%_) '()))
                              (cons (cons '%#ref (cons _%$obj196231%_ '()))
                                    (cons (cdr _%i196275%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r196276%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp198595
                                        '()
                                        _%initializers196236%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp198596 __tmp198594)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198593
                                          _%stx196167%_))))
                                    (_%__kont198066198067%_
                                     (lambda ()
                                       (let ((__tmp198597
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj196231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object196192%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj196231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args196190%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj196231%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198597
                                          _%stx196167%_)))))
                                (let* ((_%g196238196278%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx198060198061%_))
                                              (_%__kont198064198065%_)
                                              (_%__kont198066198067%_))))
                                       (_%__match198097198098%_
                                        (lambda (_%e196245196283%_
                                                 _%hd196246196286%_
                                                 _%tl196247196288%_
                                                 _%e196248196291%_
                                                 _%hd196249196294%_
                                                 _%tl196250196296%_
                                                 _%e196251196299%_
                                                 _%hd196252196302%_
                                                 _%tl196253196304%_
                                                 _%e196254196307%_
                                                 _%hd196255196310%_
                                                 _%tl196256196312%_)
                                          (let ((_%L196315%_
                                                 _%tl196256196312%_)
                                                (_%L196316%_
                                                 _%hd196255196310%_)
                                                (_%L196317%_
                                                 _%hd196252196302%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L196317%_))
                                                (_%__kont198062198063%_
                                                 _%L196315%_
                                                 _%L196316%_
                                                 _%L196317%_)
                                                (_%__kont198066198067%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx198060198061%_))
                                      (let ((_%e196245196283%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx198060198061%_))))
                                        (let ((_%tl196247196288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196245196283%_)))
                                              (_%hd196246196286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196245196283%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd196246196286%_))
                                              (let ((_%e196248196291%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd196246196286%_))))
                                                (let ((_%tl196250196296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196248196291%_)))
                                                      (_%hd196249196294%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196248196291%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd196249196294%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd196249196294%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196250196296%_))
                      (let ((_%e196251196299%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196250196296%_))))
                        (let ((_%tl196253196304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196251196299%_)))
                              (_%hd196252196302%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196251196299%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196253196304%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196247196288%_))
                                  (let ((_%e196254196307%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196247196288%_))))
                                    (let ((_%tl196256196312%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196254196307%_)))
                                          (_%hd196255196310%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196254196307%_))))
                                      (_%__match198097198098%_
                                       _%e196245196283%_
                                       _%hd196246196286%_
                                       _%tl196247196288%_
                                       _%e196248196291%_
                                       _%hd196249196294%_
                                       _%tl196250196296%_
                                       _%e196251196299%_
                                       _%hd196252196302%_
                                       _%tl196253196304%_
                                       _%e196254196307%_
                                       _%hd196255196310%_
                                       _%tl196256196312%_)))
                                  (_%__kont198066198067%_))
                              (_%__kont198066198067%_))))
                      (_%__kont198066198067%_))
                  (_%__kont198066198067%_))
              (_%__kont198066198067%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198066198067%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g196238196278%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self193788195945%_ _%ctx195947%_ _%stx195948%_ _%args195949%_)
        (let* ((_%self195951%_ _%self193788195945%_)
               (_%self195953%_ _%self195951%_)
               (_%arguments-ok?195963%_
                (let ((__method198541
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self195953%_ 'check-arguments))))
                  (if __method198541
                      (let ()
                        (declare (not safe))
                        (__method198541
                         _%self195953%_
                         _%ctx195947%_
                         _%stx195948%_
                         _%args195949%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self195953%_
                                 'check-arguments))
                        '#!void))))
               (_%g195965195975%_
                (lambda (_%g195966195972%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195966195972%_))))
               (_%g195964196039%_
                (lambda (_%g195966195978%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195966195978%_))
                      (let ((_%e195968195980%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195966195978%_))))
                        (let ((_%hd195969195983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195968195980%_)))
                              (_%tl195970195985%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195968195980%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195970195985%_))
                              ((lambda (_%L195988%_)
                                 (let* ((_%klass196001%_
                                         (let ((__tmp198598
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195953%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195948%_
                                            __tmp198598)))
                                        (_%field196003%_
                                         (let ((__tmp198599
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195953%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass196001%_
                                            __tmp198599)))
                                        (_%object196005%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195947%_
                                            _%L195988%_)))
                                        (_%klass196008%_ _%klass196001%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass196008%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp198600
                                              (cons (if (or _%arguments-ok?195963%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195953%_
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
                                 _%self195953%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field196003%_ '()))
                        (cons _%object196005%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198600
                                          _%stx195948%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass196008%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp198601
                                                  (cons (if (or _%arguments-ok?195963%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195953%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195953%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field196003%_ '()))
                            (cons _%object196005%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198601
                                              _%stx195948%_))
                                           (let ((_%$e196027%_
                                                  (let ((__tmp198602
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self195953%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass196008%_
                                                     __tmp198602))))
                                             (if _%$e196027%_
                                                 ((lambda (_%klass196030%_)
                                                    (let ((__tmp198603
                                                           (cons (if (or _%arguments-ok?195963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195953%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self195953%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field196003%_ '()))
                                     (cons _%object196005%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp198603 _%stx195948%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e196027%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self195953%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp198604
                                                            (let ((_%$obj196036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp198605
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp198605))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj196036%_ '())
                                              (cons _%object196005%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass196008%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj196036%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195953%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field196003%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj196036%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?195963%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj196036%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self195953%_
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
                                                             _%self195953%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj196036%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self195953%_
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
               (gxc#xform-wrap-source __tmp198604 _%stx195948%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp198606
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object196005%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195953%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp198606 _%stx195948%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd195969195983%_)
                              (_%g195965195975%_ _%g195966195978%_))))
                      (_%g195965195975%_ _%g195966195978%_)))))
          (_%g195964196039%_ _%args195949%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass197828 __method-table197829)
        (let ((__check-arguments197830
               (let ((__tmp198607
                      (lambda ()
                        (let ((__method197831
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197829
                                  'check-arguments
                                  '#f))))
                          (if __method197831
                              __method197831
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198607)))
              (__slot197832
               (let ((__slot197833
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass197828 'slot))))
                 (if __slot197833
                     __slot197833
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self193788195945%_
                   _%ctx195947%_
                   _%stx195948%_
                   _%args195949%_)
            (let* ((_%self195951%_ _%self193788195945%_)
                   (_%self195953%_ _%self195951%_)
                   (_%arguments-ok?195963%_
                    ((force __check-arguments197830)
                     _%self195953%_
                     _%ctx195947%_
                     _%stx195948%_
                     _%args195949%_))
                   (_%g195965195975%_
                    (lambda (_%g195966195972%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g195966195972%_))))
                   (_%g195964196039%_
                    (lambda (_%g195966195978%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g195966195978%_))
                          (let ((_%e195968195980%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g195966195978%_))))
                            (let ((_%hd195969195983%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195968195980%_)))
                                  (_%tl195970195985%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195968195980%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl195970195985%_))
                                  ((lambda (_%L195988%_)
                                     (let* ((_%klass196001%_
                                             (let ((__tmp198608
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195953%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx195948%_
                                                __tmp198608)))
                                            (_%field196003%_
                                             (let ((__tmp198609
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195953%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass196001%_
                                                __tmp198609)))
                                            (_%object196005%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx195947%_
                                                _%L195988%_)))
                                            (_%klass196008%_ _%klass196001%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass196008%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp198610
                                                  (cons (if (or _%arguments-ok?195963%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195953%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195953%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field196003%_ '()))
                            (cons _%object196005%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198610
                                              _%stx195948%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass196008%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198611
                                                      (cons (if (or _%arguments-ok?195963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self195953%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195953%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field196003%_ '()))
                                (cons _%object196005%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198611
                                                  _%stx195948%_))
                                               (let ((_%$e196027%_
                                                      (let ((__tmp198612
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self195953%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass196008%_ __tmp198612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e196027%_
                                                     ((lambda (_%klass196030%_)
                                                        (let ((__tmp198613
                                                               (cons (if (or _%arguments-ok?195963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195953%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self195953%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field196003%_ '()))
                                         (cons _%object196005%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp198613 _%stx195948%_)))
              _%$e196027%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self195953%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp198614
                                                                (let ((_%$obj196036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp198615
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198615))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj196036%_ '())
                                                  (cons _%object196005%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass196008%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj196036%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195953%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field196003%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj196036%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?195963%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj196036%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195953%_
                               __slot197832
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
                        (##unchecked-structure-ref _%self195953%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj196036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195953%_
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
                   (gxc#xform-wrap-source __tmp198614 _%stx195948%_))
                 (let ((__tmp198616
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object196005%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195953%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp198616 _%stx195948%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd195969195983%_)
                                  (_%g195965195975%_ _%g195966195978%_))))
                          (_%g195965195975%_ _%g195966195978%_)))))
              (_%g195964196039%_ _%args195949%_))))))
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
      (lambda (_%self193789195707%_ _%ctx195709%_ _%stx195710%_ _%args195711%_)
        (let* ((_%self195713%_ _%self193789195707%_)
               (_%self195715%_ _%self195713%_)
               (_%arguments-ok?195725%_
                (let ((__method198542
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self195715%_ 'check-arguments))))
                  (if __method198542
                      (let ()
                        (declare (not safe))
                        (__method198542
                         _%self195715%_
                         _%ctx195709%_
                         _%stx195710%_
                         _%args195711%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self195715%_
                                 'check-arguments))
                        '#!void))))
               (_%g195727195741%_
                (lambda (_%g195728195738%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195728195738%_))))
               (_%g195726195820%_
                (lambda (_%g195728195744%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195728195744%_))
                      (let ((_%e195731195746%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195728195744%_))))
                        (let ((_%hd195732195749%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195731195746%_)))
                              (_%tl195733195751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195731195746%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195733195751%_))
                              (let ((_%e195734195754%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195733195751%_))))
                                (let ((_%hd195735195757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195734195754%_)))
                                      (_%tl195736195759%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195734195754%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195736195759%_))
                                      ((lambda (_%L195762%_ _%L195763%_)
                                         (let* ((_%klass195779%_
                                                 (let ((__tmp198617
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195715%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx195710%_
                                                    __tmp198617)))
                                                (_%field195781%_
                                                 (let ((__tmp198618
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195715%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass195779%_
                                                    __tmp198618)))
                                                (_%object195783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx195709%_
                                                    _%L195763%_)))
                                                (_%value195785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx195709%_
                                                    _%L195762%_)))
                                                (_%klass195788%_
                                                 _%klass195779%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195788%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198619
                                                      (cons (if (or _%arguments-ok?195725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self195715%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195715%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field195781%_ '()))
                                (cons _%object195783%_
                                      (cons _%value195785%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198619
                                                  _%stx195710%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass195788%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp198620
                                                          (cons (if (or _%arguments-ok?195725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self195715%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195715%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195781%_ '()))
                                    (cons _%object195783%_
                                          (cons _%value195785%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp198620
                                                      _%stx195710%_))
                                                   (let ((_%$e195808%_
                                                          (let ((__tmp198621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195715%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass195788%_
                     __tmp198621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e195808%_
                                                         ((lambda (_%klass195811%_)
                                                            (let ((__tmp198622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?195725%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195715%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self195715%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field195781%_ '()))
                                             (cons _%object195783%_
                                                   (cons _%value195785%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198622 _%stx195710%_)))
                  _%$e195808%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self195715%_ '4 '#f '#f))
                     (let ((__tmp198623
                            (let ((_%$obj195817%_
                                   (let ((__tmp198624
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp198624))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj195817%_ '())
                                                      (cons _%object195783%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass195788%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj195817%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self195715%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field195781%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj195817%_
                                                              '()))
                                                  (cons _%value195785%_
                                                        '())))))
                          (cons (if _%arguments-ok?195725%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self195715%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value195785%_ '())))))
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
                             _%self195715%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj195817%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195715%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value195785%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp198623 _%stx195710%_))
                     (let ((__tmp198625
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object195783%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self195715%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value195785%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp198625
                        _%stx195710%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd195735195757%_
                                       _%hd195732195749%_)
                                      (_%g195727195741%_ _%g195728195744%_))))
                              (_%g195727195741%_ _%g195728195744%_))))
                      (_%g195727195741%_ _%g195728195744%_)))))
          (_%g195726195820%_ _%args195711%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass197834 __method-table197835)
        (let ((__check-arguments197836
               (let ((__tmp198626
                      (lambda ()
                        (let ((__method197837
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197835
                                  'check-arguments
                                  '#f))))
                          (if __method197837
                              __method197837
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198626))))
          (lambda (_%self193789195707%_
                   _%ctx195709%_
                   _%stx195710%_
                   _%args195711%_)
            (let* ((_%self195713%_ _%self193789195707%_)
                   (_%self195715%_ _%self195713%_)
                   (_%arguments-ok?195725%_
                    ((force __check-arguments197836)
                     _%self195715%_
                     _%ctx195709%_
                     _%stx195710%_
                     _%args195711%_))
                   (_%g195727195741%_
                    (lambda (_%g195728195738%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g195728195738%_))))
                   (_%g195726195820%_
                    (lambda (_%g195728195744%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g195728195744%_))
                          (let ((_%e195731195746%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g195728195744%_))))
                            (let ((_%hd195732195749%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195731195746%_)))
                                  (_%tl195733195751%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195731195746%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195733195751%_))
                                  (let ((_%e195734195754%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195733195751%_))))
                                    (let ((_%hd195735195757%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195734195754%_)))
                                          (_%tl195736195759%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195734195754%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl195736195759%_))
                                          ((lambda (_%L195762%_ _%L195763%_)
                                             (let* ((_%klass195779%_
                                                     (let ((__tmp198627
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195715%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx195710%_
                                                        __tmp198627)))
                                                    (_%field195781%_
                                                     (let ((__tmp198628
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195715%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass195779%_
                                                        __tmp198628)))
                                                    (_%object195783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195709%_
                                                        _%L195763%_)))
                                                    (_%value195785%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195709%_
                                                        _%L195762%_)))
                                                    (_%klass195788%_
                                                     _%klass195779%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass195788%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp198629
                                                          (cons (if (or _%arguments-ok?195725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self195715%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195715%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195781%_ '()))
                                    (cons _%object195783%_
                                          (cons _%value195785%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp198629
                                                      _%stx195710%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass195788%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp198630
                                                              (cons (if (or _%arguments-ok?195725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self195715%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195715%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field195781%_ '()))
                                        (cons _%object195783%_
                                              (cons _%value195785%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp198630 _%stx195710%_))
               (let ((_%$e195808%_
                      (let ((__tmp198631
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195715%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass195788%_
                         __tmp198631))))
                 (if _%$e195808%_
                     ((lambda (_%klass195811%_)
                        (let ((__tmp198632
                               (cons (if (or _%arguments-ok?195725%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self195715%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self195715%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field195781%_
                                                             '()))
                                                 (cons _%object195783%_
                                                       (cons _%value195785%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp198632 _%stx195710%_)))
                      _%$e195808%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195715%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp198633
                                (let ((_%$obj195817%_
                                       (let ((__tmp198634
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp198634))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj195817%_
                                                                '())
                                                          (cons _%object195783%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass195788%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj195817%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self195715%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field195781%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value195785%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?195725%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj195817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self195715%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value195785%_ '())))))
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
                                 _%self195715%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj195817%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195715%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value195785%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp198633 _%stx195710%_))
                         (let ((__tmp198635
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object195783%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195715%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value195785%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp198635
                            _%stx195710%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd195735195757%_
                                           _%hd195732195749%_)
                                          (_%g195727195741%_
                                           _%g195728195744%_))))
                                  (_%g195727195741%_ _%g195728195744%_))))
                          (_%g195727195741%_ _%g195728195744%_)))))
              (_%g195726195820%_ _%args195711%_))))))
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
      (lambda (_%self193790195520%_ _%ctx195522%_ _%stx195523%_ _%args195524%_)
        (let* ((_%self195526%_ _%self193790195520%_)
               (_%self195528%_ _%self195526%_)
               (_%self195537195547%_ _%self195528%_)
               (_%E195539195551%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195537195547%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K195540195561%_
                (lambda (_%inline195554%_ _%dispatch195555%_ _%arity195556%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self195528%_
                         _%args195524%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx195523%_
                         _%arity195556%_)))
                  (if _%inline195554%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp198636 (_%inline195554%_ _%stx195523%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp198636
                           _%stx195523%_
                           _%ctx195522%_)))
                      (if (and _%dispatch195555%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch195555%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch195555%_))
                            (let ((__tmp198637
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch195555%_
                                                           '()))
                                               _%args195524%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp198637
                               _%stx195523%_
                               _%ctx195522%_)))
                          (gxc#!procedure::optimize-call
                           _%self195528%_
                           _%ctx195522%_
                           _%stx195523%_
                           _%args195524%_)))))
               (_%e195541195564%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195537195547%_ '1 '#f '#f)))
               (_%e195542195567%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195537195547%_ '2 '#f '#f)))
               (_%e195543195570%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195537195547%_ '3 '#f '#f)))
               (_%arity195573%_ _%e195543195570%_)
               (_%e195544195575%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195537195547%_ '4 '#f '#f)))
               (_%dispatch195578%_ _%e195544195575%_)
               (_%e195545195580%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195537195547%_ '5 '#f '#f)))
               (_%inline195583%_ _%e195545195580%_))
          (_%K195540195561%_
           _%inline195583%_
           _%dispatch195578%_
           _%arity195573%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self193791195370%_ _%ctx195372%_ _%stx195373%_ _%args195374%_)
        (let* ((_%self195376%_ _%self193791195370%_)
               (_%self195378%_ _%self195376%_)
               (_%$e195392%_
                (let ((__tmp198639
                       (lambda (_%g195387195389%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g195387195389%_
                            _%args195374%_))))
                      (__tmp198638
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self195378%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp198639 __tmp198638))))
          (if _%$e195392%_
              ((lambda (_%clause195395%_)
                 (let ((__method198543
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause195395%_ 'optimize-call))))
                   (if __method198543
                       (let ()
                         (declare (not safe))
                         (__method198543
                          _%clause195395%_
                          _%ctx195372%_
                          _%stx195373%_
                          _%args195374%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause195395%_
                                  'optimize-call))
                         '#!void))))
               _%$e195392%_)
              (let ((__tmp198640
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self195378%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx195373%_
                 __tmp198640))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self193792195108%_ _%ctx195110%_ _%stx195111%_ _%args195112%_)
        (let* ((_%self195114%_ _%self193792195108%_)
               (_%self195116%_ _%self195114%_)
               (_%self195125195134%_ _%self195116%_)
               (_%E195127195138%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195125195134%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K195128195229%_
                (lambda (_%dispatch195141%_ _%table195142%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch195141%_))
                      (let* ((_%g195143195153%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch195141%_)))
                             (_%else195145195161%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch195141%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx195110%_
                                   _%stx195111%_))))
                             (_%K195147195210%_
                              (lambda (_%main195164%_ _%keys195165%_)
                                (let ((_g198641_
                                       (gxc#!kw-lambda-split-args
                                        _%stx195111%_
                                        _%args195112%_)))
                                  (begin
                                    (let ((_g198642_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198641_)
                                                 (##values-length _g198641_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198642_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198642_)))
                                    (let ((_%pargs195167%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198641_ 0)))
                                          (_%kwargs195168%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198641_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main195164%_))
                                        (if _%table195142%_
                                            (let ((_%xargs195176%_
                                                   (map (lambda (_%key195170%_)
                                                          (let ((_%$e195172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key195170%_ _%kwargs195168%_))))
                    (if _%$e195172%_ _%$e195172%_ '(%#ref absent-value))))
                _%keys195165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw195178%_)
                                                 (if (memq (car _%kw195178%_)
                                                           _%keys195165%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx195111%_
                                                        _%keys195165%_
                                                        _%kw195178%_))))
                                               _%kwargs195168%_)
                                              (let ((__tmp198643
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main195164%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs195167%_
                                  _%xargs195176%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp198643
                                                 _%stx195111%_
                                                 _%ctx195110%_)))
                                            (let* ((_%kwt195180%_
                                                    (let ((__tmp198644
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp198644)))
                                                   (_%kwvars195184%_
                                                    (map (lambda (_%_195182%_)
                                                           (let ((__tmp198645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp198645)))
                 _%kwargs195168%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind195189%_
                                                    (map (lambda (_%kw195186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar195187%_)
                   (cons (cons _%kwvar195187%_ '())
                         (cons (cdr _%kw195186%_) '())))
                 _%kwargs195168%_
                 _%kwvars195184%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset195194%_
                                                    (map (lambda (_%kw195191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar195192%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt195180%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw195191%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar195192%_
                                                             '()))
                                                 '()))))))
                 _%kwargs195168%_
                 _%kwvars195184%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs195199%_
                                                    (map (lambda (_%kw195196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar195197%_)
                   (cons (car _%kw195196%_)
                         (cons '%#ref (cons _%kwvar195197%_ '()))))
                 _%kwargs195168%_
                 _%kwvars195184%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs195207%_
                                                    (map (lambda (_%key195201%_)
                                                           (let ((_%$e195203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key195201%_ _%xkwargs195199%_))))
                     (if _%$e195203%_ _%$e195203%_ '(%#ref absent-value))))
                 _%keys195165%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp198646
                                                    (cons '%#let-values
                                                          (cons _%kwbind195189%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt195180%_ '())
                                                      (cons (let ((__tmp198647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs195168%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198647 _%stx195111%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp198648
                                                             (cons (let ((__tmp198649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main195164%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt195180%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs195167%_
                                                       _%xargs195207%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp198649 _%stx195111%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp198648 _%kwset195194%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp198646
                                               _%stx195111%_
                                               _%ctx195110%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g195143195153%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e195148195213%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195143195153%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e195149195216%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195143195153%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e195150195219%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195143195153%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys195222%_ _%e195150195219%_)
                                   (_%e195151195224%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195143195153%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main195227%_ _%e195151195224%_))
                              (_%K195147195210%_
                               _%main195227%_
                               _%keys195222%_))
                            (_%else195145195161%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx195110%_ _%stx195111%_)))))
               (_%e195129195232%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195125195134%_ '1 '#f '#f)))
               (_%e195130195235%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195125195134%_ '2 '#f '#f)))
               (_%e195131195238%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195125195134%_ '3 '#f '#f)))
               (_%table195241%_ _%e195131195238%_)
               (_%e195132195243%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195125195134%_ '4 '#f '#f)))
               (_%dispatch195246%_ _%e195132195243%_))
          (_%K195128195229%_ _%dispatch195246%_ _%table195241%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx194721%_ _%args194722%_)
        (let _%lp194724%_ ((_%rest194726%_ _%args194722%_)
                           (_%pargs194727%_ '())
                           (_%kwargs194728%_ '()))
          (let* ((_%__stx198102198103%_ _%rest194726%_)
                 (_%g194734194786%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx198102198103%_)))))
            (let ((_%__kont198104198105%_
                   (lambda (_%L194965%_ _%L194966%_)
                     (_%lp194724%_
                      _%L194965%_
                      (cons _%L194966%_ _%pargs194727%_)
                      _%kwargs194728%_)))
                  (_%__kont198106198107%_
                   (lambda (_%L194911%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L194911%_ _%pargs194727%_))
                             (reverse _%kwargs194728%_))))
                  (_%__kont198108198109%_
                   (lambda (_%L194858%_ _%L194859%_ _%L194860%_)
                     (let ((_%kw194877%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L194860%_))))
                       (if (assq _%kw194877%_ _%kwargs194728%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx194721%_
                              _%kw194877%_))
                           (_%lp194724%_
                            _%L194858%_
                            _%pargs194727%_
                            (cons (cons _%kw194877%_ _%L194859%_)
                                  _%kwargs194728%_))))))
                  (_%__kont198110198111%_
                   (lambda (_%L194806%_ _%L194807%_)
                     (_%lp194724%_
                      _%L194806%_
                      (cons _%L194807%_ _%pargs194727%_)
                      _%kwargs194728%_)))
                  (_%__kont198112198113%_
                   (lambda ()
                     (values (reverse _%pargs194727%_)
                             (reverse _%kwargs194728%_)))))
              (let ((_%__match198209198210%_
                     (lambda (_%e194765194826%_
                              _%hd194766194829%_
                              _%tl194767194831%_
                              _%e194768194834%_
                              _%hd194769194837%_
                              _%tl194770194839%_
                              _%e194771194842%_
                              _%hd194772194845%_
                              _%tl194773194847%_
                              _%e194774194850%_
                              _%hd194775194853%_
                              _%tl194776194855%_)
                       (let ((_%L194858%_ _%tl194776194855%_)
                             (_%L194859%_ _%hd194775194853%_)
                             (_%L194860%_ _%hd194772194845%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L194860%_))
                             (_%__kont198108198109%_
                              _%L194858%_
                              _%L194859%_
                              _%L194860%_)
                             (_%__kont198110198111%_
                              _%tl194767194831%_
                              _%hd194766194829%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx198102198103%_))
                    (let ((_%e194738194930%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx198102198103%_))))
                      (let ((_%tl194740194935%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194738194930%_)))
                            (_%hd194739194933%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194738194930%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd194739194933%_))
                            (let ((_%e194741194938%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd194739194933%_))))
                              (let ((_%tl194743194943%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194741194938%_)))
                                    (_%hd194742194941%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194741194938%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd194742194941%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd194742194941%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl194743194943%_))
                                            (let ((_%e194744194946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl194743194943%_))))
                                              (let ((_%tl194746194951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e194744194946%_)))
                                                    (_%hd194745194949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e194744194946%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd194745194949%_))
                                                    (let ((_%e194747194954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd194745194949%_))))
                                                      (if (equal? _%e194747194954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194746194951%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194740194935%_))
                          (let ((_%e194748194957%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194740194935%_))))
                            (let ((_%tl194750194962%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194748194957%_)))
                                  (_%hd194749194960%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194748194957%_))))
                              (_%__kont198104198105%_
                               _%tl194750194962%_
                               _%hd194749194960%_)))
                          (_%__kont198110198111%_
                           _%tl194740194935%_
                           _%hd194739194933%_))
                      (_%__kont198110198111%_
                       _%tl194740194935%_
                       _%hd194739194933%_))
                  (if (equal? _%e194747194954%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194746194951%_))
                          (_%__kont198106198107%_ _%tl194740194935%_)
                          (_%__kont198110198111%_
                           _%tl194740194935%_
                           _%hd194739194933%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194746194951%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194740194935%_))
                              (let ((_%e194774194850%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194740194935%_))))
                                (let ((_%tl194776194855%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194774194850%_)))
                                      (_%hd194775194853%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194774194850%_))))
                                  (_%__match198209198210%_
                                   _%e194738194930%_
                                   _%hd194739194933%_
                                   _%tl194740194935%_
                                   _%e194741194938%_
                                   _%hd194742194941%_
                                   _%tl194743194943%_
                                   _%e194744194946%_
                                   _%hd194745194949%_
                                   _%tl194746194951%_
                                   _%e194774194850%_
                                   _%hd194775194853%_
                                   _%tl194776194855%_)))
                              (_%__kont198110198111%_
                               _%tl194740194935%_
                               _%hd194739194933%_))
                          (_%__kont198110198111%_
                           _%tl194740194935%_
                           _%hd194739194933%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194746194951%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl194740194935%_))
                                                            (let ((_%e194774194850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl194740194935%_))))
                      (let ((_%tl194776194855%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194774194850%_)))
                            (_%hd194775194853%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194774194850%_))))
                        (_%__match198209198210%_
                         _%e194738194930%_
                         _%hd194739194933%_
                         _%tl194740194935%_
                         _%e194741194938%_
                         _%hd194742194941%_
                         _%tl194743194943%_
                         _%e194744194946%_
                         _%hd194745194949%_
                         _%tl194746194951%_
                         _%e194774194850%_
                         _%hd194775194853%_
                         _%tl194776194855%_)))
                    (_%__kont198110198111%_
                     _%tl194740194935%_
                     _%hd194739194933%_))
                (_%__kont198110198111%_
                 _%tl194740194935%_
                 _%hd194739194933%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont198110198111%_
                                             _%tl194740194935%_
                                             _%hd194739194933%_))
                                        (_%__kont198110198111%_
                                         _%tl194740194935%_
                                         _%hd194739194933%_))
                                    (_%__kont198110198111%_
                                     _%tl194740194935%_
                                     _%hd194739194933%_))))
                            (_%__kont198110198111%_
                             _%tl194740194935%_
                             _%hd194739194933%_))))
                    (_%__kont198112198113%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self193793194703%_ _%ctx194705%_ _%stx194706%_ _%args194707%_)
        (let* ((_%self194709%_ _%self193793194703%_)
               (_%self194711%_ _%self194709%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx194705%_ _%stx194706%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self194391%_ _%stx194392%_)
        (let* ((_%__stx198218198219%_ _%stx194392%_)
               (_%g194395194435%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198218198219%_)))))
          (let ((_%__kont198220198221%_
                 (lambda (_%L194541%_ _%L194542%_)
                   (let ((_%$e194569%_
                          (member 'return:
                                  (let ((__tmp198650
                                         (lambda (_%g194561194564%_
                                                  _%g194562194566%_)
                                           (cons _%g194561194564%_
                                                 _%g194562194566%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp198650 '() _%L194542%_))
                                  gx#stx-eq?)))
                     (if _%$e194569%_
                         ((lambda (_%tail194572%_)
                            (let ((_%type194574%_
                                   (let ((__tmp198651
                                          (let ((__tmp198652
                                                 (cadr _%tail194572%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp198652))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx194392%_
                                      __tmp198651))))
                              (gxc#check-return-type!
                               _%stx194392%_
                               _%L194541%_
                               _%type194574%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self194391%_
                                 _%L194541%_))))
                          _%$e194569%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self194391%_ _%L194541%_))))))
                (_%__kont198224198225%_
                 (lambda (_%L194464%_ _%L194465%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self194391%_ _%L194464%_)))))
            (let ((_%__match198255198256%_
                   (lambda (_%e194399194485%_
                            _%hd194400194488%_
                            _%tl194401194490%_
                            _%e194402194493%_
                            _%hd194403194496%_
                            _%tl194404194498%_
                            _%e194405194501%_
                            _%hd194406194504%_
                            _%tl194407194506%_
                            _%__splice198222198223%_
                            _%target194408194509%_
                            _%tl194410194511%_)
                     (letrec ((_%loop194411194514%_
                               (lambda (_%hd194409194517%_
                                        _%signature194415194519%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd194409194517%_))
                                     (let ((_%e194412194522%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd194409194517%_))))
                                       (let ((_%lp-tl194414194527%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e194412194522%_)))
                                             (_%lp-hd194413194525%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e194412194522%_))))
                                         (_%loop194411194514%_
                                          _%lp-tl194414194527%_
                                          (cons _%lp-hd194413194525%_
                                                _%signature194415194519%_))))
                                     (let ((_%signature194416194530%_
                                            (reverse _%signature194415194519%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl194404194498%_))
                                           (let ((_%e194417194533%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl194404194498%_))))
                                             (let ((_%tl194419194538%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e194417194533%_)))
                                                   (_%hd194418194536%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e194417194533%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl194419194538%_))
                                                   (_%__kont198220198221%_
                                                    _%hd194418194536%_
                                                    _%signature194416194530%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g194395194435%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g194395194435%_))))))))
                       (_%loop194411194514%_ _%target194408194509%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198218198219%_))
                  (let ((_%e194399194485%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198218198219%_))))
                    (let ((_%tl194401194490%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194399194485%_)))
                          (_%hd194400194488%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194399194485%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194401194490%_))
                          (let ((_%e194402194493%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194401194490%_))))
                            (let ((_%tl194404194498%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194402194493%_)))
                                  (_%hd194403194496%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194402194493%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194403194496%_))
                                  (let ((_%e194405194501%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194403194496%_))))
                                    (let ((_%tl194407194506%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194405194501%_)))
                                          (_%hd194406194504%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194405194501%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194406194504%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd194406194504%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl194407194506%_))
                                                  (let ((_%__splice198222198223%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl194407194506%_
                                                            '0))))
                                                    (let ((_%tl194410194511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice198222198223%_
                                                              '1)))
                                                          (_%target194408194509%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice198222198223%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194410194511%_))
                                                          (_%__match198255198256%_
                                                           _%e194399194485%_
                                                           _%hd194400194488%_
                                                           _%tl194401194490%_
                                                           _%e194402194493%_
                                                           _%hd194403194496%_
                                                           _%tl194404194498%_
                                                           _%e194405194501%_
                                                           _%hd194406194504%_
                                                           _%tl194407194506%_
                                                           _%__splice198222198223%_
                                                           _%target194408194509%_
                                                           _%tl194410194511%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl194404194498%_))
                      (let ((_%e194428194456%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl194404194498%_))))
                        (let ((_%tl194430194461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194428194456%_)))
                              (_%hd194429194459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194428194456%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194430194461%_))
                              (_%__kont198224198225%_
                               _%hd194429194459%_
                               _%hd194403194496%_)
                              (let ()
                                (declare (not safe))
                                (_%g194395194435%_)))))
                      (let () (declare (not safe)) (_%g194395194435%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194404194498%_))
                                                      (let ((_%e194428194456%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194404194498%_))))
                (let ((_%tl194430194461%_
                       (let () (declare (not safe)) (##cdr _%e194428194456%_)))
                      (_%hd194429194459%_
                       (let ()
                         (declare (not safe))
                         (##car _%e194428194456%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194430194461%_))
                      (_%__kont198224198225%_
                       _%hd194429194459%_
                       _%hd194403194496%_)
                      (let () (declare (not safe)) (_%g194395194435%_)))))
              (let () (declare (not safe)) (_%g194395194435%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194404194498%_))
                                                  (let ((_%e194428194456%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194404194498%_))))
                                                    (let ((_%tl194430194461%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194428194456%_)))
                                                          (_%hd194429194459%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194428194456%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194430194461%_))
                                                          (_%__kont198224198225%_
                                                           _%hd194429194459%_
                                                           _%hd194403194496%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194395194435%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g194395194435%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194404194498%_))
                                              (let ((_%e194428194456%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194404194498%_))))
                                                (let ((_%tl194430194461%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194428194456%_)))
                                                      (_%hd194429194459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194428194456%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194430194461%_))
                                                      (_%__kont198224198225%_
                                                       _%hd194429194459%_
                                                       _%hd194403194496%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194395194435%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g194395194435%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194404194498%_))
                                      (let ((_%e194428194456%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194404194498%_))))
                                        (let ((_%tl194430194461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194428194456%_)))
                                              (_%hd194429194459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194428194456%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194430194461%_))
                                              (_%__kont198224198225%_
                                               _%hd194429194459%_
                                               _%hd194403194496%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g194395194435%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194395194435%_))))))
                          (let () (declare (not safe)) (_%g194395194435%_)))))
                  (let () (declare (not safe)) (_%g194395194435%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx194369%_ _%expr194370%_ _%type194371%_)
        (let ((_%$e194373%_ (not _%type194371%_)))
          (if _%$e194373%_
              _%$e194373%_
              (let ((_%$e194376%_
                     (eq? (##structure-ref _%type194371%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e194376%_
                    _%$e194376%_
                    (let ((_%expr-type194380%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr194370%_))))
                      (if (not _%expr-type194380%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx194369%_
                             _%type194371%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type194380%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx194369%_
                                 _%type194371%_
                                 _%expr-type194380%_))
                              (let ((_%$e194384%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type194380%_
                                        'gxc#!abort::t))))
                                (if _%$e194384%_
                                    _%$e194384%_
                                    (let ((_%$e194387%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type194380%_
                                              _%type194371%_))))
                                      (if _%$e194387%_
                                          _%$e194387%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx194369%_
                                             _%type194371%_
                                             _%expr-type194380%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self193795%_ _%stx193796%_)
        (let* ((_%__stx198300198301%_ _%stx193796%_)
               (_%g193801193911%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198300198301%_)))))
          (let ((_%__kont198302198303%_
                 (lambda (_%L194343%_ _%L194344%_ _%L194345%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L194345%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self193795%_ _%L194344%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self193795%_ _%L194343%_)))))
                (_%__kont198304198305%_
                 (lambda (_%L194169%_ _%L194170%_ _%L194171%_ _%L194172%_)
                   (let ((_%$e194204%_
                          (let ((__tmp198653
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L194172%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp198653))))
                     (if _%$e194204%_
                         ((lambda (_%pred-type194207%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type194207%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type194207%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test194212%_
                                        (let ((__tmp198654
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L194172%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L194171%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp198654
                                           _%stx193796%_
                                           _%self193795%_)))
                                       (_%K194216%_
                                        (let ((__tmp198655
                                               (lambda ()
                                                 (let ((__tmp198658
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self193795%_
                                                             _%L194170%_))))
                                                       (__tmp198656
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L194171%_))
                            (let ((__tmp198657
                                   (##structure-ref
                                    _%pred-type194207%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx193796%_
                               __tmp198657)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp198658
                                                    gxc#current-compile-path-type
                                                    __tmp198656)))))
                                          (declare (not safe))
                                          (__make-promise __tmp198655)))
                                       (_%E194219%_
                                        (let ((__tmp198659
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self193795%_
                                                    _%L194169%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp198659)))
                                       (_%__stx198278198279%_ _%test194212%_)
                                       (_%g194223194237%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx198278198279%_)))))
                                  (let ((_%__kont198280198281%_
                                         (lambda (_%L194265%_ _%L194266%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L194265%_))
                                               (force _%K194216%_)
                                               (force _%E194219%_))))
                                        (_%__kont198282198283%_
                                         (lambda ()
                                           (let ((__tmp198660
                                                  (cons '%#if
                                                        (cons _%test194212%_
                                                              (cons (force _%K194216%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E194219%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198660
                                              _%stx193796%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx198278198279%_))
                                        (let ((_%e194227194249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx198278198279%_))))
                                          (let ((_%tl194229194254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194227194249%_)))
                                                (_%hd194228194252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194227194249%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl194229194254%_))
                                                (let ((_%e194230194257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl194229194254%_))))
                                                  (let ((_%tl194232194262%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e194230194257%_)))
                                                        (_%hd194231194260%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e194230194257%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194232194262%_))
                                                        (_%__kont198280198281%_
                                                         _%hd194231194260%_
                                                         _%hd194228194252%_)
                                                        (_%__kont198282198283%_))))
                                                (_%__kont198282198283%_))))
                                        (_%__kont198282198283%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self193795%_
                                   _%stx193796%_))))
                          _%$e194204%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self193795%_
                            _%stx193796%_))))))
                (_%__kont198306198307%_
                 (lambda (_%L194045%_ _%L194046%_ _%L194047%_ _%L194048%_)
                   (gxc#optimize-if%
                    _%self193795%_
                    (let ((__tmp198661
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L194047%_
                                       (cons _%L194045%_
                                             (cons _%L194046%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198661 _%stx193796%_)))))
                (_%__kont198308198309%_
                 (lambda (_%L193948%_ _%L193949%_ _%L193950%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self193795%_ _%stx193796%_)))))
            (let ((_%__match198507198508%_
                   (lambda (_%e193865193973%_
                            _%hd193866193976%_
                            _%tl193867193978%_
                            _%e193868193981%_
                            _%hd193869193984%_
                            _%tl193870193986%_
                            _%e193871193989%_
                            _%hd193872193992%_
                            _%tl193873193994%_
                            _%e193874193997%_
                            _%hd193875194000%_
                            _%tl193876194002%_
                            _%e193877194005%_
                            _%hd193878194008%_
                            _%tl193879194010%_
                            _%e193880194013%_
                            _%hd193881194016%_
                            _%tl193882194018%_
                            _%e193883194021%_
                            _%hd193884194024%_
                            _%tl193885194026%_
                            _%e193886194029%_
                            _%hd193887194032%_
                            _%tl193888194034%_
                            _%e193889194037%_
                            _%hd193890194040%_
                            _%tl193891194042%_)
                     (let ((_%L194045%_ _%hd193890194040%_)
                           (_%L194046%_ _%hd193887194032%_)
                           (_%L194047%_ _%hd193884194024%_)
                           (_%L194048%_ _%hd193881194016%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L194048%_ 'not))
                           (_%__kont198306198307%_
                            _%L194045%_
                            _%L194046%_
                            _%L194047%_
                            _%L194048%_)
                           (_%__kont198308198309%_
                            _%hd193890194040%_
                            _%hd193887194032%_
                            _%hd193869193984%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198300198301%_))
                  (let ((_%e193806194295%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198300198301%_))))
                    (let ((_%tl193808194300%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193806194295%_)))
                          (_%hd193807194298%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193806194295%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193808194300%_))
                          (let ((_%e193809194303%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193808194300%_))))
                            (let ((_%tl193811194308%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193809194303%_)))
                                  (_%hd193810194306%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193809194303%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193810194306%_))
                                  (let ((_%e193812194311%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193810194306%_))))
                                    (let ((_%tl193814194316%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193812194311%_)))
                                          (_%hd193813194314%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193812194311%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193813194314%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd193813194314%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193814194316%_))
                                                  (let ((_%e193815194319%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193814194316%_))))
                                                    (let ((_%tl193817194324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193815194319%_)))
                                                          (_%hd193816194322%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193815194319%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193817194324%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193811194308%_))
                      (let ((_%e193818194327%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193811194308%_))))
                        (let ((_%tl193820194332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193818194327%_)))
                              (_%hd193819194330%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193818194327%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193820194332%_))
                              (let ((_%e193821194335%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193820194332%_))))
                                (let ((_%tl193823194340%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193821194335%_)))
                                      (_%hd193822194338%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193821194335%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193823194340%_))
                                      (_%__kont198302198303%_
                                       _%hd193822194338%_
                                       _%hd193819194330%_
                                       _%hd193816194322%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g193801193911%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g193801193911%_)))))
                      (let () (declare (not safe)) (_%g193801193911%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193811194308%_))
                      (let ((_%e193901193932%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193811194308%_))))
                        (let ((_%tl193903193937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193901193932%_)))
                              (_%hd193902193935%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193901193932%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193903193937%_))
                              (let ((_%e193904193940%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193903193937%_))))
                                (let ((_%tl193906193945%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193904193940%_)))
                                      (_%hd193905193943%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193904193940%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193906193945%_))
                                      (_%__kont198308198309%_
                                       _%hd193905193943%_
                                       _%hd193902193935%_
                                       _%hd193810194306%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g193801193911%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g193801193911%_)))))
                      (let () (declare (not safe)) (_%g193801193911%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193811194308%_))
                                                      (let ((_%e193901193932%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193811194308%_))))
                (let ((_%tl193903193937%_
                       (let () (declare (not safe)) (##cdr _%e193901193932%_)))
                      (_%hd193902193935%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193901193932%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193903193937%_))
                      (let ((_%e193904193940%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193903193937%_))))
                        (let ((_%tl193906193945%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193904193940%_)))
                              (_%hd193905193943%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193904193940%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193906193945%_))
                              (_%__kont198308198309%_
                               _%hd193905193943%_
                               _%hd193902193935%_
                               _%hd193810194306%_)
                              (let ()
                                (declare (not safe))
                                (_%g193801193911%_)))))
                      (let () (declare (not safe)) (_%g193801193911%_)))))
              (let () (declare (not safe)) (_%g193801193911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd193813194314%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193814194316%_))
                                                      (let ((_%e193837194105%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193814194316%_))))
                (let ((_%tl193839194110%_
                       (let () (declare (not safe)) (##cdr _%e193837194105%_)))
                      (_%hd193838194108%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193837194105%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193838194108%_))
                      (let ((_%e193840194113%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193838194108%_))))
                        (let ((_%tl193842194118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193840194113%_)))
                              (_%hd193841194116%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193840194113%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193841194116%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193841194116%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193842194118%_))
                                      (let ((_%e193843194121%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193842194118%_))))
                                        (let ((_%tl193845194126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193843194121%_)))
                                              (_%hd193844194124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193843194121%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193845194126%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193839194110%_))
                                                  (let ((_%e193846194129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193839194110%_))))
                                                    (let ((_%tl193848194134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193846194129%_)))
                                                          (_%hd193847194132%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193846194129%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193847194132%_))
                                                          (let ((_%e193849194137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193847194132%_))))
                    (let ((_%tl193851194142%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193849194137%_)))
                          (_%hd193850194140%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193849194137%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193850194140%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd193850194140%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193851194142%_))
                                  (let ((_%e193852194145%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193851194142%_))))
                                    (let ((_%tl193854194150%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193852194145%_)))
                                          (_%hd193853194148%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193852194145%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193854194150%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193848194134%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193811194308%_))
                                                  (let ((_%e193855194153%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193811194308%_))))
                                                    (let ((_%tl193857194158%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193855194153%_)))
                                                          (_%hd193856194156%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193855194153%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193857194158%_))
                                                          (let ((_%e193858194161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193857194158%_))))
                    (let ((_%tl193860194166%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193858194161%_)))
                          (_%hd193859194164%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193858194161%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193860194166%_))
                          (_%__kont198304198305%_
                           _%hd193859194164%_
                           _%hd193856194156%_
                           _%hd193853194148%_
                           _%hd193844194124%_)
                          (let () (declare (not safe)) (_%g193801193911%_)))))
                  (let () (declare (not safe)) (_%g193801193911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193801193911%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193811194308%_))
                                                  (let ((_%e193901193932%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193811194308%_))))
                                                    (let ((_%tl193903193937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193901193932%_)))
                                                          (_%hd193902193935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193901193932%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193903193937%_))
                                                          (let ((_%e193904193940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193903193937%_))))
                    (let ((_%tl193906193945%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193904193940%_)))
                          (_%hd193905193943%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193904193940%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193906193945%_))
                          (_%__kont198308198309%_
                           _%hd193905193943%_
                           _%hd193902193935%_
                           _%hd193810194306%_)
                          (let () (declare (not safe)) (_%g193801193911%_)))))
                  (let () (declare (not safe)) (_%g193801193911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193801193911%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193848194134%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193811194308%_))
                                                  (let ((_%e193886194029%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193811194308%_))))
                                                    (let ((_%tl193888194034%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193886194029%_)))
                                                          (_%hd193887194032%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193886194029%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193888194034%_))
                                                          (let ((_%e193889194037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193888194034%_))))
                    (let ((_%tl193891194042%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193889194037%_)))
                          (_%hd193890194040%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193889194037%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193891194042%_))
                          (_%__match198507198508%_
                           _%e193806194295%_
                           _%hd193807194298%_
                           _%tl193808194300%_
                           _%e193809194303%_
                           _%hd193810194306%_
                           _%tl193811194308%_
                           _%e193812194311%_
                           _%hd193813194314%_
                           _%tl193814194316%_
                           _%e193837194105%_
                           _%hd193838194108%_
                           _%tl193839194110%_
                           _%e193840194113%_
                           _%hd193841194116%_
                           _%tl193842194118%_
                           _%e193843194121%_
                           _%hd193844194124%_
                           _%tl193845194126%_
                           _%e193846194129%_
                           _%hd193847194132%_
                           _%tl193848194134%_
                           _%e193886194029%_
                           _%hd193887194032%_
                           _%tl193888194034%_
                           _%e193889194037%_
                           _%hd193890194040%_
                           _%tl193891194042%_)
                          (let () (declare (not safe)) (_%g193801193911%_)))))
                  (let () (declare (not safe)) (_%g193801193911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193801193911%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193811194308%_))
                                                  (let ((_%e193901193932%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193811194308%_))))
                                                    (let ((_%tl193903193937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193901193932%_)))
                                                          (_%hd193902193935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193901193932%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193903193937%_))
                                                          (let ((_%e193904193940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193903193937%_))))
                    (let ((_%tl193906193945%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193904193940%_)))
                          (_%hd193905193943%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193904193940%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193906193945%_))
                          (_%__kont198308198309%_
                           _%hd193905193943%_
                           _%hd193902193935%_
                           _%hd193810194306%_)
                          (let () (declare (not safe)) (_%g193801193911%_)))))
                  (let () (declare (not safe)) (_%g193801193911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193801193911%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193848194134%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193811194308%_))
                                          (let ((_%e193886194029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193811194308%_))))
                                            (let ((_%tl193888194034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193886194029%_)))
                                                  (_%hd193887194032%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193886194029%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193888194034%_))
                                                  (let ((_%e193889194037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193888194034%_))))
                                                    (let ((_%tl193891194042%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193889194037%_)))
                                                          (_%hd193890194040%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193889194037%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193891194042%_))
                                                          (_%__match198507198508%_
                                                           _%e193806194295%_
                                                           _%hd193807194298%_
                                                           _%tl193808194300%_
                                                           _%e193809194303%_
                                                           _%hd193810194306%_
                                                           _%tl193811194308%_
                                                           _%e193812194311%_
                                                           _%hd193813194314%_
                                                           _%tl193814194316%_
                                                           _%e193837194105%_
                                                           _%hd193838194108%_
                                                           _%tl193839194110%_
                                                           _%e193840194113%_
                                                           _%hd193841194116%_
                                                           _%tl193842194118%_
                                                           _%e193843194121%_
                                                           _%hd193844194124%_
                                                           _%tl193845194126%_
                                                           _%e193846194129%_
                                                           _%hd193847194132%_
                                                           _%tl193848194134%_
                                                           _%e193886194029%_
                                                           _%hd193887194032%_
                                                           _%tl193888194034%_
                                                           _%e193889194037%_
                                                           _%hd193890194040%_
                                                           _%tl193891194042%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193801193911%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193801193911%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193801193911%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193811194308%_))
                                          (let ((_%e193901193932%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193811194308%_))))
                                            (let ((_%tl193903193937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193901193932%_)))
                                                  (_%hd193902193935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193901193932%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193903193937%_))
                                                  (let ((_%e193904193940%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193903193937%_))))
                                                    (let ((_%tl193906193945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193904193940%_)))
                                                          (_%hd193905193943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193904193940%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193906193945%_))
                                                          (_%__kont198308198309%_
                                                           _%hd193905193943%_
                                                           _%hd193902193935%_
                                                           _%hd193810194306%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193801193911%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193801193911%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193801193911%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193848194134%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193811194308%_))
                                      (let ((_%e193886194029%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193811194308%_))))
                                        (let ((_%tl193888194034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193886194029%_)))
                                              (_%hd193887194032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193886194029%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193888194034%_))
                                              (let ((_%e193889194037%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193888194034%_))))
                                                (let ((_%tl193891194042%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193889194037%_)))
                                                      (_%hd193890194040%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193889194037%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193891194042%_))
                                                      (_%__match198507198508%_
                                                       _%e193806194295%_
                                                       _%hd193807194298%_
                                                       _%tl193808194300%_
                                                       _%e193809194303%_
                                                       _%hd193810194306%_
                                                       _%tl193811194308%_
                                                       _%e193812194311%_
                                                       _%hd193813194314%_
                                                       _%tl193814194316%_
                                                       _%e193837194105%_
                                                       _%hd193838194108%_
                                                       _%tl193839194110%_
                                                       _%e193840194113%_
                                                       _%hd193841194116%_
                                                       _%tl193842194118%_
                                                       _%e193843194121%_
                                                       _%hd193844194124%_
                                                       _%tl193845194126%_
                                                       _%e193846194129%_
                                                       _%hd193847194132%_
                                                       _%tl193848194134%_
                                                       _%e193886194029%_
                                                       _%hd193887194032%_
                                                       _%tl193888194034%_
                                                       _%e193889194037%_
                                                       _%hd193890194040%_
                                                       _%tl193891194042%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193801193911%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193801193911%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193801193911%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193811194308%_))
                                      (let ((_%e193901193932%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193811194308%_))))
                                        (let ((_%tl193903193937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193901193932%_)))
                                              (_%hd193902193935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193901193932%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193903193937%_))
                                              (let ((_%e193904193940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193903193937%_))))
                                                (let ((_%tl193906193945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193904193940%_)))
                                                      (_%hd193905193943%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193904193940%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193906193945%_))
                                                      (_%__kont198308198309%_
                                                       _%hd193905193943%_
                                                       _%hd193902193935%_
                                                       _%hd193810194306%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193801193911%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193801193911%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193801193911%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193848194134%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193811194308%_))
                                  (let ((_%e193886194029%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193811194308%_))))
                                    (let ((_%tl193888194034%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193886194029%_)))
                                          (_%hd193887194032%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193886194029%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193888194034%_))
                                          (let ((_%e193889194037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193888194034%_))))
                                            (let ((_%tl193891194042%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193889194037%_)))
                                                  (_%hd193890194040%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193889194037%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193891194042%_))
                                                  (_%__match198507198508%_
                                                   _%e193806194295%_
                                                   _%hd193807194298%_
                                                   _%tl193808194300%_
                                                   _%e193809194303%_
                                                   _%hd193810194306%_
                                                   _%tl193811194308%_
                                                   _%e193812194311%_
                                                   _%hd193813194314%_
                                                   _%tl193814194316%_
                                                   _%e193837194105%_
                                                   _%hd193838194108%_
                                                   _%tl193839194110%_
                                                   _%e193840194113%_
                                                   _%hd193841194116%_
                                                   _%tl193842194118%_
                                                   _%e193843194121%_
                                                   _%hd193844194124%_
                                                   _%tl193845194126%_
                                                   _%e193846194129%_
                                                   _%hd193847194132%_
                                                   _%tl193848194134%_
                                                   _%e193886194029%_
                                                   _%hd193887194032%_
                                                   _%tl193888194034%_
                                                   _%e193889194037%_
                                                   _%hd193890194040%_
                                                   _%tl193891194042%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193801193911%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193801193911%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193801193911%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193811194308%_))
                                  (let ((_%e193901193932%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193811194308%_))))
                                    (let ((_%tl193903193937%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193901193932%_)))
                                          (_%hd193902193935%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193901193932%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193903193937%_))
                                          (let ((_%e193904193940%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193903193937%_))))
                                            (let ((_%tl193906193945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193904193940%_)))
                                                  (_%hd193905193943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193904193940%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193906193945%_))
                                                  (_%__kont198308198309%_
                                                   _%hd193905193943%_
                                                   _%hd193902193935%_
                                                   _%hd193810194306%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193801193911%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193801193911%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193801193911%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193848194134%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193811194308%_))
                          (let ((_%e193886194029%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193811194308%_))))
                            (let ((_%tl193888194034%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193886194029%_)))
                                  (_%hd193887194032%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193886194029%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193888194034%_))
                                  (let ((_%e193889194037%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193888194034%_))))
                                    (let ((_%tl193891194042%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193889194037%_)))
                                          (_%hd193890194040%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193889194037%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193891194042%_))
                                          (_%__match198507198508%_
                                           _%e193806194295%_
                                           _%hd193807194298%_
                                           _%tl193808194300%_
                                           _%e193809194303%_
                                           _%hd193810194306%_
                                           _%tl193811194308%_
                                           _%e193812194311%_
                                           _%hd193813194314%_
                                           _%tl193814194316%_
                                           _%e193837194105%_
                                           _%hd193838194108%_
                                           _%tl193839194110%_
                                           _%e193840194113%_
                                           _%hd193841194116%_
                                           _%tl193842194118%_
                                           _%e193843194121%_
                                           _%hd193844194124%_
                                           _%tl193845194126%_
                                           _%e193846194129%_
                                           _%hd193847194132%_
                                           _%tl193848194134%_
                                           _%e193886194029%_
                                           _%hd193887194032%_
                                           _%tl193888194034%_
                                           _%e193889194037%_
                                           _%hd193890194040%_
                                           _%tl193891194042%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193801193911%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193801193911%_)))))
                          (let () (declare (not safe)) (_%g193801193911%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193811194308%_))
                          (let ((_%e193901193932%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193811194308%_))))
                            (let ((_%tl193903193937%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193901193932%_)))
                                  (_%hd193902193935%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193901193932%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193903193937%_))
                                  (let ((_%e193904193940%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193903193937%_))))
                                    (let ((_%tl193906193945%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193904193940%_)))
                                          (_%hd193905193943%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193904193940%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193906193945%_))
                                          (_%__kont198308198309%_
                                           _%hd193905193943%_
                                           _%hd193902193935%_
                                           _%hd193810194306%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193801193911%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193801193911%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g193801193911%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193811194308%_))
                                                      (let ((_%e193901193932%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193811194308%_))))
                (let ((_%tl193903193937%_
                       (let () (declare (not safe)) (##cdr _%e193901193932%_)))
                      (_%hd193902193935%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193901193932%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193903193937%_))
                      (let ((_%e193904193940%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193903193937%_))))
                        (let ((_%tl193906193945%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193904193940%_)))
                              (_%hd193905193943%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193904193940%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193906193945%_))
                              (_%__kont198308198309%_
                               _%hd193905193943%_
                               _%hd193902193935%_
                               _%hd193810194306%_)
                              (let ()
                                (declare (not safe))
                                (_%g193801193911%_)))))
                      (let () (declare (not safe)) (_%g193801193911%_)))))
              (let () (declare (not safe)) (_%g193801193911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193811194308%_))
                                                  (let ((_%e193901193932%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193811194308%_))))
                                                    (let ((_%tl193903193937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193901193932%_)))
                                                          (_%hd193902193935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193901193932%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193903193937%_))
                                                          (let ((_%e193904193940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193903193937%_))))
                    (let ((_%tl193906193945%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193904193940%_)))
                          (_%hd193905193943%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193904193940%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193906193945%_))
                          (_%__kont198308198309%_
                           _%hd193905193943%_
                           _%hd193902193935%_
                           _%hd193810194306%_)
                          (let () (declare (not safe)) (_%g193801193911%_)))))
                  (let () (declare (not safe)) (_%g193801193911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193801193911%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193811194308%_))
                                          (let ((_%e193901193932%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193811194308%_))))
                                            (let ((_%tl193903193937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193901193932%_)))
                                                  (_%hd193902193935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193901193932%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193903193937%_))
                                                  (let ((_%e193904193940%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193903193937%_))))
                                                    (let ((_%tl193906193945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193904193940%_)))
                                                          (_%hd193905193943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193904193940%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193906193945%_))
                                                          (_%__kont198308198309%_
                                                           _%hd193905193943%_
                                                           _%hd193902193935%_
                                                           _%hd193810194306%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193801193911%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193801193911%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193801193911%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193811194308%_))
                                      (let ((_%e193901193932%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193811194308%_))))
                                        (let ((_%tl193903193937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193901193932%_)))
                                              (_%hd193902193935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193901193932%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193903193937%_))
                                              (let ((_%e193904193940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193903193937%_))))
                                                (let ((_%tl193906193945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193904193940%_)))
                                                      (_%hd193905193943%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193904193940%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193906193945%_))
                                                      (_%__kont198308198309%_
                                                       _%hd193905193943%_
                                                       _%hd193902193935%_
                                                       _%hd193810194306%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193801193911%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193801193911%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193801193911%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193811194308%_))
                                  (let ((_%e193901193932%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193811194308%_))))
                                    (let ((_%tl193903193937%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193901193932%_)))
                                          (_%hd193902193935%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193901193932%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193903193937%_))
                                          (let ((_%e193904193940%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193903193937%_))))
                                            (let ((_%tl193906193945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193904193940%_)))
                                                  (_%hd193905193943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193904193940%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193906193945%_))
                                                  (_%__kont198308198309%_
                                                   _%hd193905193943%_
                                                   _%hd193902193935%_
                                                   _%hd193810194306%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193801193911%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193801193911%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193801193911%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193811194308%_))
                          (let ((_%e193901193932%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193811194308%_))))
                            (let ((_%tl193903193937%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193901193932%_)))
                                  (_%hd193902193935%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193901193932%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193903193937%_))
                                  (let ((_%e193904193940%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193903193937%_))))
                                    (let ((_%tl193906193945%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193904193940%_)))
                                          (_%hd193905193943%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193904193940%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193906193945%_))
                                          (_%__kont198308198309%_
                                           _%hd193905193943%_
                                           _%hd193902193935%_
                                           _%hd193810194306%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193801193911%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193801193911%_)))))
                          (let () (declare (not safe)) (_%g193801193911%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl193811194308%_))
                  (let ((_%e193901193932%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193811194308%_))))
                    (let ((_%tl193903193937%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193901193932%_)))
                          (_%hd193902193935%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193901193932%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193903193937%_))
                          (let ((_%e193904193940%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193903193937%_))))
                            (let ((_%tl193906193945%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193904193940%_)))
                                  (_%hd193905193943%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193904193940%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193906193945%_))
                                  (_%__kont198308198309%_
                                   _%hd193905193943%_
                                   _%hd193902193935%_
                                   _%hd193810194306%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g193801193911%_)))))
                          (let () (declare (not safe)) (_%g193801193911%_)))))
                  (let () (declare (not safe)) (_%g193801193911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193811194308%_))
                                                      (let ((_%e193901193932%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193811194308%_))))
                (let ((_%tl193903193937%_
                       (let () (declare (not safe)) (##cdr _%e193901193932%_)))
                      (_%hd193902193935%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193901193932%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193903193937%_))
                      (let ((_%e193904193940%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193903193937%_))))
                        (let ((_%tl193906193945%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193904193940%_)))
                              (_%hd193905193943%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193904193940%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193906193945%_))
                              (_%__kont198308198309%_
                               _%hd193905193943%_
                               _%hd193902193935%_
                               _%hd193810194306%_)
                              (let ()
                                (declare (not safe))
                                (_%g193801193911%_)))))
                      (let () (declare (not safe)) (_%g193801193911%_)))))
              (let () (declare (not safe)) (_%g193801193911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193811194308%_))
                                              (let ((_%e193901193932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193811194308%_))))
                                                (let ((_%tl193903193937%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193901193932%_)))
                                                      (_%hd193902193935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193901193932%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193903193937%_))
                                                      (let ((_%e193904193940%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193903193937%_))))
                (let ((_%tl193906193945%_
                       (let () (declare (not safe)) (##cdr _%e193904193940%_)))
                      (_%hd193905193943%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193904193940%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193906193945%_))
                      (_%__kont198308198309%_
                       _%hd193905193943%_
                       _%hd193902193935%_
                       _%hd193810194306%_)
                      (let () (declare (not safe)) (_%g193801193911%_)))))
              (let () (declare (not safe)) (_%g193801193911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g193801193911%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193811194308%_))
                                      (let ((_%e193901193932%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193811194308%_))))
                                        (let ((_%tl193903193937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193901193932%_)))
                                              (_%hd193902193935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193901193932%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193903193937%_))
                                              (let ((_%e193904193940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193903193937%_))))
                                                (let ((_%tl193906193945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193904193940%_)))
                                                      (_%hd193905193943%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193904193940%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193906193945%_))
                                                      (_%__kont198308198309%_
                                                       _%hd193905193943%_
                                                       _%hd193902193935%_
                                                       _%hd193810194306%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193801193911%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193801193911%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193801193911%_))))))
                          (let () (declare (not safe)) (_%g193801193911%_)))))
                  (let () (declare (not safe)) (_%g193801193911%_))))))))))
