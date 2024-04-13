(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712991659)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp195036 (list gxc#::basic-xform::t))
            (__tmp195035 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp195036
         '()
         __tmp195035
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args194313%_
        (apply make-instance gxc#::optimize-call::t _%$args194313%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp195037
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
        (__make-promise __tmp195037)))
    (define gxc#apply-optimize-call
      (lambda (_%stx194305%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self194308%_
                (let ((__obj195027
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj195027))
               (__tmp195038
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self194308%_ _%stx194305%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195038
           gxc#current-compile-method
           _%self194308%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp195040 (list gxc#::void::t))
            (__tmp195039 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp195040
         '()
         __tmp195039
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args194302%_
        (apply make-instance gxc#::check-return-type::t _%$args194302%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp195041
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
        (__make-promise __tmp195041)))
    (define gxc#apply-check-return-type
      (lambda (_%stx194294%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self194297%_
                (let ((__obj195029
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj195029))
               (__tmp195042
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self194297%_ _%stx194294%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195042
           gxc#current-compile-method
           _%self194297%_))))
    (define gxc#optimize-call%
      (lambda (_%self193895%_ _%stx193896%_)
        (let* ((_%__stx194382194383%_ _%stx193896%_)
               (_%g193899193945%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194382194383%_)))))
          (let ((_%__kont194384194385%_
                 (lambda (_%L194088%_ _%L194089%_)
                   (let* ((_%rator-id194109%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L194089%_)))
                          (_%rator-type194111%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id194109%_))))
                     (if (or (not _%rator-type194111%_)
                             (eq? (##structure-ref
                                   _%rator-type194111%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self193895%_ _%stx193896%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type194111%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp195043
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type194111%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id194109%_
                                  '" => "
                                  _%rator-type194111%_
                                  '" "
                                  __tmp195043))
                               (let* ((_%optimized194126%_
                                       (let ((__method195030
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type194111%_
                                                 'optimize-call))))
                                         (if __method195030
                                             (let ((__tmp195044
                                                    (let ((__tmp195045
                                                           (lambda (_%g194118194121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g194119194123%_)
                     (cons _%g194118194121%_ _%g194119194123%_))))
              (declare (not safe))
              (__foldr1 __tmp195045 '() _%L194088%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method195030
                                                _%rator-type194111%_
                                                _%self193895%_
                                                _%stx193896%_
                                                __tmp195044))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type194111%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx194330194331%_
                                       _%optimized194126%_)
                                      (_%g194129194158%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx194330194331%_)))))
                                 (let ((_%__kont194332194333%_
                                        (lambda (_%L194226%_ _%L194227%_)
                                          (let* ((_%optimized-rator-id194254%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L194227%_)))
                                                 (_%rator-type194259%_
                                                  (let ((_%$e194256%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id194254%_))))
                                                    (if _%$e194256%_
                                                        _%$e194256%_
                                                        _%rator-type194111%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type194259%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id194254%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type194259%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type194259%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized194126%_
                                                (let ((__tmp195046
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L194227%_ '()))
                           (let ((__tmp195047
                                  (lambda (_%g194267194270%_ _%g194268194272%_)
                                    (cons _%g194267194270%_
                                          _%g194268194272%_))))
                             (declare (not safe))
                             (__foldr1 __tmp195047 '() _%L194226%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp195046
                                                   _%stx193896%_))))))
                                       (_%__kont194336194337%_
                                        (lambda () _%optimized194126%_)))
                                   (let ((_%__match194379194380%_
                                          (lambda (_%e194133194170%_
                                                   _%hd194134194173%_
                                                   _%tl194135194175%_
                                                   _%e194136194178%_
                                                   _%hd194137194181%_
                                                   _%tl194138194183%_
                                                   _%e194139194186%_
                                                   _%hd194140194189%_
                                                   _%tl194141194191%_
                                                   _%e194142194194%_
                                                   _%hd194143194197%_
                                                   _%tl194144194199%_
                                                   _%__splice194334194335%_
                                                   _%target194145194202%_
                                                   _%tl194147194204%_)
                                            (letrec ((_%loop194148194207%_
                                                      (lambda (_%hd194146194210%_
                                                               _%arg194152194212%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd194146194210%_))
                                                            (let ((_%e194149194215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd194146194210%_))))
                      (let ((_%lp-tl194151194220%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194149194215%_)))
                            (_%lp-hd194150194218%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194149194215%_))))
                        (_%loop194148194207%_
                         _%lp-tl194151194220%_
                         (cons _%lp-hd194150194218%_ _%arg194152194212%_))))
                    (let ((_%arg194153194223%_ (reverse _%arg194152194212%_)))
                      (_%__kont194332194333%_
                       _%arg194153194223%_
                       _%hd194143194197%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop194148194207%_
                                               _%target194145194202%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx194330194331%_))
                                         (let ((_%e194133194170%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx194330194331%_))))
                                           (let ((_%tl194135194175%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194133194170%_)))
                                                 (_%hd194134194173%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194133194170%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd194134194173%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd194134194173%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl194135194175%_))
                                                         (let ((_%e194136194178%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl194135194175%_))))
                   (let ((_%tl194138194183%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e194136194178%_)))
                         (_%hd194137194181%_
                          (let ()
                            (declare (not safe))
                            (##car _%e194136194178%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd194137194181%_))
                         (let ((_%e194139194186%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd194137194181%_))))
                           (let ((_%tl194141194191%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e194139194186%_)))
                                 (_%hd194140194189%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e194139194186%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd194140194189%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd194140194189%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl194141194191%_))
                                         (let ((_%e194142194194%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl194141194191%_))))
                                           (let ((_%tl194144194199%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194142194194%_)))
                                                 (_%hd194143194197%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194142194194%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl194144194199%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl194138194183%_))
                                                     (let ((_%__splice194334194335%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl194138194183%_
                                                               '0))))
                                                       (let ((_%tl194147194204%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice194334194335%_ '1)))
                     (_%target194145194202%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice194334194335%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl194147194204%_))
                     (_%__match194379194380%_
                      _%e194133194170%_
                      _%hd194134194173%_
                      _%tl194135194175%_
                      _%e194136194178%_
                      _%hd194137194181%_
                      _%tl194138194183%_
                      _%e194139194186%_
                      _%hd194140194189%_
                      _%tl194141194191%_
                      _%e194142194194%_
                      _%hd194143194197%_
                      _%tl194144194199%_
                      _%__splice194334194335%_
                      _%target194145194202%_
                      _%tl194147194204%_)
                     (_%__kont194336194337%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont194336194337%_))
                                                 (_%__kont194336194337%_))))
                                         (_%__kont194336194337%_))
                                     (_%__kont194336194337%_))
                                 (_%__kont194336194337%_))))
                         (_%__kont194336194337%_))))
                 (_%__kont194336194337%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont194336194337%_))
                                                 (_%__kont194336194337%_))))
                                         (_%__kont194336194337%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type194111%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type194111%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp195048
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L194089%_
                                                                '()))
                                                    (map (lambda (_%g194278194280%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self193895%_
                                                              _%g194278194280%_)))
                                                         (let ((__tmp195049
                                                                (lambda (_%g194282194285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g194283194287%_)
                          (cons _%g194282194285%_ _%g194283194287%_))))
                   (declare (not safe))
                   (__foldr1 __tmp195049 '() _%L194088%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp195048
                                    _%stx193896%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx193896%_
                                    _%rator-type194111%_))))))))
                (_%__kont194388194389%_
                 (lambda (_%L193990%_ _%L193991%_)
                   (let ((_%rator-type194008%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L193991%_))))
                     (if (and _%rator-type194008%_
                              (eq? (##structure-ref
                                    _%rator-type194008%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type194008%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type194008%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type194008%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp195050
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self193895%_
                                               _%L193991%_))
                                            (map (lambda (_%g194010194012%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self193895%_
                                                      _%g194010194012%_)))
                                                 (let ((__tmp195051
                                                        (lambda (_%g194014194017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g194015194019%_)
                  (cons _%g194014194017%_ _%g194015194019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp195051
                                                    '()
                                                    _%L193990%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp195050 _%stx193896%_))
                         (if (or (not _%rator-type194008%_)
                                 (let ((__tmp195052
                                        (##structure-ref
                                         _%rator-type194008%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp195052 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self193895%_ _%stx193896%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx193896%_
                                _%rator-type194008%_))))))))
            (let* ((_%__match194449194450%_
                    (lambda (_%e193926193950%_
                             _%hd193927193953%_
                             _%tl193928193955%_
                             _%e193929193958%_
                             _%hd193930193961%_
                             _%tl193931193963%_
                             _%__splice194390194391%_
                             _%target193932193966%_
                             _%tl193934193968%_)
                      (letrec ((_%loop193935193971%_
                                (lambda (_%hd193933193974%_
                                         _%rand193939193976%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd193933193974%_))
                                      (let ((_%e193936193979%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd193933193974%_))))
                                        (let ((_%lp-tl193938193984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193936193979%_)))
                                              (_%lp-hd193937193982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193936193979%_))))
                                          (_%loop193935193971%_
                                           _%lp-tl193938193984%_
                                           (cons _%lp-hd193937193982%_
                                                 _%rand193939193976%_))))
                                      (let ((_%rand193940193987%_
                                             (reverse _%rand193939193976%_)))
                                        (_%__kont194388194389%_
                                         _%rand193940193987%_
                                         _%hd193930193961%_))))))
                        (_%loop193935193971%_ _%target193932193966%_ '()))))
                   (_%__match194429194430%_
                    (lambda (_%e193903194032%_
                             _%hd193904194035%_
                             _%tl193905194037%_
                             _%e193906194040%_
                             _%hd193907194043%_
                             _%tl193908194045%_
                             _%e193909194048%_
                             _%hd193910194051%_
                             _%tl193911194053%_
                             _%e193912194056%_
                             _%hd193913194059%_
                             _%tl193914194061%_
                             _%__splice194386194387%_
                             _%target193915194064%_
                             _%tl193917194066%_)
                      (letrec ((_%loop193918194069%_
                                (lambda (_%hd193916194072%_
                                         _%rand193922194074%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd193916194072%_))
                                      (let ((_%e193919194077%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd193916194072%_))))
                                        (let ((_%lp-tl193921194082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193919194077%_)))
                                              (_%lp-hd193920194080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193919194077%_))))
                                          (_%loop193918194069%_
                                           _%lp-tl193921194082%_
                                           (cons _%lp-hd193920194080%_
                                                 _%rand193922194074%_))))
                                      (let ((_%rand193923194085%_
                                             (reverse _%rand193922194074%_)))
                                        (_%__kont194384194385%_
                                         _%rand193923194085%_
                                         _%hd193913194059%_))))))
                        (_%loop193918194069%_ _%target193915194064%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194382194383%_))
                  (let ((_%e193903194032%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194382194383%_))))
                    (let ((_%tl193905194037%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193903194032%_)))
                          (_%hd193904194035%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193903194032%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193905194037%_))
                          (let ((_%e193906194040%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193905194037%_))))
                            (let ((_%tl193908194045%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193906194040%_)))
                                  (_%hd193907194043%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193906194040%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193907194043%_))
                                  (let ((_%e193909194048%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193907194043%_))))
                                    (let ((_%tl193911194053%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193909194048%_)))
                                          (_%hd193910194051%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193909194048%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193910194051%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd193910194051%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193911194053%_))
                                                  (let ((_%e193912194056%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193911194053%_))))
                                                    (let ((_%tl193914194061%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193912194056%_)))
                                                          (_%hd193913194059%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193912194056%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193914194061%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl193908194045%_))
                      (let ((_%__splice194386194387%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl193908194045%_
                                '0))))
                        (let ((_%tl193917194066%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice194386194387%_ '1)))
                              (_%target193915194064%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice194386194387%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193917194066%_))
                              (_%__match194429194430%_
                               _%e193903194032%_
                               _%hd193904194035%_
                               _%tl193905194037%_
                               _%e193906194040%_
                               _%hd193907194043%_
                               _%tl193908194045%_
                               _%e193909194048%_
                               _%hd193910194051%_
                               _%tl193911194053%_
                               _%e193912194056%_
                               _%hd193913194059%_
                               _%tl193914194061%_
                               _%__splice194386194387%_
                               _%target193915194064%_
                               _%tl193917194066%_)
                              (let ()
                                (declare (not safe))
                                (_%g193899193945%_)))))
                      (let () (declare (not safe)) (_%g193899193945%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl193908194045%_))
                      (let ((_%__splice194390194391%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl193908194045%_
                                '0))))
                        (let ((_%tl193934193968%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice194390194391%_ '1)))
                              (_%target193932193966%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice194390194391%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193934193968%_))
                              (_%__match194449194450%_
                               _%e193903194032%_
                               _%hd193904194035%_
                               _%tl193905194037%_
                               _%e193906194040%_
                               _%hd193907194043%_
                               _%tl193908194045%_
                               _%__splice194390194391%_
                               _%target193932193966%_
                               _%tl193934193968%_)
                              (let ()
                                (declare (not safe))
                                (_%g193899193945%_)))))
                      (let () (declare (not safe)) (_%g193899193945%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl193908194045%_))
                                                      (let ((_%__splice194390194391%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl193908194045%_ '0))))
                (let ((_%tl193934193968%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice194390194391%_ '1)))
                      (_%target193932193966%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice194390194391%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193934193968%_))
                      (_%__match194449194450%_
                       _%e193903194032%_
                       _%hd193904194035%_
                       _%tl193905194037%_
                       _%e193906194040%_
                       _%hd193907194043%_
                       _%tl193908194045%_
                       _%__splice194390194391%_
                       _%target193932193966%_
                       _%tl193934193968%_)
                      (let () (declare (not safe)) (_%g193899193945%_)))))
              (let () (declare (not safe)) (_%g193899193945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl193908194045%_))
                                                  (let ((_%__splice194390194391%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl193908194045%_
                                                            '0))))
                                                    (let ((_%tl193934193968%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice194390194391%_
                                                              '1)))
                                                          (_%target193932193966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice194390194391%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193934193968%_))
                                                          (_%__match194449194450%_
                                                           _%e193903194032%_
                                                           _%hd193904194035%_
                                                           _%tl193905194037%_
                                                           _%e193906194040%_
                                                           _%hd193907194043%_
                                                           _%tl193908194045%_
                                                           _%__splice194390194391%_
                                                           _%target193932193966%_
                                                           _%tl193934193968%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193899193945%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193899193945%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl193908194045%_))
                                              (let ((_%__splice194390194391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl193908194045%_
                                                        '0))))
                                                (let ((_%tl193934193968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice194390194391%_
                                                          '1)))
                                                      (_%target193932193966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice194390194391%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193934193968%_))
                                                      (_%__match194449194450%_
                                                       _%e193903194032%_
                                                       _%hd193904194035%_
                                                       _%tl193905194037%_
                                                       _%e193906194040%_
                                                       _%hd193907194043%_
                                                       _%tl193908194045%_
                                                       _%__splice194390194391%_
                                                       _%target193932193966%_
                                                       _%tl193934193968%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193899193945%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193899193945%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl193908194045%_))
                                      (let ((_%__splice194390194391%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl193908194045%_
                                                '0))))
                                        (let ((_%tl193934193968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194390194391%_
                                                  '1)))
                                              (_%target193932193966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194390194391%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193934193968%_))
                                              (_%__match194449194450%_
                                               _%e193903194032%_
                                               _%hd193904194035%_
                                               _%tl193905194037%_
                                               _%e193906194040%_
                                               _%hd193907194043%_
                                               _%tl193908194045%_
                                               _%__splice194390194391%_
                                               _%target193932193966%_
                                               _%tl193934193968%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g193899193945%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193899193945%_))))))
                          (let () (declare (not safe)) (_%g193899193945%_)))))
                  (let () (declare (not safe)) (_%g193899193945%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self190274193855%_ _%ctx193857%_ _%stx193858%_ _%args193859%_)
        (let* ((_%self193861%_ _%self190274193855%_)
               (_%self193863%_ _%self193861%_))
          (if (let ((__method195031
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self193863%_ 'check-arguments))))
                (if __method195031
                    (let ()
                      (declare (not safe))
                      (__method195031
                       _%self193863%_
                       _%ctx193857%_
                       _%stx193858%_
                       _%args193859%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self193863%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature193873%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193863%_ '2 '#f '#f)))
                     (_%signature193875%_ _%signature193873%_)
                     (_%$e193885%_
                      (if _%signature193875%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature193875%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e193885%_
                    ((lambda (_%unchecked193888%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked193888%_))
                           (let ((__tmp195053
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked193888%_
                                                          '()))
                                              (map (lambda (_%g193889193891%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx193857%_
                                                        _%g193889193891%_)))
                                                   _%args193859%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp195053
                              _%stx193858%_
                              _%ctx193857%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx193857%_ _%stx193858%_))))
                     _%$e193885%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx193857%_ _%stx193858%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx193857%_ _%stx193858%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass194315 __method-table194316)
        (let ((__check-arguments194317
               (let ((__tmp195054
                      (lambda ()
                        (let ((__method194318
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table194316
                                  'check-arguments
                                  '#f))))
                          (if __method194318
                              __method194318
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195054))))
          (lambda (_%self190274193855%_
                   _%ctx193857%_
                   _%stx193858%_
                   _%args193859%_)
            (let* ((_%self193861%_ _%self190274193855%_)
                   (_%self193863%_ _%self193861%_))
              (if ((force __check-arguments194317)
                   _%self193863%_
                   _%ctx193857%_
                   _%stx193858%_
                   _%args193859%_)
                  (let* ((_%signature193873%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self193863%_
                             '2
                             '#f
                             '#f)))
                         (_%signature193875%_ _%signature193873%_)
                         (_%$e193885%_
                          (if _%signature193875%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature193875%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e193885%_
                        ((lambda (_%unchecked193888%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked193888%_))
                               (let ((__tmp195055
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked193888%_
                                                              '()))
                                                  (map (lambda (_%g193889193891%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx193857%_
                                                            _%g193889193891%_)))
                                                       _%args193859%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp195055
                                  _%stx193858%_
                                  _%ctx193857%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx193857%_
                                  _%stx193858%_))))
                         _%$e193885%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx193857%_ _%stx193858%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx193857%_ _%stx193858%_))))))))
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
      (lambda (_%self190275193604%_ _%ctx193606%_ _%stx193607%_ _%args193608%_)
        (let* ((_%self193610%_ _%self190275193604%_)
               (_%self193612%_ _%self193610%_)
               (_%signature193621193623%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193612%_ '2 '#f '#f))))
          (if _%signature193621193623%_
              (let* ((_%signature193626%_ _%signature193621193623%_)
                     (_%argument-types193627193629%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature193626%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types193627193629%_
                    (let* ((_%argument-types193632%_
                            _%argument-types193627193629%_)
                           (_%argument-types193637%_
                            (let ((__tmp195056
                                   (lambda (_%t193635%_)
                                     (if _%t193635%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193607%_
                                            _%t193635%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp195056
                               _%argument-types193632%_))))
                      (let _%loop193639%_ ((_%rest-args193641%_ _%args193608%_)
                                           (_%rest-types193642%_
                                            _%argument-types193637%_)
                                           (_%result193643%_ '#t))
                        (let* ((_%rest-args193644193652%_ _%rest-args193641%_)
                               (_%else193646193660%_
                                (lambda () _%result193643%_))
                               (_%K193648193721%_
                                (lambda (_%rest-args193663%_ _%arg193664%_)
                                  (let* ((_%rest-types193665193676%_
                                          _%rest-types193642%_)
                                         (_%E193669193680%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types193665193676%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K193672193709%_
                                           (lambda (_%rest-types193706%_
                                                    _%type193707%_)
                                             (_%loop193639%_
                                              _%rest-args193663%_
                                              _%rest-types193706%_
                                              (if (gxc#check-expression-type!
                                                   _%stx193607%_
                                                   _%arg193664%_
                                                   _%type193707%_)
                                                  _%result193643%_
                                                  '#f))))
                                          (_%K193671193700%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx193607%_
                                                _%argument-types193637%_))))
                                          (_%K193670193690%_
                                           (lambda (_%tail-type193684%_)
                                             (if (let ((__tmp195057
                                                        (lambda (_%g193685193687%_)
                                                          (gxc#check-expression-type!
                                                           _%stx193607%_
                                                           _%g193685193687%_
                                                           _%tail-type193684%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp195057
                                                    _%rest-args193663%_))
                                                 _%result193643%_
                                                 '#f))))
                                      (let ((_%try-match193667193703%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types193665193676%_))
                                                   (_%K193671193700%_)
                                                   (let ((_%tail-type193693%_
                                                          _%rest-types193665193676%_))
                                                     (_%K193670193690%_
                                                      _%tail-type193693%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types193665193676%_))
                                            (let ((_%tl193674193714%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types193665193676%_)))
                                                  (_%hd193673193712%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types193665193676%_))))
                                              (let ((_%type193717%_
                                                     _%hd193673193712%_)
                                                    (_%rest-types193719%_
                                                     _%tl193674193714%_))
                                                (_%K193672193709%_
                                                 _%rest-types193719%_
                                                 _%type193717%_)))
                                            (_%try-match193667193703%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args193644193652%_))
                              (let ((_%hd193649193724%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args193644193652%_)))
                                    (_%tl193650193726%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args193644193652%_))))
                                (let* ((_%arg193729%_ _%hd193649193724%_)
                                       (_%rest-args193731%_
                                        _%tl193650193726%_))
                                  (_%K193648193721%_
                                   _%rest-args193731%_
                                   _%arg193729%_)))
                              (_%else193646193660%_)))))
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
      (lambda (_%self190276193413%_ _%ctx193415%_ _%stx193416%_ _%args193417%_)
        (let* ((_%self193419%_ _%self190276193413%_)
               (_%self193421%_ _%self193419%_)
               (_%g193431193441%_
                (lambda (_%g193432193438%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193432193438%_))))
               (_%g193430193479%_
                (lambda (_%g193432193444%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193432193444%_))
                      (let ((_%e193434193446%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193432193444%_))))
                        (let ((_%hd193435193449%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193434193446%_)))
                              (_%tl193436193451%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193434193446%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193436193451%_))
                              ((lambda (_%L193454%_)
                                 (let* ((_%klass193466%_
                                         (let ((__tmp195058
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193421%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193416%_
                                            __tmp195058)))
                                        (_%object193468%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx193415%_
                                            _%L193454%_)))
                                        (_%instance?193473%_
                                         (let ((_%$e193470%_
                                                (gxc#expression-type?
                                                 _%object193468%_
                                                 _%klass193466%_)))
                                           (if _%$e193470%_
                                               _%$e193470%_
                                               (gxc#expression-type?
                                                _%L193454%_
                                                _%klass193466%_)))))
                                   (if _%instance?193473%_
                                       (let ((__tmp195059
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object193468%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L193454%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object193468%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195059
                                          _%stx193416%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx193415%_
                                          _%stx193416%_)))))
                               _%hd193435193449%_)
                              (_%g193431193441%_ _%g193432193444%_))))
                      (_%g193431193441%_ _%g193432193444%_)))))
          (_%g193430193479%_ _%args193417%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self190277193207%_ _%ctx193209%_ _%stx193210%_ _%args193211%_)
        (let* ((_%self193213%_ _%self190277193207%_)
               (_%self193215%_ _%self193213%_)
               (_%g193225193235%_
                (lambda (_%g193226193232%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193226193232%_))))
               (_%g193224193288%_
                (lambda (_%g193226193238%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193226193238%_))
                      (let ((_%e193228193240%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193226193238%_))))
                        (let ((_%hd193229193243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193228193240%_)))
                              (_%tl193230193245%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193228193240%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193230193245%_))
                              ((lambda (_%L193248%_)
                                 (let* ((_%klass193260%_
                                         (let ((__tmp195060
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193215%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193210%_
                                            __tmp195060)))
                                        (_%object193262%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx193209%_
                                            _%L193248%_)))
                                        (_%instance?193267%_
                                         (let ((_%$e193264%_
                                                (gxc#expression-type?
                                                 _%object193262%_
                                                 _%klass193260%_)))
                                           (if _%$e193264%_
                                               _%$e193264%_
                                               (gxc#expression-type?
                                                _%L193248%_
                                                _%klass193260%_))))
                                        (_%klass193270%_ _%klass193260%_))
                                   (if _%instance?193267%_
                                       (let ((__tmp195061
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object193262%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L193248%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object193262%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195061
                                          _%stx193210%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass193270%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp195062
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass193270%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object193262%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195062
                                              _%stx193210%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass193270%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195063
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass193270%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object193262%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195063
                                                  _%stx193210%_))
                                               (let ((__tmp195064
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self193215%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object193262%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195064
                                                  _%stx193210%_)))))))
                               _%hd193229193243%_)
                              (_%g193225193235%_ _%g193226193238%_))))
                      (_%g193225193235%_ _%g193226193238%_)))))
          (_%g193224193288%_ _%args193211%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx192870%_)
        (let* ((_%__stx194459194460%_ _%stx192870%_)
               (_%g192875192916%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194459194460%_)))))
          (let ((_%__kont194461194462%_ (lambda () '#t))
                (_%__kont194463194464%_ (lambda () '#t))
                (_%__kont194465194466%_
                 (lambda (_%L192984%_ _%L192985%_)
                   (let ((_%rator-type193006193008%_
                          (let ((__tmp195065
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L192985%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp195065))))
                     (if _%rator-type193006193008%_
                         (let* ((_%rator-type193011%_
                                 _%rator-type193006193008%_)
                                (_%rator-signature193012193014%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type193011%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type193011%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature193012193014%_
                               (let* ((_%rator-signature193017%_
                                       _%rator-signature193012193014%_)
                                      (_%rator-effect193018193020%_
                                       (if _%rator-signature193017%_
                                           (##direct-structure-ref
                                            _%rator-signature193017%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect193018193020%_
                                     (let ((_%rator-effect193023%_
                                            _%rator-effect193018193020%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect193023%_)
                                               (equal? '(alloc)
                                                       _%rator-effect193023%_))
                                           (let ((__tmp195066
                                                  (let ((__tmp195067
                                                         (lambda (_%g193028193031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g193029193033%_)
                   (cons _%g193028193031%_ _%g193029193033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp195067
                                                     '()
                                                     _%L192984%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp195066))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont194469194470%_ (lambda () '#f)))
            (let ((_%__match194548194549%_
                   (lambda (_%e192891192928%_
                            _%hd192892192931%_
                            _%tl192893192933%_
                            _%e192894192936%_
                            _%hd192895192939%_
                            _%tl192896192941%_
                            _%e192897192944%_
                            _%hd192898192947%_
                            _%tl192899192949%_
                            _%e192900192952%_
                            _%hd192901192955%_
                            _%tl192902192957%_
                            _%__splice194467194468%_
                            _%target192903192960%_
                            _%tl192905192962%_)
                     (letrec ((_%loop192906192965%_
                               (lambda (_%hd192904192968%_
                                        _%rand192910192970%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd192904192968%_))
                                     (let ((_%e192907192973%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd192904192968%_))))
                                       (let ((_%lp-tl192909192978%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e192907192973%_)))
                                             (_%lp-hd192908192976%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e192907192973%_))))
                                         (_%loop192906192965%_
                                          _%lp-tl192909192978%_
                                          (cons _%lp-hd192908192976%_
                                                _%rand192910192970%_))))
                                     (let ((_%rand192911192981%_
                                            (reverse _%rand192910192970%_)))
                                       (_%__kont194465194466%_
                                        _%rand192911192981%_
                                        _%hd192901192955%_))))))
                       (_%loop192906192965%_ _%target192903192960%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194459194460%_))
                  (let ((_%e192877193064%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194459194460%_))))
                    (let ((_%tl192879193069%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192877193064%_)))
                          (_%hd192878193067%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192877193064%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192878193067%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd192878193067%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192879193069%_))
                                  (let ((_%e192880193072%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192879193069%_))))
                                    (let ((_%tl192882193077%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192880193072%_)))
                                          (_%hd192881193075%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192880193072%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192882193077%_))
                                          (_%__kont194461194462%_)
                                          (_%__kont194469194470%_))))
                                  (_%__kont194469194470%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192878193067%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192879193069%_))
                                      (let ((_%e192886193049%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192879193069%_))))
                                        (let ((_%tl192888193054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192886193049%_)))
                                              (_%hd192887193052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192886193049%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192888193054%_))
                                              (_%__kont194463194464%_)
                                              (_%__kont194469194470%_))))
                                      (_%__kont194469194470%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd192878193067%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192879193069%_))
                                          (let ((_%e192894192936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192879193069%_))))
                                            (let ((_%tl192896192941%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192894192936%_)))
                                                  (_%hd192895192939%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192894192936%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd192895192939%_))
                                                  (let ((_%e192897192944%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd192895192939%_))))
                                                    (let ((_%tl192899192949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192897192944%_)))
                                                          (_%hd192898192947%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192897192944%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd192898192947%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd192898192947%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192899192949%_))
                          (let ((_%e192900192952%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192899192949%_))))
                            (let ((_%tl192902192957%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192900192952%_)))
                                  (_%hd192901192955%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192900192952%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192902192957%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl192896192941%_))
                                      (let ((_%__splice194467194468%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl192896192941%_
                                                '0))))
                                        (let ((_%tl192905192962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194467194468%_
                                                  '1)))
                                              (_%target192903192960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194467194468%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192905192962%_))
                                              (_%__match194548194549%_
                                               _%e192877193064%_
                                               _%hd192878193067%_
                                               _%tl192879193069%_
                                               _%e192894192936%_
                                               _%hd192895192939%_
                                               _%tl192896192941%_
                                               _%e192897192944%_
                                               _%hd192898192947%_
                                               _%tl192899192949%_
                                               _%e192900192952%_
                                               _%hd192901192955%_
                                               _%tl192902192957%_
                                               _%__splice194467194468%_
                                               _%target192903192960%_
                                               _%tl192905192962%_)
                                              (_%__kont194469194470%_))))
                                      (_%__kont194469194470%_))
                                  (_%__kont194469194470%_))))
                          (_%__kont194469194470%_))
                      (_%__kont194469194470%_))
                  (_%__kont194469194470%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194469194470%_))))
                                          (_%__kont194469194470%_))
                                      (_%__kont194469194470%_))))
                          (_%__kont194469194470%_))))
                  (_%__kont194469194470%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx192865%_ _%klass192866%_)
        (let ((_%expr-type192868%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx192865%_))))
          (if _%expr-type192868%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type192868%_ _%klass192866%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx192843%_ _%expr192844%_ _%type192845%_)
        (if (not _%type192845%_)
            '#f
            (let ((_%$e192848%_
                   (eq? (##structure-ref _%type192845%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e192848%_
                  _%$e192848%_
                  (let ((_%expr-type192852%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr192844%_))))
                    (if (not _%expr-type192852%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type192852%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e192856%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type192852%_
                                      'gxc#!abort::t))))
                              (if _%$e192856%_
                                  _%$e192856%_
                                  (let ((_%$e192859%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type192852%_
                                            _%type192845%_))))
                                    (if _%$e192859%_
                                        _%$e192859%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type192845%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type192845%_
                                                   _%expr-type192852%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx192843%_
                                                   _%expr192844%_
                                                   _%expr-type192852%_
                                                   _%type192845%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self190278192655%_ _%ctx192657%_ _%stx192658%_ _%args192659%_)
        (let* ((_%self192661%_ _%self190278192655%_)
               (_%self192663%_ _%self192661%_)
               (_%klass192673%_
                (let ((__tmp195068
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self192663%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx192658%_ __tmp195068)))
               (_%fields192675%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass192673%_
                           '5
                           '#f
                           '#f))))
               (_%args192681%_
                (map (lambda (_%g192676192678%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx192657%_ _%g192676192678%_)))
                     _%args192659%_))
               (_%inline-make-object192683%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self192663%_
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
                           _%self192663%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields192675%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass192686%_ _%klass192673%_)
               (_%$e192700%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass192686%_ '6 '#f '#f))))
          (if _%$e192700%_
              ((lambda (_%ctor192703%_)
                 (let ((_%$obj192705%_
                        (let ((__tmp195069
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp195069)))
                       (_%ctor-impl192706%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass192686%_
                           _%ctor192703%_))))
                   (let ((__tmp195070
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj192705%_ '())
                                                  (cons _%inline-make-object192683%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl192706%_
                                                            (let ((__tmp195071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl192706%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj192705%_ '()))
                                             _%args192681%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp195071
                       _%stx192658%_
                       _%ctx192657%_))
                    (let ((_%$ctor192708%_
                           (let ((__tmp195072
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp195072))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor192708%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192663%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj192705%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor192703%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor192708%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor192708%_ '()))
                              (cons (cons '%#ref (cons _%$obj192705%_ '()))
                                    _%args192681%_)))
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
                             _%self192663%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor192703%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj192705%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp195070 _%stx192658%_))))
               _%$e192700%_)
              (let ((_%$e192710%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass192686%_
                        '10
                        '#f
                        '#f))))
                (if _%$e192710%_
                    ((lambda (_%metaclass192713%_)
                       (let* ((_%$obj192715%_
                               (let ((__tmp195073
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195073)))
                              (_%metakons192717%_
                               (let ((__tmp195074
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx192658%_
                                         _%metaclass192713%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp195074
                                  'instance-init!)))
                              (__tmp195075
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj192715%_
                                                             '())
                                                       (cons _%inline-make-object192683%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons192717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp195076
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons192717%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self192663%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj192715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args192681%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp195076
                            _%stx192658%_
                            _%ctx192657%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self192663%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj192715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args192681%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj192715%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp195075 _%stx192658%_)))
                     _%$e192710%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass192686%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp195077
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args192681%_))))
                              (declare (not safe))
                              (##fx= __tmp195077 _%fields192675%_))
                            (let ((__tmp195078
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self192663%_
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
                                              _%self192663%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args192681%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp195078
                               _%stx192658%_))
                            (let ((__tmp195080
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self192663%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp195079
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass192686%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx192658%_
                               __tmp195080
                               __tmp195079)))
                        (let ((_%$obj192722%_
                               (let ((__tmp195081
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195081))))
                          (let _%lp192724%_ ((_%rest192726%_ _%args192681%_)
                                             (_%initializers192727%_ '()))
                            (let* ((_%__stx194551194552%_ _%rest192726%_)
                                   (_%g192731192752%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx194551194552%_)))))
                              (let ((_%__kont194553194554%_
                                     (lambda (_%L192806%_
                                              _%L192807%_
                                              _%L192808%_)
                                       (let* ((_%slot192835%_
                                               (let ((__tmp195082
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L192808%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp195082)))
                                              (_%off192837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass192686%_
                                                  _%slot192835%_))))
                                         (if _%off192837%_
                                             (_%lp192724%_
                                              _%L192806%_
                                              (cons (cons _%off192837%_
                                                          _%L192807%_)
                                                    _%initializers192727%_))
                                             (let ((__tmp195083
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self192663%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx192658%_
                                                __tmp195083
                                                _%slot192835%_))))))
                                    (_%__kont194555194556%_
                                     (lambda ()
                                       (let ((__tmp195084
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj192722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object192683%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp195087
                                     (cons (cons '%#ref
                                                 (cons _%$obj192722%_ '()))
                                           '()))
                                    (__tmp195085
                                     (let ((__tmp195086
                                            (lambda (_%i192766%_ _%r192767%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self192663%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i192766%_) '()))
                              (cons (cons '%#ref (cons _%$obj192722%_ '()))
                                    (cons (cdr _%i192766%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r192767%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp195086
                                        '()
                                        _%initializers192727%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp195087 __tmp195085)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195084
                                          _%stx192658%_))))
                                    (_%__kont194557194558%_
                                     (lambda ()
                                       (let ((__tmp195088
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj192722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object192683%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj192722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args192681%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj192722%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195088
                                          _%stx192658%_)))))
                                (let* ((_%g192729192769%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx194551194552%_))
                                              (_%__kont194555194556%_)
                                              (_%__kont194557194558%_))))
                                       (_%__match194588194589%_
                                        (lambda (_%e192736192774%_
                                                 _%hd192737192777%_
                                                 _%tl192738192779%_
                                                 _%e192739192782%_
                                                 _%hd192740192785%_
                                                 _%tl192741192787%_
                                                 _%e192742192790%_
                                                 _%hd192743192793%_
                                                 _%tl192744192795%_
                                                 _%e192745192798%_
                                                 _%hd192746192801%_
                                                 _%tl192747192803%_)
                                          (let ((_%L192806%_
                                                 _%tl192747192803%_)
                                                (_%L192807%_
                                                 _%hd192746192801%_)
                                                (_%L192808%_
                                                 _%hd192743192793%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L192808%_))
                                                (_%__kont194553194554%_
                                                 _%L192806%_
                                                 _%L192807%_
                                                 _%L192808%_)
                                                (_%__kont194557194558%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx194551194552%_))
                                      (let ((_%e192736192774%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx194551194552%_))))
                                        (let ((_%tl192738192779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192736192774%_)))
                                              (_%hd192737192777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192736192774%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd192737192777%_))
                                              (let ((_%e192739192782%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd192737192777%_))))
                                                (let ((_%tl192741192787%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192739192782%_)))
                                                      (_%hd192740192785%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192739192782%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd192740192785%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd192740192785%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192741192787%_))
                      (let ((_%e192742192790%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192741192787%_))))
                        (let ((_%tl192744192795%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192742192790%_)))
                              (_%hd192743192793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192742192790%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192744192795%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192738192779%_))
                                  (let ((_%e192745192798%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192738192779%_))))
                                    (let ((_%tl192747192803%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192745192798%_)))
                                          (_%hd192746192801%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192745192798%_))))
                                      (_%__match194588194589%_
                                       _%e192736192774%_
                                       _%hd192737192777%_
                                       _%tl192738192779%_
                                       _%e192739192782%_
                                       _%hd192740192785%_
                                       _%tl192741192787%_
                                       _%e192742192790%_
                                       _%hd192743192793%_
                                       _%tl192744192795%_
                                       _%e192745192798%_
                                       _%hd192746192801%_
                                       _%tl192747192803%_)))
                                  (_%__kont194557194558%_))
                              (_%__kont194557194558%_))))
                      (_%__kont194557194558%_))
                  (_%__kont194557194558%_))
              (_%__kont194557194558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194557194558%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192729192769%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self190279192436%_ _%ctx192438%_ _%stx192439%_ _%args192440%_)
        (let* ((_%self192442%_ _%self190279192436%_)
               (_%self192444%_ _%self192442%_)
               (_%arguments-ok?192454%_
                (let ((__method195032
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self192444%_ 'check-arguments))))
                  (if __method195032
                      (let ()
                        (declare (not safe))
                        (__method195032
                         _%self192444%_
                         _%ctx192438%_
                         _%stx192439%_
                         _%args192440%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self192444%_
                                 'check-arguments))
                        '#!void))))
               (_%g192456192466%_
                (lambda (_%g192457192463%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192457192463%_))))
               (_%g192455192530%_
                (lambda (_%g192457192469%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192457192469%_))
                      (let ((_%e192459192471%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192457192469%_))))
                        (let ((_%hd192460192474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192459192471%_)))
                              (_%tl192461192476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192459192471%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192461192476%_))
                              ((lambda (_%L192479%_)
                                 (let* ((_%klass192492%_
                                         (let ((__tmp195089
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self192444%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx192439%_
                                            __tmp195089)))
                                        (_%field192494%_
                                         (let ((__tmp195090
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self192444%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass192492%_
                                            __tmp195090)))
                                        (_%object192496%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx192438%_
                                            _%L192479%_)))
                                        (_%klass192499%_ _%klass192492%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass192499%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp195091
                                              (cons (if (or _%arguments-ok?192454%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192444%_
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
                                 _%self192444%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field192494%_ '()))
                        (cons _%object192496%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195091
                                          _%stx192439%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass192499%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp195092
                                                  (cons (if (or _%arguments-ok?192454%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self192444%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192444%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field192494%_ '()))
                            (cons _%object192496%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195092
                                              _%stx192439%_))
                                           (let ((_%$e192518%_
                                                  (let ((__tmp195093
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self192444%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass192499%_
                                                     __tmp195093))))
                                             (if _%$e192518%_
                                                 ((lambda (_%klass192521%_)
                                                    (let ((__tmp195094
                                                           (cons (if (or _%arguments-ok?192454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192444%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self192444%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field192494%_ '()))
                                     (cons _%object192496%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp195094 _%stx192439%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e192518%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self192444%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp195095
                                                            (let ((_%$obj192527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp195096
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp195096))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj192527%_ '())
                                              (cons _%object192496%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass192499%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj192527%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192444%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field192494%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj192527%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?192454%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj192527%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192444%_
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
                                                             _%self192444%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj192527%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self192444%_
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
               (gxc#xform-wrap-source __tmp195095 _%stx192439%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp195097
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object192496%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192444%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp195097 _%stx192439%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd192460192474%_)
                              (_%g192456192466%_ _%g192457192469%_))))
                      (_%g192456192466%_ _%g192457192469%_)))))
          (_%g192455192530%_ _%args192440%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass194319 __method-table194320)
        (let ((__check-arguments194321
               (let ((__tmp195098
                      (lambda ()
                        (let ((__method194322
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table194320
                                  'check-arguments
                                  '#f))))
                          (if __method194322
                              __method194322
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195098)))
              (__slot194323
               (let ((__slot194324
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass194319 'slot))))
                 (if __slot194324
                     __slot194324
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self190279192436%_
                   _%ctx192438%_
                   _%stx192439%_
                   _%args192440%_)
            (let* ((_%self192442%_ _%self190279192436%_)
                   (_%self192444%_ _%self192442%_)
                   (_%arguments-ok?192454%_
                    ((force __check-arguments194321)
                     _%self192444%_
                     _%ctx192438%_
                     _%stx192439%_
                     _%args192440%_))
                   (_%g192456192466%_
                    (lambda (_%g192457192463%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g192457192463%_))))
                   (_%g192455192530%_
                    (lambda (_%g192457192469%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g192457192469%_))
                          (let ((_%e192459192471%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g192457192469%_))))
                            (let ((_%hd192460192474%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192459192471%_)))
                                  (_%tl192461192476%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192459192471%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192461192476%_))
                                  ((lambda (_%L192479%_)
                                     (let* ((_%klass192492%_
                                             (let ((__tmp195099
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self192444%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx192439%_
                                                __tmp195099)))
                                            (_%field192494%_
                                             (let ((__tmp195100
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self192444%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass192492%_
                                                __tmp195100)))
                                            (_%object192496%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx192438%_
                                                _%L192479%_)))
                                            (_%klass192499%_ _%klass192492%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass192499%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp195101
                                                  (cons (if (or _%arguments-ok?192454%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self192444%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192444%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field192494%_ '()))
                            (cons _%object192496%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195101
                                              _%stx192439%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass192499%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195102
                                                      (cons (if (or _%arguments-ok?192454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self192444%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192444%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field192494%_ '()))
                                (cons _%object192496%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195102
                                                  _%stx192439%_))
                                               (let ((_%$e192518%_
                                                      (let ((__tmp195103
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self192444%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass192499%_ __tmp195103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e192518%_
                                                     ((lambda (_%klass192521%_)
                                                        (let ((__tmp195104
                                                               (cons (if (or _%arguments-ok?192454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192444%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self192444%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field192494%_ '()))
                                         (cons _%object192496%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp195104 _%stx192439%_)))
              _%$e192518%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self192444%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp195105
                                                                (let ((_%$obj192527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp195106
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195106))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj192527%_ '())
                                                  (cons _%object192496%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass192499%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj192527%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192444%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field192494%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj192527%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?192454%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj192527%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192444%_
                               __slot194323
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
                        (##unchecked-structure-ref _%self192444%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj192527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192444%_
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
                   (gxc#xform-wrap-source __tmp195105 _%stx192439%_))
                 (let ((__tmp195107
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object192496%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192444%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp195107 _%stx192439%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd192460192474%_)
                                  (_%g192456192466%_ _%g192457192469%_))))
                          (_%g192456192466%_ _%g192457192469%_)))))
              (_%g192455192530%_ _%args192440%_))))))
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
      (lambda (_%self190280192198%_ _%ctx192200%_ _%stx192201%_ _%args192202%_)
        (let* ((_%self192204%_ _%self190280192198%_)
               (_%self192206%_ _%self192204%_)
               (_%arguments-ok?192216%_
                (let ((__method195033
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self192206%_ 'check-arguments))))
                  (if __method195033
                      (let ()
                        (declare (not safe))
                        (__method195033
                         _%self192206%_
                         _%ctx192200%_
                         _%stx192201%_
                         _%args192202%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self192206%_
                                 'check-arguments))
                        '#!void))))
               (_%g192218192232%_
                (lambda (_%g192219192229%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192219192229%_))))
               (_%g192217192311%_
                (lambda (_%g192219192235%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192219192235%_))
                      (let ((_%e192222192237%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192219192235%_))))
                        (let ((_%hd192223192240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192222192237%_)))
                              (_%tl192224192242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192222192237%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192224192242%_))
                              (let ((_%e192225192245%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192224192242%_))))
                                (let ((_%hd192226192248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192225192245%_)))
                                      (_%tl192227192250%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192225192245%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192227192250%_))
                                      ((lambda (_%L192253%_ _%L192254%_)
                                         (let* ((_%klass192270%_
                                                 (let ((__tmp195108
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192206%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx192201%_
                                                    __tmp195108)))
                                                (_%field192272%_
                                                 (let ((__tmp195109
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192206%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass192270%_
                                                    __tmp195109)))
                                                (_%object192274%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx192200%_
                                                    _%L192254%_)))
                                                (_%value192276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx192200%_
                                                    _%L192253%_)))
                                                (_%klass192279%_
                                                 _%klass192270%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass192279%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195110
                                                      (cons (if (or _%arguments-ok?192216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self192206%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192206%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field192272%_ '()))
                                (cons _%object192274%_
                                      (cons _%value192276%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195110
                                                  _%stx192201%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass192279%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp195111
                                                          (cons (if (or _%arguments-ok?192216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self192206%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192206%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field192272%_ '()))
                                    (cons _%object192274%_
                                          (cons _%value192276%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp195111
                                                      _%stx192201%_))
                                                   (let ((_%$e192299%_
                                                          (let ((__tmp195112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192206%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass192279%_
                     __tmp195112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e192299%_
                                                         ((lambda (_%klass192302%_)
                                                            (let ((__tmp195113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?192216%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192206%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self192206%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field192272%_ '()))
                                             (cons _%object192274%_
                                                   (cons _%value192276%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195113 _%stx192201%_)))
                  _%$e192299%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self192206%_ '4 '#f '#f))
                     (let ((__tmp195114
                            (let ((_%$obj192308%_
                                   (let ((__tmp195115
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp195115))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj192308%_ '())
                                                      (cons _%object192274%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass192279%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj192308%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self192206%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field192272%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj192308%_
                                                              '()))
                                                  (cons _%value192276%_
                                                        '())))))
                          (cons (if _%arguments-ok?192216%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj192308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self192206%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value192276%_ '())))))
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
                             _%self192206%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj192308%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192206%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value192276%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp195114 _%stx192201%_))
                     (let ((__tmp195116
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object192274%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192206%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value192276%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp195116
                        _%stx192201%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd192226192248%_
                                       _%hd192223192240%_)
                                      (_%g192218192232%_ _%g192219192235%_))))
                              (_%g192218192232%_ _%g192219192235%_))))
                      (_%g192218192232%_ _%g192219192235%_)))))
          (_%g192217192311%_ _%args192202%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass194325 __method-table194326)
        (let ((__check-arguments194327
               (let ((__tmp195117
                      (lambda ()
                        (let ((__method194328
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table194326
                                  'check-arguments
                                  '#f))))
                          (if __method194328
                              __method194328
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195117))))
          (lambda (_%self190280192198%_
                   _%ctx192200%_
                   _%stx192201%_
                   _%args192202%_)
            (let* ((_%self192204%_ _%self190280192198%_)
                   (_%self192206%_ _%self192204%_)
                   (_%arguments-ok?192216%_
                    ((force __check-arguments194327)
                     _%self192206%_
                     _%ctx192200%_
                     _%stx192201%_
                     _%args192202%_))
                   (_%g192218192232%_
                    (lambda (_%g192219192229%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g192219192229%_))))
                   (_%g192217192311%_
                    (lambda (_%g192219192235%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g192219192235%_))
                          (let ((_%e192222192237%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g192219192235%_))))
                            (let ((_%hd192223192240%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192222192237%_)))
                                  (_%tl192224192242%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192222192237%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192224192242%_))
                                  (let ((_%e192225192245%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192224192242%_))))
                                    (let ((_%hd192226192248%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192225192245%_)))
                                          (_%tl192227192250%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192225192245%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192227192250%_))
                                          ((lambda (_%L192253%_ _%L192254%_)
                                             (let* ((_%klass192270%_
                                                     (let ((__tmp195118
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192206%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx192201%_
                                                        __tmp195118)))
                                                    (_%field192272%_
                                                     (let ((__tmp195119
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192206%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass192270%_
                                                        __tmp195119)))
                                                    (_%object192274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx192200%_
                                                        _%L192254%_)))
                                                    (_%value192276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx192200%_
                                                        _%L192253%_)))
                                                    (_%klass192279%_
                                                     _%klass192270%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass192279%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp195120
                                                          (cons (if (or _%arguments-ok?192216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self192206%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192206%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field192272%_ '()))
                                    (cons _%object192274%_
                                          (cons _%value192276%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp195120
                                                      _%stx192201%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass192279%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp195121
                                                              (cons (if (or _%arguments-ok?192216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self192206%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192206%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field192272%_ '()))
                                        (cons _%object192274%_
                                              (cons _%value192276%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp195121 _%stx192201%_))
               (let ((_%$e192299%_
                      (let ((__tmp195122
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self192206%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass192279%_
                         __tmp195122))))
                 (if _%$e192299%_
                     ((lambda (_%klass192302%_)
                        (let ((__tmp195123
                               (cons (if (or _%arguments-ok?192216%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self192206%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self192206%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field192272%_
                                                             '()))
                                                 (cons _%object192274%_
                                                       (cons _%value192276%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp195123 _%stx192201%_)))
                      _%$e192299%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192206%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp195124
                                (let ((_%$obj192308%_
                                       (let ((__tmp195125
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp195125))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj192308%_
                                                                '())
                                                          (cons _%object192274%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass192279%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj192308%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self192206%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field192272%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj192308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value192276%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?192216%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj192308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self192206%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value192276%_ '())))))
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
                                 _%self192206%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj192308%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192206%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value192276%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp195124 _%stx192201%_))
                         (let ((__tmp195126
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object192274%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192206%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value192276%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp195126
                            _%stx192201%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd192226192248%_
                                           _%hd192223192240%_)
                                          (_%g192218192232%_
                                           _%g192219192235%_))))
                                  (_%g192218192232%_ _%g192219192235%_))))
                          (_%g192218192232%_ _%g192219192235%_)))))
              (_%g192217192311%_ _%args192202%_))))))
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
      (lambda (_%self190281192011%_ _%ctx192013%_ _%stx192014%_ _%args192015%_)
        (let* ((_%self192017%_ _%self190281192011%_)
               (_%self192019%_ _%self192017%_)
               (_%self192028192038%_ _%self192019%_)
               (_%E192030192042%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self192028192038%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K192031192052%_
                (lambda (_%inline192045%_ _%dispatch192046%_ _%arity192047%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self192019%_
                         _%args192015%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx192014%_
                         _%arity192047%_)))
                  (if _%inline192045%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp195127 (_%inline192045%_ _%stx192014%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp195127
                           _%stx192014%_
                           _%ctx192013%_)))
                      (if (and _%dispatch192046%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch192046%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch192046%_))
                            (let ((__tmp195128
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch192046%_
                                                           '()))
                                               _%args192015%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp195128
                               _%stx192014%_
                               _%ctx192013%_)))
                          (gxc#!procedure::optimize-call
                           _%self192019%_
                           _%ctx192013%_
                           _%stx192014%_
                           _%args192015%_)))))
               (_%e192032192055%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192028192038%_ '1 '#f '#f)))
               (_%e192033192058%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192028192038%_ '2 '#f '#f)))
               (_%e192034192061%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192028192038%_ '3 '#f '#f)))
               (_%arity192064%_ _%e192034192061%_)
               (_%e192035192066%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192028192038%_ '4 '#f '#f)))
               (_%dispatch192069%_ _%e192035192066%_)
               (_%e192036192071%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192028192038%_ '5 '#f '#f)))
               (_%inline192074%_ _%e192036192071%_))
          (_%K192031192052%_
           _%inline192074%_
           _%dispatch192069%_
           _%arity192064%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self190282191861%_ _%ctx191863%_ _%stx191864%_ _%args191865%_)
        (let* ((_%self191867%_ _%self190282191861%_)
               (_%self191869%_ _%self191867%_)
               (_%$e191883%_
                (let ((__tmp195130
                       (lambda (_%g191878191880%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g191878191880%_
                            _%args191865%_))))
                      (__tmp195129
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self191869%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp195130 __tmp195129))))
          (if _%$e191883%_
              ((lambda (_%clause191886%_)
                 (let ((__method195034
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause191886%_ 'optimize-call))))
                   (if __method195034
                       (let ()
                         (declare (not safe))
                         (__method195034
                          _%clause191886%_
                          _%ctx191863%_
                          _%stx191864%_
                          _%args191865%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause191886%_
                                  'optimize-call))
                         '#!void))))
               _%$e191883%_)
              (let ((__tmp195131
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191869%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx191864%_
                 __tmp195131))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self190283191599%_ _%ctx191601%_ _%stx191602%_ _%args191603%_)
        (let* ((_%self191605%_ _%self190283191599%_)
               (_%self191607%_ _%self191605%_)
               (_%self191616191625%_ _%self191607%_)
               (_%E191618191629%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self191616191625%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K191619191720%_
                (lambda (_%dispatch191632%_ _%table191633%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch191632%_))
                      (let* ((_%g191634191644%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch191632%_)))
                             (_%else191636191652%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch191632%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx191601%_
                                   _%stx191602%_))))
                             (_%K191638191701%_
                              (lambda (_%main191655%_ _%keys191656%_)
                                (let ((_g195132_
                                       (gxc#!kw-lambda-split-args
                                        _%stx191602%_
                                        _%args191603%_)))
                                  (begin
                                    (let ((_g195133_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195132_)
                                                 (##vector-length _g195132_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195133_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195133_)))
                                    (let ((_%pargs191658%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195132_ 0)))
                                          (_%kwargs191659%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195132_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main191655%_))
                                        (if _%table191633%_
                                            (let ((_%xargs191667%_
                                                   (map (lambda (_%key191661%_)
                                                          (let ((_%$e191663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key191661%_ _%kwargs191659%_))))
                    (if _%$e191663%_ _%$e191663%_ '(%#ref absent-value))))
                _%keys191656%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw191669%_)
                                                 (if (memq (car _%kw191669%_)
                                                           _%keys191656%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx191602%_
                                                        _%keys191656%_
                                                        _%kw191669%_))))
                                               _%kwargs191659%_)
                                              (let ((__tmp195134
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main191655%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs191658%_
                                  _%xargs191667%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp195134
                                                 _%stx191602%_
                                                 _%ctx191601%_)))
                                            (let* ((_%kwt191671%_
                                                    (let ((__tmp195135
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp195135)))
                                                   (_%kwvars191675%_
                                                    (map (lambda (_%_191673%_)
                                                           (let ((__tmp195136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp195136)))
                 _%kwargs191659%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind191680%_
                                                    (map (lambda (_%kw191677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar191678%_)
                   (cons (cons _%kwvar191678%_ '())
                         (cons (cdr _%kw191677%_) '())))
                 _%kwargs191659%_
                 _%kwvars191675%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset191685%_
                                                    (map (lambda (_%kw191682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar191683%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt191671%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw191682%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar191683%_
                                                             '()))
                                                 '()))))))
                 _%kwargs191659%_
                 _%kwvars191675%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs191690%_
                                                    (map (lambda (_%kw191687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar191688%_)
                   (cons (car _%kw191687%_)
                         (cons '%#ref (cons _%kwvar191688%_ '()))))
                 _%kwargs191659%_
                 _%kwvars191675%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs191698%_
                                                    (map (lambda (_%key191692%_)
                                                           (let ((_%$e191694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key191692%_ _%xkwargs191690%_))))
                     (if _%$e191694%_ _%$e191694%_ '(%#ref absent-value))))
                 _%keys191656%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp195137
                                                    (cons '%#let-values
                                                          (cons _%kwbind191680%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt191671%_ '())
                                                      (cons (let ((__tmp195138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs191659%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195138 _%stx191602%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp195139
                                                             (cons (let ((__tmp195140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main191655%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt191671%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs191658%_
                                                       _%xargs191698%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp195140 _%stx191602%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp195139 _%kwset191685%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp195137
                                               _%stx191602%_
                                               _%ctx191601%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g191634191644%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e191639191704%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g191634191644%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e191640191707%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g191634191644%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e191641191710%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g191634191644%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys191713%_ _%e191641191710%_)
                                   (_%e191642191715%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g191634191644%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main191718%_ _%e191642191715%_))
                              (_%K191638191701%_
                               _%main191718%_
                               _%keys191713%_))
                            (_%else191636191652%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx191601%_ _%stx191602%_)))))
               (_%e191620191723%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191616191625%_ '1 '#f '#f)))
               (_%e191621191726%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191616191625%_ '2 '#f '#f)))
               (_%e191622191729%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191616191625%_ '3 '#f '#f)))
               (_%table191732%_ _%e191622191729%_)
               (_%e191623191734%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191616191625%_ '4 '#f '#f)))
               (_%dispatch191737%_ _%e191623191734%_))
          (_%K191619191720%_ _%dispatch191737%_ _%table191732%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx191212%_ _%args191213%_)
        (let _%lp191215%_ ((_%rest191217%_ _%args191213%_)
                           (_%pargs191218%_ '())
                           (_%kwargs191219%_ '()))
          (let* ((_%__stx194593194594%_ _%rest191217%_)
                 (_%g191225191277%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx194593194594%_)))))
            (let ((_%__kont194595194596%_
                   (lambda (_%L191456%_ _%L191457%_)
                     (_%lp191215%_
                      _%L191456%_
                      (cons _%L191457%_ _%pargs191218%_)
                      _%kwargs191219%_)))
                  (_%__kont194597194598%_
                   (lambda (_%L191402%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L191402%_ _%pargs191218%_))
                             (reverse _%kwargs191219%_))))
                  (_%__kont194599194600%_
                   (lambda (_%L191349%_ _%L191350%_ _%L191351%_)
                     (let ((_%kw191368%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L191351%_))))
                       (if (assq _%kw191368%_ _%kwargs191219%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx191212%_
                              _%kw191368%_))
                           (_%lp191215%_
                            _%L191349%_
                            _%pargs191218%_
                            (cons (cons _%kw191368%_ _%L191350%_)
                                  _%kwargs191219%_))))))
                  (_%__kont194601194602%_
                   (lambda (_%L191297%_ _%L191298%_)
                     (_%lp191215%_
                      _%L191297%_
                      (cons _%L191298%_ _%pargs191218%_)
                      _%kwargs191219%_)))
                  (_%__kont194603194604%_
                   (lambda ()
                     (values (reverse _%pargs191218%_)
                             (reverse _%kwargs191219%_)))))
              (let ((_%__match194700194701%_
                     (lambda (_%e191256191317%_
                              _%hd191257191320%_
                              _%tl191258191322%_
                              _%e191259191325%_
                              _%hd191260191328%_
                              _%tl191261191330%_
                              _%e191262191333%_
                              _%hd191263191336%_
                              _%tl191264191338%_
                              _%e191265191341%_
                              _%hd191266191344%_
                              _%tl191267191346%_)
                       (let ((_%L191349%_ _%tl191267191346%_)
                             (_%L191350%_ _%hd191266191344%_)
                             (_%L191351%_ _%hd191263191336%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L191351%_))
                             (_%__kont194599194600%_
                              _%L191349%_
                              _%L191350%_
                              _%L191351%_)
                             (_%__kont194601194602%_
                              _%tl191258191322%_
                              _%hd191257191320%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx194593194594%_))
                    (let ((_%e191229191421%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx194593194594%_))))
                      (let ((_%tl191231191426%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191229191421%_)))
                            (_%hd191230191424%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191229191421%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd191230191424%_))
                            (let ((_%e191232191429%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd191230191424%_))))
                              (let ((_%tl191234191434%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191232191429%_)))
                                    (_%hd191233191432%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191232191429%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191233191432%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd191233191432%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191234191434%_))
                                            (let ((_%e191235191437%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191234191434%_))))
                                              (let ((_%tl191237191442%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191235191437%_)))
                                                    (_%hd191236191440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191235191437%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd191236191440%_))
                                                    (let ((_%e191238191445%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd191236191440%_))))
                                                      (if (equal? _%e191238191445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191237191442%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191231191426%_))
                          (let ((_%e191239191448%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191231191426%_))))
                            (let ((_%tl191241191453%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191239191448%_)))
                                  (_%hd191240191451%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191239191448%_))))
                              (_%__kont194595194596%_
                               _%tl191241191453%_
                               _%hd191240191451%_)))
                          (_%__kont194601194602%_
                           _%tl191231191426%_
                           _%hd191230191424%_))
                      (_%__kont194601194602%_
                       _%tl191231191426%_
                       _%hd191230191424%_))
                  (if (equal? _%e191238191445%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191237191442%_))
                          (_%__kont194597194598%_ _%tl191231191426%_)
                          (_%__kont194601194602%_
                           _%tl191231191426%_
                           _%hd191230191424%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191237191442%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191231191426%_))
                              (let ((_%e191265191341%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191231191426%_))))
                                (let ((_%tl191267191346%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191265191341%_)))
                                      (_%hd191266191344%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191265191341%_))))
                                  (_%__match194700194701%_
                                   _%e191229191421%_
                                   _%hd191230191424%_
                                   _%tl191231191426%_
                                   _%e191232191429%_
                                   _%hd191233191432%_
                                   _%tl191234191434%_
                                   _%e191235191437%_
                                   _%hd191236191440%_
                                   _%tl191237191442%_
                                   _%e191265191341%_
                                   _%hd191266191344%_
                                   _%tl191267191346%_)))
                              (_%__kont194601194602%_
                               _%tl191231191426%_
                               _%hd191230191424%_))
                          (_%__kont194601194602%_
                           _%tl191231191426%_
                           _%hd191230191424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191237191442%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191231191426%_))
                                                            (let ((_%e191265191341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191231191426%_))))
                      (let ((_%tl191267191346%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191265191341%_)))
                            (_%hd191266191344%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191265191341%_))))
                        (_%__match194700194701%_
                         _%e191229191421%_
                         _%hd191230191424%_
                         _%tl191231191426%_
                         _%e191232191429%_
                         _%hd191233191432%_
                         _%tl191234191434%_
                         _%e191235191437%_
                         _%hd191236191440%_
                         _%tl191237191442%_
                         _%e191265191341%_
                         _%hd191266191344%_
                         _%tl191267191346%_)))
                    (_%__kont194601194602%_
                     _%tl191231191426%_
                     _%hd191230191424%_))
                (_%__kont194601194602%_
                 _%tl191231191426%_
                 _%hd191230191424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont194601194602%_
                                             _%tl191231191426%_
                                             _%hd191230191424%_))
                                        (_%__kont194601194602%_
                                         _%tl191231191426%_
                                         _%hd191230191424%_))
                                    (_%__kont194601194602%_
                                     _%tl191231191426%_
                                     _%hd191230191424%_))))
                            (_%__kont194601194602%_
                             _%tl191231191426%_
                             _%hd191230191424%_))))
                    (_%__kont194603194604%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self190284191194%_ _%ctx191196%_ _%stx191197%_ _%args191198%_)
        (let* ((_%self191200%_ _%self190284191194%_)
               (_%self191202%_ _%self191200%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx191196%_ _%stx191197%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self190882%_ _%stx190883%_)
        (let* ((_%__stx194709194710%_ _%stx190883%_)
               (_%g190886190926%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194709194710%_)))))
          (let ((_%__kont194711194712%_
                 (lambda (_%L191032%_ _%L191033%_)
                   (let ((_%$e191060%_
                          (member 'return:
                                  (let ((__tmp195141
                                         (lambda (_%g191052191055%_
                                                  _%g191053191057%_)
                                           (cons _%g191052191055%_
                                                 _%g191053191057%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp195141 '() _%L191033%_))
                                  gx#stx-eq?)))
                     (if _%$e191060%_
                         ((lambda (_%tail191063%_)
                            (let ((_%type191065%_
                                   (let ((__tmp195142
                                          (let ((__tmp195143
                                                 (cadr _%tail191063%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp195143))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx190883%_
                                      __tmp195142))))
                              (gxc#check-return-type!
                               _%stx190883%_
                               _%L191032%_
                               _%type191065%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self190882%_
                                 _%L191032%_))))
                          _%$e191060%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self190882%_ _%L191032%_))))))
                (_%__kont194715194716%_
                 (lambda (_%L190955%_ _%L190956%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self190882%_ _%L190955%_)))))
            (let ((_%__match194746194747%_
                   (lambda (_%e190890190976%_
                            _%hd190891190979%_
                            _%tl190892190981%_
                            _%e190893190984%_
                            _%hd190894190987%_
                            _%tl190895190989%_
                            _%e190896190992%_
                            _%hd190897190995%_
                            _%tl190898190997%_
                            _%__splice194713194714%_
                            _%target190899191000%_
                            _%tl190901191002%_)
                     (letrec ((_%loop190902191005%_
                               (lambda (_%hd190900191008%_
                                        _%signature190906191010%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd190900191008%_))
                                     (let ((_%e190903191013%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd190900191008%_))))
                                       (let ((_%lp-tl190905191018%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e190903191013%_)))
                                             (_%lp-hd190904191016%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e190903191013%_))))
                                         (_%loop190902191005%_
                                          _%lp-tl190905191018%_
                                          (cons _%lp-hd190904191016%_
                                                _%signature190906191010%_))))
                                     (let ((_%signature190907191021%_
                                            (reverse _%signature190906191010%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl190895190989%_))
                                           (let ((_%e190908191024%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl190895190989%_))))
                                             (let ((_%tl190910191029%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e190908191024%_)))
                                                   (_%hd190909191027%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e190908191024%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl190910191029%_))
                                                   (_%__kont194711194712%_
                                                    _%hd190909191027%_
                                                    _%signature190907191021%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g190886190926%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g190886190926%_))))))))
                       (_%loop190902191005%_ _%target190899191000%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194709194710%_))
                  (let ((_%e190890190976%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194709194710%_))))
                    (let ((_%tl190892190981%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190890190976%_)))
                          (_%hd190891190979%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190890190976%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190892190981%_))
                          (let ((_%e190893190984%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190892190981%_))))
                            (let ((_%tl190895190989%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190893190984%_)))
                                  (_%hd190894190987%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190893190984%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190894190987%_))
                                  (let ((_%e190896190992%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190894190987%_))))
                                    (let ((_%tl190898190997%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190896190992%_)))
                                          (_%hd190897190995%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190896190992%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190897190995%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd190897190995%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl190898190997%_))
                                                  (let ((_%__splice194713194714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl190898190997%_
                                                            '0))))
                                                    (let ((_%tl190901191002%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice194713194714%_
                                                              '1)))
                                                          (_%target190899191000%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice194713194714%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190901191002%_))
                                                          (_%__match194746194747%_
                                                           _%e190890190976%_
                                                           _%hd190891190979%_
                                                           _%tl190892190981%_
                                                           _%e190893190984%_
                                                           _%hd190894190987%_
                                                           _%tl190895190989%_
                                                           _%e190896190992%_
                                                           _%hd190897190995%_
                                                           _%tl190898190997%_
                                                           _%__splice194713194714%_
                                                           _%target190899191000%_
                                                           _%tl190901191002%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl190895190989%_))
                      (let ((_%e190919190947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190895190989%_))))
                        (let ((_%tl190921190952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190919190947%_)))
                              (_%hd190920190950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190919190947%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190921190952%_))
                              (_%__kont194715194716%_
                               _%hd190920190950%_
                               _%hd190894190987%_)
                              (let ()
                                (declare (not safe))
                                (_%g190886190926%_)))))
                      (let () (declare (not safe)) (_%g190886190926%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190895190989%_))
                                                      (let ((_%e190919190947%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190895190989%_))))
                (let ((_%tl190921190952%_
                       (let () (declare (not safe)) (##cdr _%e190919190947%_)))
                      (_%hd190920190950%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190919190947%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190921190952%_))
                      (_%__kont194715194716%_
                       _%hd190920190950%_
                       _%hd190894190987%_)
                      (let () (declare (not safe)) (_%g190886190926%_)))))
              (let () (declare (not safe)) (_%g190886190926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190895190989%_))
                                                  (let ((_%e190919190947%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190895190989%_))))
                                                    (let ((_%tl190921190952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190919190947%_)))
                                                          (_%hd190920190950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190919190947%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190921190952%_))
                                                          (_%__kont194715194716%_
                                                           _%hd190920190950%_
                                                           _%hd190894190987%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190886190926%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190886190926%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190895190989%_))
                                              (let ((_%e190919190947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190895190989%_))))
                                                (let ((_%tl190921190952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190919190947%_)))
                                                      (_%hd190920190950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190919190947%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190921190952%_))
                                                      (_%__kont194715194716%_
                                                       _%hd190920190950%_
                                                       _%hd190894190987%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190886190926%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190886190926%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190895190989%_))
                                      (let ((_%e190919190947%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190895190989%_))))
                                        (let ((_%tl190921190952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190919190947%_)))
                                              (_%hd190920190950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190919190947%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190921190952%_))
                                              (_%__kont194715194716%_
                                               _%hd190920190950%_
                                               _%hd190894190987%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g190886190926%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190886190926%_))))))
                          (let () (declare (not safe)) (_%g190886190926%_)))))
                  (let () (declare (not safe)) (_%g190886190926%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx190860%_ _%expr190861%_ _%type190862%_)
        (let ((_%$e190864%_ (not _%type190862%_)))
          (if _%$e190864%_
              _%$e190864%_
              (let ((_%$e190867%_
                     (eq? (##structure-ref _%type190862%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e190867%_
                    _%$e190867%_
                    (let ((_%expr-type190871%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr190861%_))))
                      (if (not _%expr-type190871%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx190860%_
                             _%type190862%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type190871%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx190860%_
                                 _%type190862%_
                                 _%expr-type190871%_))
                              (let ((_%$e190875%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type190871%_
                                        'gxc#!abort::t))))
                                (if _%$e190875%_
                                    _%$e190875%_
                                    (let ((_%$e190878%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type190871%_
                                              _%type190862%_))))
                                      (if _%$e190878%_
                                          _%$e190878%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx190860%_
                                             _%type190862%_
                                             _%expr-type190871%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self190286%_ _%stx190287%_)
        (let* ((_%__stx194791194792%_ _%stx190287%_)
               (_%g190292190402%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194791194792%_)))))
          (let ((_%__kont194793194794%_
                 (lambda (_%L190834%_ _%L190835%_ _%L190836%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L190836%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self190286%_ _%L190835%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self190286%_ _%L190834%_)))))
                (_%__kont194795194796%_
                 (lambda (_%L190660%_ _%L190661%_ _%L190662%_ _%L190663%_)
                   (let ((_%$e190695%_
                          (let ((__tmp195144
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L190663%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp195144))))
                     (if _%$e190695%_
                         ((lambda (_%pred-type190698%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type190698%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type190698%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test190703%_
                                        (let ((__tmp195145
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L190663%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L190662%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp195145
                                           _%stx190287%_
                                           _%self190286%_)))
                                       (_%K190707%_
                                        (let ((__tmp195146
                                               (lambda ()
                                                 (let ((__tmp195149
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self190286%_
                                                             _%L190661%_))))
                                                       (__tmp195147
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L190662%_))
                            (let ((__tmp195148
                                   (##structure-ref
                                    _%pred-type190698%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx190287%_
                               __tmp195148)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp195149
                                                    gxc#current-compile-path-type
                                                    __tmp195147)))))
                                          (declare (not safe))
                                          (__make-promise __tmp195146)))
                                       (_%E190710%_
                                        (let ((__tmp195150
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self190286%_
                                                    _%L190660%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp195150)))
                                       (_%__stx194769194770%_ _%test190703%_)
                                       (_%g190714190728%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx194769194770%_)))))
                                  (let ((_%__kont194771194772%_
                                         (lambda (_%L190756%_ _%L190757%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L190756%_))
                                               (force _%K190707%_)
                                               (force _%E190710%_))))
                                        (_%__kont194773194774%_
                                         (lambda ()
                                           (let ((__tmp195151
                                                  (cons '%#if
                                                        (cons _%test190703%_
                                                              (cons (force _%K190707%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E190710%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195151
                                              _%stx190287%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx194769194770%_))
                                        (let ((_%e190718190740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx194769194770%_))))
                                          (let ((_%tl190720190745%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e190718190740%_)))
                                                (_%hd190719190743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e190718190740%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl190720190745%_))
                                                (let ((_%e190721190748%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl190720190745%_))))
                                                  (let ((_%tl190723190753%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e190721190748%_)))
                                                        (_%hd190722190751%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e190721190748%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl190723190753%_))
                                                        (_%__kont194771194772%_
                                                         _%hd190722190751%_
                                                         _%hd190719190743%_)
                                                        (_%__kont194773194774%_))))
                                                (_%__kont194773194774%_))))
                                        (_%__kont194773194774%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self190286%_
                                   _%stx190287%_))))
                          _%$e190695%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self190286%_
                            _%stx190287%_))))))
                (_%__kont194797194798%_
                 (lambda (_%L190536%_ _%L190537%_ _%L190538%_ _%L190539%_)
                   (gxc#optimize-if%
                    _%self190286%_
                    (let ((__tmp195152
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L190538%_
                                       (cons _%L190536%_
                                             (cons _%L190537%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195152 _%stx190287%_)))))
                (_%__kont194799194800%_
                 (lambda (_%L190439%_ _%L190440%_ _%L190441%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self190286%_ _%stx190287%_)))))
            (let ((_%__match194998194999%_
                   (lambda (_%e190356190464%_
                            _%hd190357190467%_
                            _%tl190358190469%_
                            _%e190359190472%_
                            _%hd190360190475%_
                            _%tl190361190477%_
                            _%e190362190480%_
                            _%hd190363190483%_
                            _%tl190364190485%_
                            _%e190365190488%_
                            _%hd190366190491%_
                            _%tl190367190493%_
                            _%e190368190496%_
                            _%hd190369190499%_
                            _%tl190370190501%_
                            _%e190371190504%_
                            _%hd190372190507%_
                            _%tl190373190509%_
                            _%e190374190512%_
                            _%hd190375190515%_
                            _%tl190376190517%_
                            _%e190377190520%_
                            _%hd190378190523%_
                            _%tl190379190525%_
                            _%e190380190528%_
                            _%hd190381190531%_
                            _%tl190382190533%_)
                     (let ((_%L190536%_ _%hd190381190531%_)
                           (_%L190537%_ _%hd190378190523%_)
                           (_%L190538%_ _%hd190375190515%_)
                           (_%L190539%_ _%hd190372190507%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L190539%_ 'not))
                           (_%__kont194797194798%_
                            _%L190536%_
                            _%L190537%_
                            _%L190538%_
                            _%L190539%_)
                           (_%__kont194799194800%_
                            _%hd190381190531%_
                            _%hd190378190523%_
                            _%hd190360190475%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194791194792%_))
                  (let ((_%e190297190786%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194791194792%_))))
                    (let ((_%tl190299190791%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190297190786%_)))
                          (_%hd190298190789%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190297190786%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190299190791%_))
                          (let ((_%e190300190794%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190299190791%_))))
                            (let ((_%tl190302190799%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190300190794%_)))
                                  (_%hd190301190797%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190300190794%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190301190797%_))
                                  (let ((_%e190303190802%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190301190797%_))))
                                    (let ((_%tl190305190807%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190303190802%_)))
                                          (_%hd190304190805%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190303190802%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190304190805%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd190304190805%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190305190807%_))
                                                  (let ((_%e190306190810%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190305190807%_))))
                                                    (let ((_%tl190308190815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190306190810%_)))
                                                          (_%hd190307190813%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190306190810%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190308190815%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl190302190799%_))
                      (let ((_%e190309190818%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190302190799%_))))
                        (let ((_%tl190311190823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190309190818%_)))
                              (_%hd190310190821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190309190818%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190311190823%_))
                              (let ((_%e190312190826%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190311190823%_))))
                                (let ((_%tl190314190831%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190312190826%_)))
                                      (_%hd190313190829%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190312190826%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190314190831%_))
                                      (_%__kont194793194794%_
                                       _%hd190313190829%_
                                       _%hd190310190821%_
                                       _%hd190307190813%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g190292190402%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g190292190402%_)))))
                      (let () (declare (not safe)) (_%g190292190402%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl190302190799%_))
                      (let ((_%e190392190423%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190302190799%_))))
                        (let ((_%tl190394190428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190392190423%_)))
                              (_%hd190393190426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190392190423%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190394190428%_))
                              (let ((_%e190395190431%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190394190428%_))))
                                (let ((_%tl190397190436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190395190431%_)))
                                      (_%hd190396190434%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190395190431%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190397190436%_))
                                      (_%__kont194799194800%_
                                       _%hd190396190434%_
                                       _%hd190393190426%_
                                       _%hd190301190797%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g190292190402%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g190292190402%_)))))
                      (let () (declare (not safe)) (_%g190292190402%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190302190799%_))
                                                      (let ((_%e190392190423%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190302190799%_))))
                (let ((_%tl190394190428%_
                       (let () (declare (not safe)) (##cdr _%e190392190423%_)))
                      (_%hd190393190426%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190392190423%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl190394190428%_))
                      (let ((_%e190395190431%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190394190428%_))))
                        (let ((_%tl190397190436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190395190431%_)))
                              (_%hd190396190434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190395190431%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190397190436%_))
                              (_%__kont194799194800%_
                               _%hd190396190434%_
                               _%hd190393190426%_
                               _%hd190301190797%_)
                              (let ()
                                (declare (not safe))
                                (_%g190292190402%_)))))
                      (let () (declare (not safe)) (_%g190292190402%_)))))
              (let () (declare (not safe)) (_%g190292190402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd190304190805%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190305190807%_))
                                                      (let ((_%e190328190596%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190305190807%_))))
                (let ((_%tl190330190601%_
                       (let () (declare (not safe)) (##cdr _%e190328190596%_)))
                      (_%hd190329190599%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190328190596%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd190329190599%_))
                      (let ((_%e190331190604%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd190329190599%_))))
                        (let ((_%tl190333190609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190331190604%_)))
                              (_%hd190332190607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190331190604%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd190332190607%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd190332190607%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190333190609%_))
                                      (let ((_%e190334190612%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190333190609%_))))
                                        (let ((_%tl190336190617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190334190612%_)))
                                              (_%hd190335190615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190334190612%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190336190617%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190330190601%_))
                                                  (let ((_%e190337190620%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190330190601%_))))
                                                    (let ((_%tl190339190625%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190337190620%_)))
                                                          (_%hd190338190623%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190337190620%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd190338190623%_))
                                                          (let ((_%e190340190628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd190338190623%_))))
                    (let ((_%tl190342190633%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190340190628%_)))
                          (_%hd190341190631%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190340190628%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd190341190631%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd190341190631%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190342190633%_))
                                  (let ((_%e190343190636%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190342190633%_))))
                                    (let ((_%tl190345190641%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190343190636%_)))
                                          (_%hd190344190639%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190343190636%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190345190641%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190339190625%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190302190799%_))
                                                  (let ((_%e190346190644%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190302190799%_))))
                                                    (let ((_%tl190348190649%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190346190644%_)))
                                                          (_%hd190347190647%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190346190644%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190348190649%_))
                                                          (let ((_%e190349190652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190348190649%_))))
                    (let ((_%tl190351190657%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190349190652%_)))
                          (_%hd190350190655%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190349190652%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190351190657%_))
                          (_%__kont194795194796%_
                           _%hd190350190655%_
                           _%hd190347190647%_
                           _%hd190344190639%_
                           _%hd190335190615%_)
                          (let () (declare (not safe)) (_%g190292190402%_)))))
                  (let () (declare (not safe)) (_%g190292190402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190292190402%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190302190799%_))
                                                  (let ((_%e190392190423%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190302190799%_))))
                                                    (let ((_%tl190394190428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190392190423%_)))
                                                          (_%hd190393190426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190392190423%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190394190428%_))
                                                          (let ((_%e190395190431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190394190428%_))))
                    (let ((_%tl190397190436%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190395190431%_)))
                          (_%hd190396190434%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190395190431%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190397190436%_))
                          (_%__kont194799194800%_
                           _%hd190396190434%_
                           _%hd190393190426%_
                           _%hd190301190797%_)
                          (let () (declare (not safe)) (_%g190292190402%_)))))
                  (let () (declare (not safe)) (_%g190292190402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190292190402%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190339190625%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190302190799%_))
                                                  (let ((_%e190377190520%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190302190799%_))))
                                                    (let ((_%tl190379190525%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190377190520%_)))
                                                          (_%hd190378190523%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190377190520%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190379190525%_))
                                                          (let ((_%e190380190528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190379190525%_))))
                    (let ((_%tl190382190533%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190380190528%_)))
                          (_%hd190381190531%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190380190528%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190382190533%_))
                          (_%__match194998194999%_
                           _%e190297190786%_
                           _%hd190298190789%_
                           _%tl190299190791%_
                           _%e190300190794%_
                           _%hd190301190797%_
                           _%tl190302190799%_
                           _%e190303190802%_
                           _%hd190304190805%_
                           _%tl190305190807%_
                           _%e190328190596%_
                           _%hd190329190599%_
                           _%tl190330190601%_
                           _%e190331190604%_
                           _%hd190332190607%_
                           _%tl190333190609%_
                           _%e190334190612%_
                           _%hd190335190615%_
                           _%tl190336190617%_
                           _%e190337190620%_
                           _%hd190338190623%_
                           _%tl190339190625%_
                           _%e190377190520%_
                           _%hd190378190523%_
                           _%tl190379190525%_
                           _%e190380190528%_
                           _%hd190381190531%_
                           _%tl190382190533%_)
                          (let () (declare (not safe)) (_%g190292190402%_)))))
                  (let () (declare (not safe)) (_%g190292190402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190292190402%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190302190799%_))
                                                  (let ((_%e190392190423%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190302190799%_))))
                                                    (let ((_%tl190394190428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190392190423%_)))
                                                          (_%hd190393190426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190392190423%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190394190428%_))
                                                          (let ((_%e190395190431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190394190428%_))))
                    (let ((_%tl190397190436%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190395190431%_)))
                          (_%hd190396190434%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190395190431%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190397190436%_))
                          (_%__kont194799194800%_
                           _%hd190396190434%_
                           _%hd190393190426%_
                           _%hd190301190797%_)
                          (let () (declare (not safe)) (_%g190292190402%_)))))
                  (let () (declare (not safe)) (_%g190292190402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190292190402%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190339190625%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190302190799%_))
                                          (let ((_%e190377190520%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190302190799%_))))
                                            (let ((_%tl190379190525%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190377190520%_)))
                                                  (_%hd190378190523%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190377190520%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190379190525%_))
                                                  (let ((_%e190380190528%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190379190525%_))))
                                                    (let ((_%tl190382190533%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190380190528%_)))
                                                          (_%hd190381190531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190380190528%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190382190533%_))
                                                          (_%__match194998194999%_
                                                           _%e190297190786%_
                                                           _%hd190298190789%_
                                                           _%tl190299190791%_
                                                           _%e190300190794%_
                                                           _%hd190301190797%_
                                                           _%tl190302190799%_
                                                           _%e190303190802%_
                                                           _%hd190304190805%_
                                                           _%tl190305190807%_
                                                           _%e190328190596%_
                                                           _%hd190329190599%_
                                                           _%tl190330190601%_
                                                           _%e190331190604%_
                                                           _%hd190332190607%_
                                                           _%tl190333190609%_
                                                           _%e190334190612%_
                                                           _%hd190335190615%_
                                                           _%tl190336190617%_
                                                           _%e190337190620%_
                                                           _%hd190338190623%_
                                                           _%tl190339190625%_
                                                           _%e190377190520%_
                                                           _%hd190378190523%_
                                                           _%tl190379190525%_
                                                           _%e190380190528%_
                                                           _%hd190381190531%_
                                                           _%tl190382190533%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190292190402%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190292190402%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190292190402%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190302190799%_))
                                          (let ((_%e190392190423%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190302190799%_))))
                                            (let ((_%tl190394190428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190392190423%_)))
                                                  (_%hd190393190426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190392190423%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190394190428%_))
                                                  (let ((_%e190395190431%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190394190428%_))))
                                                    (let ((_%tl190397190436%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190395190431%_)))
                                                          (_%hd190396190434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190395190431%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190397190436%_))
                                                          (_%__kont194799194800%_
                                                           _%hd190396190434%_
                                                           _%hd190393190426%_
                                                           _%hd190301190797%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190292190402%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190292190402%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190292190402%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl190339190625%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190302190799%_))
                                      (let ((_%e190377190520%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190302190799%_))))
                                        (let ((_%tl190379190525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190377190520%_)))
                                              (_%hd190378190523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190377190520%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190379190525%_))
                                              (let ((_%e190380190528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190379190525%_))))
                                                (let ((_%tl190382190533%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190380190528%_)))
                                                      (_%hd190381190531%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190380190528%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190382190533%_))
                                                      (_%__match194998194999%_
                                                       _%e190297190786%_
                                                       _%hd190298190789%_
                                                       _%tl190299190791%_
                                                       _%e190300190794%_
                                                       _%hd190301190797%_
                                                       _%tl190302190799%_
                                                       _%e190303190802%_
                                                       _%hd190304190805%_
                                                       _%tl190305190807%_
                                                       _%e190328190596%_
                                                       _%hd190329190599%_
                                                       _%tl190330190601%_
                                                       _%e190331190604%_
                                                       _%hd190332190607%_
                                                       _%tl190333190609%_
                                                       _%e190334190612%_
                                                       _%hd190335190615%_
                                                       _%tl190336190617%_
                                                       _%e190337190620%_
                                                       _%hd190338190623%_
                                                       _%tl190339190625%_
                                                       _%e190377190520%_
                                                       _%hd190378190523%_
                                                       _%tl190379190525%_
                                                       _%e190380190528%_
                                                       _%hd190381190531%_
                                                       _%tl190382190533%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190292190402%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190292190402%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190292190402%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190302190799%_))
                                      (let ((_%e190392190423%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190302190799%_))))
                                        (let ((_%tl190394190428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190392190423%_)))
                                              (_%hd190393190426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190392190423%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190394190428%_))
                                              (let ((_%e190395190431%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190394190428%_))))
                                                (let ((_%tl190397190436%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190395190431%_)))
                                                      (_%hd190396190434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190395190431%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190397190436%_))
                                                      (_%__kont194799194800%_
                                                       _%hd190396190434%_
                                                       _%hd190393190426%_
                                                       _%hd190301190797%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190292190402%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190292190402%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190292190402%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190339190625%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190302190799%_))
                                  (let ((_%e190377190520%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190302190799%_))))
                                    (let ((_%tl190379190525%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190377190520%_)))
                                          (_%hd190378190523%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190377190520%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190379190525%_))
                                          (let ((_%e190380190528%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190379190525%_))))
                                            (let ((_%tl190382190533%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190380190528%_)))
                                                  (_%hd190381190531%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190380190528%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl190382190533%_))
                                                  (_%__match194998194999%_
                                                   _%e190297190786%_
                                                   _%hd190298190789%_
                                                   _%tl190299190791%_
                                                   _%e190300190794%_
                                                   _%hd190301190797%_
                                                   _%tl190302190799%_
                                                   _%e190303190802%_
                                                   _%hd190304190805%_
                                                   _%tl190305190807%_
                                                   _%e190328190596%_
                                                   _%hd190329190599%_
                                                   _%tl190330190601%_
                                                   _%e190331190604%_
                                                   _%hd190332190607%_
                                                   _%tl190333190609%_
                                                   _%e190334190612%_
                                                   _%hd190335190615%_
                                                   _%tl190336190617%_
                                                   _%e190337190620%_
                                                   _%hd190338190623%_
                                                   _%tl190339190625%_
                                                   _%e190377190520%_
                                                   _%hd190378190523%_
                                                   _%tl190379190525%_
                                                   _%e190380190528%_
                                                   _%hd190381190531%_
                                                   _%tl190382190533%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190292190402%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190292190402%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190292190402%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190302190799%_))
                                  (let ((_%e190392190423%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190302190799%_))))
                                    (let ((_%tl190394190428%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190392190423%_)))
                                          (_%hd190393190426%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190392190423%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190394190428%_))
                                          (let ((_%e190395190431%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190394190428%_))))
                                            (let ((_%tl190397190436%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190395190431%_)))
                                                  (_%hd190396190434%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190395190431%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl190397190436%_))
                                                  (_%__kont194799194800%_
                                                   _%hd190396190434%_
                                                   _%hd190393190426%_
                                                   _%hd190301190797%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190292190402%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190292190402%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190292190402%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190339190625%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190302190799%_))
                          (let ((_%e190377190520%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190302190799%_))))
                            (let ((_%tl190379190525%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190377190520%_)))
                                  (_%hd190378190523%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190377190520%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190379190525%_))
                                  (let ((_%e190380190528%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190379190525%_))))
                                    (let ((_%tl190382190533%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190380190528%_)))
                                          (_%hd190381190531%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190380190528%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190382190533%_))
                                          (_%__match194998194999%_
                                           _%e190297190786%_
                                           _%hd190298190789%_
                                           _%tl190299190791%_
                                           _%e190300190794%_
                                           _%hd190301190797%_
                                           _%tl190302190799%_
                                           _%e190303190802%_
                                           _%hd190304190805%_
                                           _%tl190305190807%_
                                           _%e190328190596%_
                                           _%hd190329190599%_
                                           _%tl190330190601%_
                                           _%e190331190604%_
                                           _%hd190332190607%_
                                           _%tl190333190609%_
                                           _%e190334190612%_
                                           _%hd190335190615%_
                                           _%tl190336190617%_
                                           _%e190337190620%_
                                           _%hd190338190623%_
                                           _%tl190339190625%_
                                           _%e190377190520%_
                                           _%hd190378190523%_
                                           _%tl190379190525%_
                                           _%e190380190528%_
                                           _%hd190381190531%_
                                           _%tl190382190533%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190292190402%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190292190402%_)))))
                          (let () (declare (not safe)) (_%g190292190402%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190302190799%_))
                          (let ((_%e190392190423%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190302190799%_))))
                            (let ((_%tl190394190428%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190392190423%_)))
                                  (_%hd190393190426%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190392190423%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190394190428%_))
                                  (let ((_%e190395190431%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190394190428%_))))
                                    (let ((_%tl190397190436%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190395190431%_)))
                                          (_%hd190396190434%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190395190431%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190397190436%_))
                                          (_%__kont194799194800%_
                                           _%hd190396190434%_
                                           _%hd190393190426%_
                                           _%hd190301190797%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190292190402%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190292190402%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g190292190402%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190302190799%_))
                                                      (let ((_%e190392190423%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190302190799%_))))
                (let ((_%tl190394190428%_
                       (let () (declare (not safe)) (##cdr _%e190392190423%_)))
                      (_%hd190393190426%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190392190423%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl190394190428%_))
                      (let ((_%e190395190431%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190394190428%_))))
                        (let ((_%tl190397190436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190395190431%_)))
                              (_%hd190396190434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190395190431%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190397190436%_))
                              (_%__kont194799194800%_
                               _%hd190396190434%_
                               _%hd190393190426%_
                               _%hd190301190797%_)
                              (let ()
                                (declare (not safe))
                                (_%g190292190402%_)))))
                      (let () (declare (not safe)) (_%g190292190402%_)))))
              (let () (declare (not safe)) (_%g190292190402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190302190799%_))
                                                  (let ((_%e190392190423%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190302190799%_))))
                                                    (let ((_%tl190394190428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190392190423%_)))
                                                          (_%hd190393190426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190392190423%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190394190428%_))
                                                          (let ((_%e190395190431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190394190428%_))))
                    (let ((_%tl190397190436%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190395190431%_)))
                          (_%hd190396190434%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190395190431%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190397190436%_))
                          (_%__kont194799194800%_
                           _%hd190396190434%_
                           _%hd190393190426%_
                           _%hd190301190797%_)
                          (let () (declare (not safe)) (_%g190292190402%_)))))
                  (let () (declare (not safe)) (_%g190292190402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190292190402%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190302190799%_))
                                          (let ((_%e190392190423%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190302190799%_))))
                                            (let ((_%tl190394190428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190392190423%_)))
                                                  (_%hd190393190426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190392190423%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190394190428%_))
                                                  (let ((_%e190395190431%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190394190428%_))))
                                                    (let ((_%tl190397190436%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190395190431%_)))
                                                          (_%hd190396190434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190395190431%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190397190436%_))
                                                          (_%__kont194799194800%_
                                                           _%hd190396190434%_
                                                           _%hd190393190426%_
                                                           _%hd190301190797%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190292190402%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190292190402%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190292190402%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190302190799%_))
                                      (let ((_%e190392190423%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190302190799%_))))
                                        (let ((_%tl190394190428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190392190423%_)))
                                              (_%hd190393190426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190392190423%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190394190428%_))
                                              (let ((_%e190395190431%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190394190428%_))))
                                                (let ((_%tl190397190436%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190395190431%_)))
                                                      (_%hd190396190434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190395190431%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190397190436%_))
                                                      (_%__kont194799194800%_
                                                       _%hd190396190434%_
                                                       _%hd190393190426%_
                                                       _%hd190301190797%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190292190402%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190292190402%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190292190402%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190302190799%_))
                                  (let ((_%e190392190423%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190302190799%_))))
                                    (let ((_%tl190394190428%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190392190423%_)))
                                          (_%hd190393190426%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190392190423%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190394190428%_))
                                          (let ((_%e190395190431%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190394190428%_))))
                                            (let ((_%tl190397190436%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190395190431%_)))
                                                  (_%hd190396190434%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190395190431%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl190397190436%_))
                                                  (_%__kont194799194800%_
                                                   _%hd190396190434%_
                                                   _%hd190393190426%_
                                                   _%hd190301190797%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190292190402%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190292190402%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190292190402%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190302190799%_))
                          (let ((_%e190392190423%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190302190799%_))))
                            (let ((_%tl190394190428%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190392190423%_)))
                                  (_%hd190393190426%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190392190423%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190394190428%_))
                                  (let ((_%e190395190431%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190394190428%_))))
                                    (let ((_%tl190397190436%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190395190431%_)))
                                          (_%hd190396190434%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190395190431%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190397190436%_))
                                          (_%__kont194799194800%_
                                           _%hd190396190434%_
                                           _%hd190393190426%_
                                           _%hd190301190797%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190292190402%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190292190402%_)))))
                          (let () (declare (not safe)) (_%g190292190402%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl190302190799%_))
                  (let ((_%e190392190423%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190302190799%_))))
                    (let ((_%tl190394190428%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190392190423%_)))
                          (_%hd190393190426%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190392190423%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190394190428%_))
                          (let ((_%e190395190431%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190394190428%_))))
                            (let ((_%tl190397190436%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190395190431%_)))
                                  (_%hd190396190434%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190395190431%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl190397190436%_))
                                  (_%__kont194799194800%_
                                   _%hd190396190434%_
                                   _%hd190393190426%_
                                   _%hd190301190797%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g190292190402%_)))))
                          (let () (declare (not safe)) (_%g190292190402%_)))))
                  (let () (declare (not safe)) (_%g190292190402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190302190799%_))
                                                      (let ((_%e190392190423%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190302190799%_))))
                (let ((_%tl190394190428%_
                       (let () (declare (not safe)) (##cdr _%e190392190423%_)))
                      (_%hd190393190426%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190392190423%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl190394190428%_))
                      (let ((_%e190395190431%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190394190428%_))))
                        (let ((_%tl190397190436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190395190431%_)))
                              (_%hd190396190434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190395190431%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190397190436%_))
                              (_%__kont194799194800%_
                               _%hd190396190434%_
                               _%hd190393190426%_
                               _%hd190301190797%_)
                              (let ()
                                (declare (not safe))
                                (_%g190292190402%_)))))
                      (let () (declare (not safe)) (_%g190292190402%_)))))
              (let () (declare (not safe)) (_%g190292190402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190302190799%_))
                                              (let ((_%e190392190423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190302190799%_))))
                                                (let ((_%tl190394190428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190392190423%_)))
                                                      (_%hd190393190426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190392190423%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190394190428%_))
                                                      (let ((_%e190395190431%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190394190428%_))))
                (let ((_%tl190397190436%_
                       (let () (declare (not safe)) (##cdr _%e190395190431%_)))
                      (_%hd190396190434%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190395190431%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190397190436%_))
                      (_%__kont194799194800%_
                       _%hd190396190434%_
                       _%hd190393190426%_
                       _%hd190301190797%_)
                      (let () (declare (not safe)) (_%g190292190402%_)))))
              (let () (declare (not safe)) (_%g190292190402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g190292190402%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190302190799%_))
                                      (let ((_%e190392190423%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190302190799%_))))
                                        (let ((_%tl190394190428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190392190423%_)))
                                              (_%hd190393190426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190392190423%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190394190428%_))
                                              (let ((_%e190395190431%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190394190428%_))))
                                                (let ((_%tl190397190436%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190395190431%_)))
                                                      (_%hd190396190434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190395190431%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190397190436%_))
                                                      (_%__kont194799194800%_
                                                       _%hd190396190434%_
                                                       _%hd190393190426%_
                                                       _%hd190301190797%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190292190402%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190292190402%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190292190402%_))))))
                          (let () (declare (not safe)) (_%g190292190402%_)))))
                  (let () (declare (not safe)) (_%g190292190402%_))))))))))
