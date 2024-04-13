(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712993622)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp195272 (list gxc#::basic-xform::t))
            (__tmp195271 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp195272
         '()
         __tmp195271
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args194549%_
        (apply make-instance gxc#::optimize-call::t _%$args194549%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp195273
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
        (__make-promise __tmp195273)))
    (define gxc#apply-optimize-call
      (lambda (_%stx194541%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self194544%_
                (let ((__obj195263
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj195263))
               (__tmp195274
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self194544%_ _%stx194541%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195274
           gxc#current-compile-method
           _%self194544%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp195276 (list gxc#::void::t))
            (__tmp195275 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp195276
         '()
         __tmp195275
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args194538%_
        (apply make-instance gxc#::check-return-type::t _%$args194538%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp195277
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
        (__make-promise __tmp195277)))
    (define gxc#apply-check-return-type
      (lambda (_%stx194530%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self194533%_
                (let ((__obj195265
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj195265))
               (__tmp195278
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self194533%_ _%stx194530%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195278
           gxc#current-compile-method
           _%self194533%_))))
    (define gxc#optimize-call%
      (lambda (_%self194131%_ _%stx194132%_)
        (let* ((_%__stx194618194619%_ _%stx194132%_)
               (_%g194135194181%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194618194619%_)))))
          (let ((_%__kont194620194621%_
                 (lambda (_%L194324%_ _%L194325%_)
                   (let* ((_%rator-id194345%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L194325%_)))
                          (_%rator-type194347%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id194345%_))))
                     (if (or (not _%rator-type194347%_)
                             (eq? (##structure-ref
                                   _%rator-type194347%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self194131%_ _%stx194132%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type194347%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp195279
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type194347%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id194345%_
                                  '" => "
                                  _%rator-type194347%_
                                  '" "
                                  __tmp195279))
                               (let* ((_%optimized194362%_
                                       (let ((__method195266
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type194347%_
                                                 'optimize-call))))
                                         (if __method195266
                                             (let ((__tmp195280
                                                    (let ((__tmp195281
                                                           (lambda (_%g194354194357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g194355194359%_)
                     (cons _%g194354194357%_ _%g194355194359%_))))
              (declare (not safe))
              (__foldr1 __tmp195281 '() _%L194324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method195266
                                                _%rator-type194347%_
                                                _%self194131%_
                                                _%stx194132%_
                                                __tmp195280))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type194347%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx194566194567%_
                                       _%optimized194362%_)
                                      (_%g194365194394%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx194566194567%_)))))
                                 (let ((_%__kont194568194569%_
                                        (lambda (_%L194462%_ _%L194463%_)
                                          (let* ((_%optimized-rator-id194490%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L194463%_)))
                                                 (_%rator-type194495%_
                                                  (let ((_%$e194492%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id194490%_))))
                                                    (if _%$e194492%_
                                                        _%$e194492%_
                                                        _%rator-type194347%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type194495%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id194490%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type194495%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type194495%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized194362%_
                                                (let ((__tmp195282
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L194463%_ '()))
                           (let ((__tmp195283
                                  (lambda (_%g194503194506%_ _%g194504194508%_)
                                    (cons _%g194503194506%_
                                          _%g194504194508%_))))
                             (declare (not safe))
                             (__foldr1 __tmp195283 '() _%L194462%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp195282
                                                   _%stx194132%_))))))
                                       (_%__kont194572194573%_
                                        (lambda () _%optimized194362%_)))
                                   (let ((_%__match194615194616%_
                                          (lambda (_%e194369194406%_
                                                   _%hd194370194409%_
                                                   _%tl194371194411%_
                                                   _%e194372194414%_
                                                   _%hd194373194417%_
                                                   _%tl194374194419%_
                                                   _%e194375194422%_
                                                   _%hd194376194425%_
                                                   _%tl194377194427%_
                                                   _%e194378194430%_
                                                   _%hd194379194433%_
                                                   _%tl194380194435%_
                                                   _%__splice194570194571%_
                                                   _%target194381194438%_
                                                   _%tl194383194440%_)
                                            (letrec ((_%loop194384194443%_
                                                      (lambda (_%hd194382194446%_
                                                               _%arg194388194448%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd194382194446%_))
                                                            (let ((_%e194385194451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd194382194446%_))))
                      (let ((_%lp-tl194387194456%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194385194451%_)))
                            (_%lp-hd194386194454%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194385194451%_))))
                        (_%loop194384194443%_
                         _%lp-tl194387194456%_
                         (cons _%lp-hd194386194454%_ _%arg194388194448%_))))
                    (let ((_%arg194389194459%_ (reverse _%arg194388194448%_)))
                      (_%__kont194568194569%_
                       _%arg194389194459%_
                       _%hd194379194433%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop194384194443%_
                                               _%target194381194438%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx194566194567%_))
                                         (let ((_%e194369194406%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx194566194567%_))))
                                           (let ((_%tl194371194411%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194369194406%_)))
                                                 (_%hd194370194409%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194369194406%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd194370194409%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd194370194409%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl194371194411%_))
                                                         (let ((_%e194372194414%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl194371194411%_))))
                   (let ((_%tl194374194419%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e194372194414%_)))
                         (_%hd194373194417%_
                          (let ()
                            (declare (not safe))
                            (##car _%e194372194414%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd194373194417%_))
                         (let ((_%e194375194422%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd194373194417%_))))
                           (let ((_%tl194377194427%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e194375194422%_)))
                                 (_%hd194376194425%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e194375194422%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd194376194425%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd194376194425%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl194377194427%_))
                                         (let ((_%e194378194430%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl194377194427%_))))
                                           (let ((_%tl194380194435%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194378194430%_)))
                                                 (_%hd194379194433%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194378194430%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl194380194435%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl194374194419%_))
                                                     (let ((_%__splice194570194571%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl194374194419%_
                                                               '0))))
                                                       (let ((_%tl194383194440%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice194570194571%_ '1)))
                     (_%target194381194438%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice194570194571%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl194383194440%_))
                     (_%__match194615194616%_
                      _%e194369194406%_
                      _%hd194370194409%_
                      _%tl194371194411%_
                      _%e194372194414%_
                      _%hd194373194417%_
                      _%tl194374194419%_
                      _%e194375194422%_
                      _%hd194376194425%_
                      _%tl194377194427%_
                      _%e194378194430%_
                      _%hd194379194433%_
                      _%tl194380194435%_
                      _%__splice194570194571%_
                      _%target194381194438%_
                      _%tl194383194440%_)
                     (_%__kont194572194573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont194572194573%_))
                                                 (_%__kont194572194573%_))))
                                         (_%__kont194572194573%_))
                                     (_%__kont194572194573%_))
                                 (_%__kont194572194573%_))))
                         (_%__kont194572194573%_))))
                 (_%__kont194572194573%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont194572194573%_))
                                                 (_%__kont194572194573%_))))
                                         (_%__kont194572194573%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type194347%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type194347%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp195284
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L194325%_
                                                                '()))
                                                    (map (lambda (_%g194514194516%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self194131%_
                                                              _%g194514194516%_)))
                                                         (let ((__tmp195285
                                                                (lambda (_%g194518194521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g194519194523%_)
                          (cons _%g194518194521%_ _%g194519194523%_))))
                   (declare (not safe))
                   (__foldr1 __tmp195285 '() _%L194324%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp195284
                                    _%stx194132%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx194132%_
                                    _%rator-type194347%_))))))))
                (_%__kont194624194625%_
                 (lambda (_%L194226%_ _%L194227%_)
                   (let ((_%rator-type194244%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L194227%_))))
                     (if (and _%rator-type194244%_
                              (eq? (##structure-ref
                                    _%rator-type194244%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type194244%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type194244%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type194244%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp195286
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self194131%_
                                               _%L194227%_))
                                            (map (lambda (_%g194246194248%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self194131%_
                                                      _%g194246194248%_)))
                                                 (let ((__tmp195287
                                                        (lambda (_%g194250194253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g194251194255%_)
                  (cons _%g194250194253%_ _%g194251194255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp195287
                                                    '()
                                                    _%L194226%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp195286 _%stx194132%_))
                         (if (or (not _%rator-type194244%_)
                                 (let ((__tmp195288
                                        (##structure-ref
                                         _%rator-type194244%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp195288 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self194131%_ _%stx194132%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx194132%_
                                _%rator-type194244%_))))))))
            (let* ((_%__match194685194686%_
                    (lambda (_%e194162194186%_
                             _%hd194163194189%_
                             _%tl194164194191%_
                             _%e194165194194%_
                             _%hd194166194197%_
                             _%tl194167194199%_
                             _%__splice194626194627%_
                             _%target194168194202%_
                             _%tl194170194204%_)
                      (letrec ((_%loop194171194207%_
                                (lambda (_%hd194169194210%_
                                         _%rand194175194212%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194169194210%_))
                                      (let ((_%e194172194215%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd194169194210%_))))
                                        (let ((_%lp-tl194174194220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194172194215%_)))
                                              (_%lp-hd194173194218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194172194215%_))))
                                          (_%loop194171194207%_
                                           _%lp-tl194174194220%_
                                           (cons _%lp-hd194173194218%_
                                                 _%rand194175194212%_))))
                                      (let ((_%rand194176194223%_
                                             (reverse _%rand194175194212%_)))
                                        (_%__kont194624194625%_
                                         _%rand194176194223%_
                                         _%hd194166194197%_))))))
                        (_%loop194171194207%_ _%target194168194202%_ '()))))
                   (_%__match194665194666%_
                    (lambda (_%e194139194268%_
                             _%hd194140194271%_
                             _%tl194141194273%_
                             _%e194142194276%_
                             _%hd194143194279%_
                             _%tl194144194281%_
                             _%e194145194284%_
                             _%hd194146194287%_
                             _%tl194147194289%_
                             _%e194148194292%_
                             _%hd194149194295%_
                             _%tl194150194297%_
                             _%__splice194622194623%_
                             _%target194151194300%_
                             _%tl194153194302%_)
                      (letrec ((_%loop194154194305%_
                                (lambda (_%hd194152194308%_
                                         _%rand194158194310%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194152194308%_))
                                      (let ((_%e194155194313%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd194152194308%_))))
                                        (let ((_%lp-tl194157194318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194155194313%_)))
                                              (_%lp-hd194156194316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194155194313%_))))
                                          (_%loop194154194305%_
                                           _%lp-tl194157194318%_
                                           (cons _%lp-hd194156194316%_
                                                 _%rand194158194310%_))))
                                      (let ((_%rand194159194321%_
                                             (reverse _%rand194158194310%_)))
                                        (_%__kont194620194621%_
                                         _%rand194159194321%_
                                         _%hd194149194295%_))))))
                        (_%loop194154194305%_ _%target194151194300%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194618194619%_))
                  (let ((_%e194139194268%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194618194619%_))))
                    (let ((_%tl194141194273%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194139194268%_)))
                          (_%hd194140194271%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194139194268%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194141194273%_))
                          (let ((_%e194142194276%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194141194273%_))))
                            (let ((_%tl194144194281%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194142194276%_)))
                                  (_%hd194143194279%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194142194276%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194143194279%_))
                                  (let ((_%e194145194284%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194143194279%_))))
                                    (let ((_%tl194147194289%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194145194284%_)))
                                          (_%hd194146194287%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194145194284%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194146194287%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd194146194287%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194147194289%_))
                                                  (let ((_%e194148194292%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194147194289%_))))
                                                    (let ((_%tl194150194297%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194148194292%_)))
                                                          (_%hd194149194295%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194148194292%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194150194297%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl194144194281%_))
                      (let ((_%__splice194622194623%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl194144194281%_
                                '0))))
                        (let ((_%tl194153194302%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice194622194623%_ '1)))
                              (_%target194151194300%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice194622194623%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194153194302%_))
                              (_%__match194665194666%_
                               _%e194139194268%_
                               _%hd194140194271%_
                               _%tl194141194273%_
                               _%e194142194276%_
                               _%hd194143194279%_
                               _%tl194144194281%_
                               _%e194145194284%_
                               _%hd194146194287%_
                               _%tl194147194289%_
                               _%e194148194292%_
                               _%hd194149194295%_
                               _%tl194150194297%_
                               _%__splice194622194623%_
                               _%target194151194300%_
                               _%tl194153194302%_)
                              (let ()
                                (declare (not safe))
                                (_%g194135194181%_)))))
                      (let () (declare (not safe)) (_%g194135194181%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl194144194281%_))
                      (let ((_%__splice194626194627%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl194144194281%_
                                '0))))
                        (let ((_%tl194170194204%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice194626194627%_ '1)))
                              (_%target194168194202%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice194626194627%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194170194204%_))
                              (_%__match194685194686%_
                               _%e194139194268%_
                               _%hd194140194271%_
                               _%tl194141194273%_
                               _%e194142194276%_
                               _%hd194143194279%_
                               _%tl194144194281%_
                               _%__splice194626194627%_
                               _%target194168194202%_
                               _%tl194170194204%_)
                              (let ()
                                (declare (not safe))
                                (_%g194135194181%_)))))
                      (let () (declare (not safe)) (_%g194135194181%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl194144194281%_))
                                                      (let ((_%__splice194626194627%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl194144194281%_ '0))))
                (let ((_%tl194170194204%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice194626194627%_ '1)))
                      (_%target194168194202%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice194626194627%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194170194204%_))
                      (_%__match194685194686%_
                       _%e194139194268%_
                       _%hd194140194271%_
                       _%tl194141194273%_
                       _%e194142194276%_
                       _%hd194143194279%_
                       _%tl194144194281%_
                       _%__splice194626194627%_
                       _%target194168194202%_
                       _%tl194170194204%_)
                      (let () (declare (not safe)) (_%g194135194181%_)))))
              (let () (declare (not safe)) (_%g194135194181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl194144194281%_))
                                                  (let ((_%__splice194626194627%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl194144194281%_
                                                            '0))))
                                                    (let ((_%tl194170194204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice194626194627%_
                                                              '1)))
                                                          (_%target194168194202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice194626194627%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194170194204%_))
                                                          (_%__match194685194686%_
                                                           _%e194139194268%_
                                                           _%hd194140194271%_
                                                           _%tl194141194273%_
                                                           _%e194142194276%_
                                                           _%hd194143194279%_
                                                           _%tl194144194281%_
                                                           _%__splice194626194627%_
                                                           _%target194168194202%_
                                                           _%tl194170194204%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194135194181%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g194135194181%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl194144194281%_))
                                              (let ((_%__splice194626194627%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl194144194281%_
                                                        '0))))
                                                (let ((_%tl194170194204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice194626194627%_
                                                          '1)))
                                                      (_%target194168194202%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice194626194627%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194170194204%_))
                                                      (_%__match194685194686%_
                                                       _%e194139194268%_
                                                       _%hd194140194271%_
                                                       _%tl194141194273%_
                                                       _%e194142194276%_
                                                       _%hd194143194279%_
                                                       _%tl194144194281%_
                                                       _%__splice194626194627%_
                                                       _%target194168194202%_
                                                       _%tl194170194204%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194135194181%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g194135194181%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl194144194281%_))
                                      (let ((_%__splice194626194627%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl194144194281%_
                                                '0))))
                                        (let ((_%tl194170194204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194626194627%_
                                                  '1)))
                                              (_%target194168194202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194626194627%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194170194204%_))
                                              (_%__match194685194686%_
                                               _%e194139194268%_
                                               _%hd194140194271%_
                                               _%tl194141194273%_
                                               _%e194142194276%_
                                               _%hd194143194279%_
                                               _%tl194144194281%_
                                               _%__splice194626194627%_
                                               _%target194168194202%_
                                               _%tl194170194204%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g194135194181%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194135194181%_))))))
                          (let () (declare (not safe)) (_%g194135194181%_)))))
                  (let () (declare (not safe)) (_%g194135194181%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self190510194091%_ _%ctx194093%_ _%stx194094%_ _%args194095%_)
        (let* ((_%self194097%_ _%self190510194091%_)
               (_%self194099%_ _%self194097%_))
          (if (let ((__method195267
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self194099%_ 'check-arguments))))
                (if __method195267
                    (let ()
                      (declare (not safe))
                      (__method195267
                       _%self194099%_
                       _%ctx194093%_
                       _%stx194094%_
                       _%args194095%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self194099%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature194109%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self194099%_ '2 '#f '#f)))
                     (_%signature194111%_ _%signature194109%_)
                     (_%$e194121%_
                      (if _%signature194111%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature194111%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e194121%_
                    ((lambda (_%unchecked194124%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked194124%_))
                           (let ((__tmp195289
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked194124%_
                                                          '()))
                                              (map (lambda (_%g194125194127%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194093%_
                                                        _%g194125194127%_)))
                                                   _%args194095%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp195289
                              _%stx194094%_
                              _%ctx194093%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx194093%_ _%stx194094%_))))
                     _%$e194121%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx194093%_ _%stx194094%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx194093%_ _%stx194094%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass194551 __method-table194552)
        (let ((__check-arguments194553
               (let ((__tmp195290
                      (lambda ()
                        (let ((__method194554
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table194552
                                  'check-arguments
                                  '#f))))
                          (if __method194554
                              __method194554
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195290))))
          (lambda (_%self190510194091%_
                   _%ctx194093%_
                   _%stx194094%_
                   _%args194095%_)
            (let* ((_%self194097%_ _%self190510194091%_)
                   (_%self194099%_ _%self194097%_))
              (if ((force __check-arguments194553)
                   _%self194099%_
                   _%ctx194093%_
                   _%stx194094%_
                   _%args194095%_)
                  (let* ((_%signature194109%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self194099%_
                             '2
                             '#f
                             '#f)))
                         (_%signature194111%_ _%signature194109%_)
                         (_%$e194121%_
                          (if _%signature194111%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature194111%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e194121%_
                        ((lambda (_%unchecked194124%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked194124%_))
                               (let ((__tmp195291
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked194124%_
                                                              '()))
                                                  (map (lambda (_%g194125194127%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx194093%_
                                                            _%g194125194127%_)))
                                                       _%args194095%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp195291
                                  _%stx194094%_
                                  _%ctx194093%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx194093%_
                                  _%stx194094%_))))
                         _%$e194121%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx194093%_ _%stx194094%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx194093%_ _%stx194094%_))))))))
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
      (lambda (_%self190511193840%_ _%ctx193842%_ _%stx193843%_ _%args193844%_)
        (let* ((_%self193846%_ _%self190511193840%_)
               (_%self193848%_ _%self193846%_)
               (_%signature193857193859%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193848%_ '2 '#f '#f))))
          (if _%signature193857193859%_
              (let* ((_%signature193862%_ _%signature193857193859%_)
                     (_%argument-types193863193865%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature193862%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types193863193865%_
                    (let* ((_%argument-types193868%_
                            _%argument-types193863193865%_)
                           (_%argument-types193873%_
                            (let ((__tmp195292
                                   (lambda (_%t193871%_)
                                     (if _%t193871%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193843%_
                                            _%t193871%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp195292
                               _%argument-types193868%_))))
                      (let _%loop193875%_ ((_%rest-args193877%_ _%args193844%_)
                                           (_%rest-types193878%_
                                            _%argument-types193873%_)
                                           (_%result193879%_ '#t))
                        (let* ((_%rest-args193880193888%_ _%rest-args193877%_)
                               (_%else193882193896%_
                                (lambda () _%result193879%_))
                               (_%K193884193957%_
                                (lambda (_%rest-args193899%_ _%arg193900%_)
                                  (let* ((_%rest-types193901193912%_
                                          _%rest-types193878%_)
                                         (_%E193905193916%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types193901193912%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K193908193945%_
                                           (lambda (_%rest-types193942%_
                                                    _%type193943%_)
                                             (_%loop193875%_
                                              _%rest-args193899%_
                                              _%rest-types193942%_
                                              (if (gxc#check-expression-type!
                                                   _%stx193843%_
                                                   _%arg193900%_
                                                   _%type193943%_)
                                                  _%result193879%_
                                                  '#f))))
                                          (_%K193907193936%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx193843%_
                                                _%argument-types193873%_))))
                                          (_%K193906193926%_
                                           (lambda (_%tail-type193920%_)
                                             (if (let ((__tmp195293
                                                        (lambda (_%g193921193923%_)
                                                          (gxc#check-expression-type!
                                                           _%stx193843%_
                                                           _%g193921193923%_
                                                           _%tail-type193920%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp195293
                                                    _%rest-args193899%_))
                                                 _%result193879%_
                                                 '#f))))
                                      (let ((_%try-match193903193939%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types193901193912%_))
                                                   (_%K193907193936%_)
                                                   (let ((_%tail-type193929%_
                                                          _%rest-types193901193912%_))
                                                     (_%K193906193926%_
                                                      _%tail-type193929%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types193901193912%_))
                                            (let ((_%tl193910193950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types193901193912%_)))
                                                  (_%hd193909193948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types193901193912%_))))
                                              (let ((_%type193953%_
                                                     _%hd193909193948%_)
                                                    (_%rest-types193955%_
                                                     _%tl193910193950%_))
                                                (_%K193908193945%_
                                                 _%rest-types193955%_
                                                 _%type193953%_)))
                                            (_%try-match193903193939%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args193880193888%_))
                              (let ((_%hd193885193960%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args193880193888%_)))
                                    (_%tl193886193962%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args193880193888%_))))
                                (let* ((_%arg193965%_ _%hd193885193960%_)
                                       (_%rest-args193967%_
                                        _%tl193886193962%_))
                                  (_%K193884193957%_
                                   _%rest-args193967%_
                                   _%arg193965%_)))
                              (_%else193882193896%_)))))
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
      (lambda (_%self190512193649%_ _%ctx193651%_ _%stx193652%_ _%args193653%_)
        (let* ((_%self193655%_ _%self190512193649%_)
               (_%self193657%_ _%self193655%_)
               (_%g193667193677%_
                (lambda (_%g193668193674%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193668193674%_))))
               (_%g193666193715%_
                (lambda (_%g193668193680%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193668193680%_))
                      (let ((_%e193670193682%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193668193680%_))))
                        (let ((_%hd193671193685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193670193682%_)))
                              (_%tl193672193687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193670193682%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193672193687%_))
                              ((lambda (_%L193690%_)
                                 (let* ((_%klass193702%_
                                         (let ((__tmp195294
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193657%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193652%_
                                            __tmp195294)))
                                        (_%object193704%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx193651%_
                                            _%L193690%_)))
                                        (_%instance?193709%_
                                         (let ((_%$e193706%_
                                                (gxc#expression-type?
                                                 _%object193704%_
                                                 _%klass193702%_)))
                                           (if _%$e193706%_
                                               _%$e193706%_
                                               (gxc#expression-type?
                                                _%L193690%_
                                                _%klass193702%_)))))
                                   (if _%instance?193709%_
                                       (let ((__tmp195295
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object193704%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L193690%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object193704%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195295
                                          _%stx193652%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx193651%_
                                          _%stx193652%_)))))
                               _%hd193671193685%_)
                              (_%g193667193677%_ _%g193668193680%_))))
                      (_%g193667193677%_ _%g193668193680%_)))))
          (_%g193666193715%_ _%args193653%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self190513193443%_ _%ctx193445%_ _%stx193446%_ _%args193447%_)
        (let* ((_%self193449%_ _%self190513193443%_)
               (_%self193451%_ _%self193449%_)
               (_%g193461193471%_
                (lambda (_%g193462193468%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193462193468%_))))
               (_%g193460193524%_
                (lambda (_%g193462193474%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193462193474%_))
                      (let ((_%e193464193476%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193462193474%_))))
                        (let ((_%hd193465193479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193464193476%_)))
                              (_%tl193466193481%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193464193476%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193466193481%_))
                              ((lambda (_%L193484%_)
                                 (let* ((_%klass193496%_
                                         (let ((__tmp195296
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193451%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193446%_
                                            __tmp195296)))
                                        (_%object193498%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx193445%_
                                            _%L193484%_)))
                                        (_%instance?193503%_
                                         (let ((_%$e193500%_
                                                (gxc#expression-type?
                                                 _%object193498%_
                                                 _%klass193496%_)))
                                           (if _%$e193500%_
                                               _%$e193500%_
                                               (gxc#expression-type?
                                                _%L193484%_
                                                _%klass193496%_))))
                                        (_%klass193506%_ _%klass193496%_))
                                   (if _%instance?193503%_
                                       (let ((__tmp195297
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object193498%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L193484%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object193498%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195297
                                          _%stx193446%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass193506%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp195298
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass193506%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object193498%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195298
                                              _%stx193446%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass193506%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195299
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass193506%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object193498%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195299
                                                  _%stx193446%_))
                                               (let ((__tmp195300
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self193451%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object193498%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195300
                                                  _%stx193446%_)))))))
                               _%hd193465193479%_)
                              (_%g193461193471%_ _%g193462193474%_))))
                      (_%g193461193471%_ _%g193462193474%_)))))
          (_%g193460193524%_ _%args193447%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx193106%_)
        (let* ((_%__stx194695194696%_ _%stx193106%_)
               (_%g193111193152%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194695194696%_)))))
          (let ((_%__kont194697194698%_ (lambda () '#t))
                (_%__kont194699194700%_ (lambda () '#t))
                (_%__kont194701194702%_
                 (lambda (_%L193220%_ _%L193221%_)
                   (let ((_%rator-type193242193244%_
                          (let ((__tmp195301
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L193221%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp195301))))
                     (if _%rator-type193242193244%_
                         (let* ((_%rator-type193247%_
                                 _%rator-type193242193244%_)
                                (_%rator-signature193248193250%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type193247%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type193247%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature193248193250%_
                               (let* ((_%rator-signature193253%_
                                       _%rator-signature193248193250%_)
                                      (_%rator-effect193254193256%_
                                       (if _%rator-signature193253%_
                                           (##direct-structure-ref
                                            _%rator-signature193253%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect193254193256%_
                                     (let ((_%rator-effect193259%_
                                            _%rator-effect193254193256%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect193259%_)
                                               (equal? '(alloc)
                                                       _%rator-effect193259%_))
                                           (let ((__tmp195302
                                                  (let ((__tmp195303
                                                         (lambda (_%g193264193267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g193265193269%_)
                   (cons _%g193264193267%_ _%g193265193269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp195303
                                                     '()
                                                     _%L193220%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp195302))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont194705194706%_ (lambda () '#f)))
            (let ((_%__match194784194785%_
                   (lambda (_%e193127193164%_
                            _%hd193128193167%_
                            _%tl193129193169%_
                            _%e193130193172%_
                            _%hd193131193175%_
                            _%tl193132193177%_
                            _%e193133193180%_
                            _%hd193134193183%_
                            _%tl193135193185%_
                            _%e193136193188%_
                            _%hd193137193191%_
                            _%tl193138193193%_
                            _%__splice194703194704%_
                            _%target193139193196%_
                            _%tl193141193198%_)
                     (letrec ((_%loop193142193201%_
                               (lambda (_%hd193140193204%_
                                        _%rand193146193206%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd193140193204%_))
                                     (let ((_%e193143193209%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd193140193204%_))))
                                       (let ((_%lp-tl193145193214%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e193143193209%_)))
                                             (_%lp-hd193144193212%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e193143193209%_))))
                                         (_%loop193142193201%_
                                          _%lp-tl193145193214%_
                                          (cons _%lp-hd193144193212%_
                                                _%rand193146193206%_))))
                                     (let ((_%rand193147193217%_
                                            (reverse _%rand193146193206%_)))
                                       (_%__kont194701194702%_
                                        _%rand193147193217%_
                                        _%hd193137193191%_))))))
                       (_%loop193142193201%_ _%target193139193196%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194695194696%_))
                  (let ((_%e193113193300%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194695194696%_))))
                    (let ((_%tl193115193305%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193113193300%_)))
                          (_%hd193114193303%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193113193300%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193114193303%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd193114193303%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193115193305%_))
                                  (let ((_%e193116193308%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193115193305%_))))
                                    (let ((_%tl193118193313%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193116193308%_)))
                                          (_%hd193117193311%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193116193308%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193118193313%_))
                                          (_%__kont194697194698%_)
                                          (_%__kont194705194706%_))))
                                  (_%__kont194705194706%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193114193303%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193115193305%_))
                                      (let ((_%e193122193285%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193115193305%_))))
                                        (let ((_%tl193124193290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193122193285%_)))
                                              (_%hd193123193288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193122193285%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193124193290%_))
                                              (_%__kont194699194700%_)
                                              (_%__kont194705194706%_))))
                                      (_%__kont194705194706%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd193114193303%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193115193305%_))
                                          (let ((_%e193130193172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193115193305%_))))
                                            (let ((_%tl193132193177%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193130193172%_)))
                                                  (_%hd193131193175%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193130193172%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd193131193175%_))
                                                  (let ((_%e193133193180%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd193131193175%_))))
                                                    (let ((_%tl193135193185%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193133193180%_)))
                                                          (_%hd193134193183%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193133193180%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd193134193183%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd193134193183%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193135193185%_))
                          (let ((_%e193136193188%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193135193185%_))))
                            (let ((_%tl193138193193%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193136193188%_)))
                                  (_%hd193137193191%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193136193188%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193138193193%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl193132193177%_))
                                      (let ((_%__splice194703194704%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl193132193177%_
                                                '0))))
                                        (let ((_%tl193141193198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194703194704%_
                                                  '1)))
                                              (_%target193139193196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194703194704%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193141193198%_))
                                              (_%__match194784194785%_
                                               _%e193113193300%_
                                               _%hd193114193303%_
                                               _%tl193115193305%_
                                               _%e193130193172%_
                                               _%hd193131193175%_
                                               _%tl193132193177%_
                                               _%e193133193180%_
                                               _%hd193134193183%_
                                               _%tl193135193185%_
                                               _%e193136193188%_
                                               _%hd193137193191%_
                                               _%tl193138193193%_
                                               _%__splice194703194704%_
                                               _%target193139193196%_
                                               _%tl193141193198%_)
                                              (_%__kont194705194706%_))))
                                      (_%__kont194705194706%_))
                                  (_%__kont194705194706%_))))
                          (_%__kont194705194706%_))
                      (_%__kont194705194706%_))
                  (_%__kont194705194706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194705194706%_))))
                                          (_%__kont194705194706%_))
                                      (_%__kont194705194706%_))))
                          (_%__kont194705194706%_))))
                  (_%__kont194705194706%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx193101%_ _%klass193102%_)
        (let ((_%expr-type193104%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx193101%_))))
          (if _%expr-type193104%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type193104%_ _%klass193102%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx193079%_ _%expr193080%_ _%type193081%_)
        (if (not _%type193081%_)
            '#f
            (let ((_%$e193084%_
                   (eq? (##structure-ref _%type193081%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e193084%_
                  _%$e193084%_
                  (let ((_%expr-type193088%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr193080%_))))
                    (if (not _%expr-type193088%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type193088%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e193092%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type193088%_
                                      'gxc#!abort::t))))
                              (if _%$e193092%_
                                  _%$e193092%_
                                  (let ((_%$e193095%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type193088%_
                                            _%type193081%_))))
                                    (if _%$e193095%_
                                        _%$e193095%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type193081%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type193081%_
                                                   _%expr-type193088%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx193079%_
                                                   _%expr193080%_
                                                   _%expr-type193088%_
                                                   _%type193081%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self190514192891%_ _%ctx192893%_ _%stx192894%_ _%args192895%_)
        (let* ((_%self192897%_ _%self190514192891%_)
               (_%self192899%_ _%self192897%_)
               (_%klass192909%_
                (let ((__tmp195304
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self192899%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx192894%_ __tmp195304)))
               (_%fields192911%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass192909%_
                           '5
                           '#f
                           '#f))))
               (_%args192917%_
                (map (lambda (_%g192912192914%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx192893%_ _%g192912192914%_)))
                     _%args192895%_))
               (_%inline-make-object192919%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self192899%_
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
                           _%self192899%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields192911%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass192922%_ _%klass192909%_)
               (_%$e192936%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass192922%_ '6 '#f '#f))))
          (if _%$e192936%_
              ((lambda (_%ctor192939%_)
                 (let ((_%$obj192941%_
                        (let ((__tmp195305
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp195305)))
                       (_%ctor-impl192942%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass192922%_
                           _%ctor192939%_))))
                   (let ((__tmp195306
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj192941%_ '())
                                                  (cons _%inline-make-object192919%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl192942%_
                                                            (let ((__tmp195307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl192942%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj192941%_ '()))
                                             _%args192917%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp195307
                       _%stx192894%_
                       _%ctx192893%_))
                    (let ((_%$ctor192944%_
                           (let ((__tmp195308
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp195308))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor192944%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192899%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj192941%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor192939%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor192944%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor192944%_ '()))
                              (cons (cons '%#ref (cons _%$obj192941%_ '()))
                                    _%args192917%_)))
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
                             _%self192899%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor192939%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj192941%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp195306 _%stx192894%_))))
               _%$e192936%_)
              (let ((_%$e192946%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass192922%_
                        '10
                        '#f
                        '#f))))
                (if _%$e192946%_
                    ((lambda (_%metaclass192949%_)
                       (let* ((_%$obj192951%_
                               (let ((__tmp195309
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195309)))
                              (_%metakons192953%_
                               (let ((__tmp195310
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx192894%_
                                         _%metaclass192949%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp195310
                                  'instance-init!)))
                              (__tmp195311
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj192951%_
                                                             '())
                                                       (cons _%inline-make-object192919%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons192953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp195312
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons192953%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self192899%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj192951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args192917%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp195312
                            _%stx192894%_
                            _%ctx192893%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self192899%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj192951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args192917%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj192951%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp195311 _%stx192894%_)))
                     _%$e192946%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass192922%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp195313
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args192917%_))))
                              (declare (not safe))
                              (##fx= __tmp195313 _%fields192911%_))
                            (let ((__tmp195314
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self192899%_
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
                                              _%self192899%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args192917%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp195314
                               _%stx192894%_))
                            (let ((__tmp195316
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self192899%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp195315
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass192922%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx192894%_
                               __tmp195316
                               __tmp195315)))
                        (let ((_%$obj192958%_
                               (let ((__tmp195317
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195317))))
                          (let _%lp192960%_ ((_%rest192962%_ _%args192917%_)
                                             (_%initializers192963%_ '()))
                            (let* ((_%__stx194787194788%_ _%rest192962%_)
                                   (_%g192967192988%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx194787194788%_)))))
                              (let ((_%__kont194789194790%_
                                     (lambda (_%L193042%_
                                              _%L193043%_
                                              _%L193044%_)
                                       (let* ((_%slot193071%_
                                               (let ((__tmp195318
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L193044%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp195318)))
                                              (_%off193073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass192922%_
                                                  _%slot193071%_))))
                                         (if _%off193073%_
                                             (_%lp192960%_
                                              _%L193042%_
                                              (cons (cons _%off193073%_
                                                          _%L193043%_)
                                                    _%initializers192963%_))
                                             (let ((__tmp195319
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self192899%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx192894%_
                                                __tmp195319
                                                _%slot193071%_))))))
                                    (_%__kont194791194792%_
                                     (lambda ()
                                       (let ((__tmp195320
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj192958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object192919%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp195323
                                     (cons (cons '%#ref
                                                 (cons _%$obj192958%_ '()))
                                           '()))
                                    (__tmp195321
                                     (let ((__tmp195322
                                            (lambda (_%i193002%_ _%r193003%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self192899%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i193002%_) '()))
                              (cons (cons '%#ref (cons _%$obj192958%_ '()))
                                    (cons (cdr _%i193002%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r193003%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp195322
                                        '()
                                        _%initializers192963%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp195323 __tmp195321)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195320
                                          _%stx192894%_))))
                                    (_%__kont194793194794%_
                                     (lambda ()
                                       (let ((__tmp195324
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj192958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object192919%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj192958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args192917%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj192958%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195324
                                          _%stx192894%_)))))
                                (let* ((_%g192965193005%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx194787194788%_))
                                              (_%__kont194791194792%_)
                                              (_%__kont194793194794%_))))
                                       (_%__match194824194825%_
                                        (lambda (_%e192972193010%_
                                                 _%hd192973193013%_
                                                 _%tl192974193015%_
                                                 _%e192975193018%_
                                                 _%hd192976193021%_
                                                 _%tl192977193023%_
                                                 _%e192978193026%_
                                                 _%hd192979193029%_
                                                 _%tl192980193031%_
                                                 _%e192981193034%_
                                                 _%hd192982193037%_
                                                 _%tl192983193039%_)
                                          (let ((_%L193042%_
                                                 _%tl192983193039%_)
                                                (_%L193043%_
                                                 _%hd192982193037%_)
                                                (_%L193044%_
                                                 _%hd192979193029%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L193044%_))
                                                (_%__kont194789194790%_
                                                 _%L193042%_
                                                 _%L193043%_
                                                 _%L193044%_)
                                                (_%__kont194793194794%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx194787194788%_))
                                      (let ((_%e192972193010%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx194787194788%_))))
                                        (let ((_%tl192974193015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192972193010%_)))
                                              (_%hd192973193013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192972193010%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd192973193013%_))
                                              (let ((_%e192975193018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd192973193013%_))))
                                                (let ((_%tl192977193023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192975193018%_)))
                                                      (_%hd192976193021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192975193018%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd192976193021%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd192976193021%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192977193023%_))
                      (let ((_%e192978193026%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192977193023%_))))
                        (let ((_%tl192980193031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192978193026%_)))
                              (_%hd192979193029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192978193026%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192980193031%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192974193015%_))
                                  (let ((_%e192981193034%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192974193015%_))))
                                    (let ((_%tl192983193039%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192981193034%_)))
                                          (_%hd192982193037%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192981193034%_))))
                                      (_%__match194824194825%_
                                       _%e192972193010%_
                                       _%hd192973193013%_
                                       _%tl192974193015%_
                                       _%e192975193018%_
                                       _%hd192976193021%_
                                       _%tl192977193023%_
                                       _%e192978193026%_
                                       _%hd192979193029%_
                                       _%tl192980193031%_
                                       _%e192981193034%_
                                       _%hd192982193037%_
                                       _%tl192983193039%_)))
                                  (_%__kont194793194794%_))
                              (_%__kont194793194794%_))))
                      (_%__kont194793194794%_))
                  (_%__kont194793194794%_))
              (_%__kont194793194794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194793194794%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192965193005%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self190515192672%_ _%ctx192674%_ _%stx192675%_ _%args192676%_)
        (let* ((_%self192678%_ _%self190515192672%_)
               (_%self192680%_ _%self192678%_)
               (_%arguments-ok?192690%_
                (let ((__method195268
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self192680%_ 'check-arguments))))
                  (if __method195268
                      (let ()
                        (declare (not safe))
                        (__method195268
                         _%self192680%_
                         _%ctx192674%_
                         _%stx192675%_
                         _%args192676%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self192680%_
                                 'check-arguments))
                        '#!void))))
               (_%g192692192702%_
                (lambda (_%g192693192699%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192693192699%_))))
               (_%g192691192766%_
                (lambda (_%g192693192705%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192693192705%_))
                      (let ((_%e192695192707%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192693192705%_))))
                        (let ((_%hd192696192710%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192695192707%_)))
                              (_%tl192697192712%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192695192707%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192697192712%_))
                              ((lambda (_%L192715%_)
                                 (let* ((_%klass192728%_
                                         (let ((__tmp195325
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self192680%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx192675%_
                                            __tmp195325)))
                                        (_%field192730%_
                                         (let ((__tmp195326
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self192680%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass192728%_
                                            __tmp195326)))
                                        (_%object192732%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx192674%_
                                            _%L192715%_)))
                                        (_%klass192735%_ _%klass192728%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass192735%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp195327
                                              (cons (if (or _%arguments-ok?192690%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192680%_
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
                                 _%self192680%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field192730%_ '()))
                        (cons _%object192732%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195327
                                          _%stx192675%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass192735%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp195328
                                                  (cons (if (or _%arguments-ok?192690%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self192680%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192680%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field192730%_ '()))
                            (cons _%object192732%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195328
                                              _%stx192675%_))
                                           (let ((_%$e192754%_
                                                  (let ((__tmp195329
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self192680%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass192735%_
                                                     __tmp195329))))
                                             (if _%$e192754%_
                                                 ((lambda (_%klass192757%_)
                                                    (let ((__tmp195330
                                                           (cons (if (or _%arguments-ok?192690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192680%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self192680%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field192730%_ '()))
                                     (cons _%object192732%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp195330 _%stx192675%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e192754%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self192680%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp195331
                                                            (let ((_%$obj192763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp195332
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp195332))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj192763%_ '())
                                              (cons _%object192732%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass192735%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj192763%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192680%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field192730%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj192763%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?192690%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj192763%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192680%_
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
                                                             _%self192680%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj192763%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self192680%_
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
               (gxc#xform-wrap-source __tmp195331 _%stx192675%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp195333
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object192732%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192680%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp195333 _%stx192675%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd192696192710%_)
                              (_%g192692192702%_ _%g192693192705%_))))
                      (_%g192692192702%_ _%g192693192705%_)))))
          (_%g192691192766%_ _%args192676%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass194555 __method-table194556)
        (let ((__check-arguments194557
               (let ((__tmp195334
                      (lambda ()
                        (let ((__method194558
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table194556
                                  'check-arguments
                                  '#f))))
                          (if __method194558
                              __method194558
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195334)))
              (__slot194559
               (let ((__slot194560
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass194555 'slot))))
                 (if __slot194560
                     __slot194560
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self190515192672%_
                   _%ctx192674%_
                   _%stx192675%_
                   _%args192676%_)
            (let* ((_%self192678%_ _%self190515192672%_)
                   (_%self192680%_ _%self192678%_)
                   (_%arguments-ok?192690%_
                    ((force __check-arguments194557)
                     _%self192680%_
                     _%ctx192674%_
                     _%stx192675%_
                     _%args192676%_))
                   (_%g192692192702%_
                    (lambda (_%g192693192699%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g192693192699%_))))
                   (_%g192691192766%_
                    (lambda (_%g192693192705%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g192693192705%_))
                          (let ((_%e192695192707%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g192693192705%_))))
                            (let ((_%hd192696192710%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192695192707%_)))
                                  (_%tl192697192712%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192695192707%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192697192712%_))
                                  ((lambda (_%L192715%_)
                                     (let* ((_%klass192728%_
                                             (let ((__tmp195335
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self192680%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx192675%_
                                                __tmp195335)))
                                            (_%field192730%_
                                             (let ((__tmp195336
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self192680%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass192728%_
                                                __tmp195336)))
                                            (_%object192732%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx192674%_
                                                _%L192715%_)))
                                            (_%klass192735%_ _%klass192728%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass192735%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp195337
                                                  (cons (if (or _%arguments-ok?192690%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self192680%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192680%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field192730%_ '()))
                            (cons _%object192732%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195337
                                              _%stx192675%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass192735%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195338
                                                      (cons (if (or _%arguments-ok?192690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self192680%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192680%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field192730%_ '()))
                                (cons _%object192732%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195338
                                                  _%stx192675%_))
                                               (let ((_%$e192754%_
                                                      (let ((__tmp195339
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self192680%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass192735%_ __tmp195339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e192754%_
                                                     ((lambda (_%klass192757%_)
                                                        (let ((__tmp195340
                                                               (cons (if (or _%arguments-ok?192690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192680%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self192680%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field192730%_ '()))
                                         (cons _%object192732%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp195340 _%stx192675%_)))
              _%$e192754%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self192680%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp195341
                                                                (let ((_%$obj192763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp195342
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195342))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj192763%_ '())
                                                  (cons _%object192732%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass192735%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj192763%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192680%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field192730%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj192763%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?192690%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj192763%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192680%_
                               __slot194559
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
                        (##unchecked-structure-ref _%self192680%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj192763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192680%_
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
                   (gxc#xform-wrap-source __tmp195341 _%stx192675%_))
                 (let ((__tmp195343
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object192732%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192680%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp195343 _%stx192675%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd192696192710%_)
                                  (_%g192692192702%_ _%g192693192705%_))))
                          (_%g192692192702%_ _%g192693192705%_)))))
              (_%g192691192766%_ _%args192676%_))))))
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
      (lambda (_%self190516192434%_ _%ctx192436%_ _%stx192437%_ _%args192438%_)
        (let* ((_%self192440%_ _%self190516192434%_)
               (_%self192442%_ _%self192440%_)
               (_%arguments-ok?192452%_
                (let ((__method195269
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self192442%_ 'check-arguments))))
                  (if __method195269
                      (let ()
                        (declare (not safe))
                        (__method195269
                         _%self192442%_
                         _%ctx192436%_
                         _%stx192437%_
                         _%args192438%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self192442%_
                                 'check-arguments))
                        '#!void))))
               (_%g192454192468%_
                (lambda (_%g192455192465%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192455192465%_))))
               (_%g192453192547%_
                (lambda (_%g192455192471%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192455192471%_))
                      (let ((_%e192458192473%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192455192471%_))))
                        (let ((_%hd192459192476%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192458192473%_)))
                              (_%tl192460192478%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192458192473%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192460192478%_))
                              (let ((_%e192461192481%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192460192478%_))))
                                (let ((_%hd192462192484%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192461192481%_)))
                                      (_%tl192463192486%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192461192481%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192463192486%_))
                                      ((lambda (_%L192489%_ _%L192490%_)
                                         (let* ((_%klass192506%_
                                                 (let ((__tmp195344
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192442%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx192437%_
                                                    __tmp195344)))
                                                (_%field192508%_
                                                 (let ((__tmp195345
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192442%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass192506%_
                                                    __tmp195345)))
                                                (_%object192510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx192436%_
                                                    _%L192490%_)))
                                                (_%value192512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx192436%_
                                                    _%L192489%_)))
                                                (_%klass192515%_
                                                 _%klass192506%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass192515%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195346
                                                      (cons (if (or _%arguments-ok?192452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self192442%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192442%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field192508%_ '()))
                                (cons _%object192510%_
                                      (cons _%value192512%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195346
                                                  _%stx192437%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass192515%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp195347
                                                          (cons (if (or _%arguments-ok?192452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self192442%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192442%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field192508%_ '()))
                                    (cons _%object192510%_
                                          (cons _%value192512%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp195347
                                                      _%stx192437%_))
                                                   (let ((_%$e192535%_
                                                          (let ((__tmp195348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192442%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass192515%_
                     __tmp195348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e192535%_
                                                         ((lambda (_%klass192538%_)
                                                            (let ((__tmp195349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?192452%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192442%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self192442%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field192508%_ '()))
                                             (cons _%object192510%_
                                                   (cons _%value192512%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195349 _%stx192437%_)))
                  _%$e192535%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self192442%_ '4 '#f '#f))
                     (let ((__tmp195350
                            (let ((_%$obj192544%_
                                   (let ((__tmp195351
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp195351))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj192544%_ '())
                                                      (cons _%object192510%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass192515%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj192544%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self192442%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field192508%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj192544%_
                                                              '()))
                                                  (cons _%value192512%_
                                                        '())))))
                          (cons (if _%arguments-ok?192452%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj192544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self192442%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value192512%_ '())))))
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
                             _%self192442%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj192544%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192442%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value192512%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp195350 _%stx192437%_))
                     (let ((__tmp195352
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object192510%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192442%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value192512%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp195352
                        _%stx192437%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd192462192484%_
                                       _%hd192459192476%_)
                                      (_%g192454192468%_ _%g192455192471%_))))
                              (_%g192454192468%_ _%g192455192471%_))))
                      (_%g192454192468%_ _%g192455192471%_)))))
          (_%g192453192547%_ _%args192438%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass194561 __method-table194562)
        (let ((__check-arguments194563
               (let ((__tmp195353
                      (lambda ()
                        (let ((__method194564
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table194562
                                  'check-arguments
                                  '#f))))
                          (if __method194564
                              __method194564
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195353))))
          (lambda (_%self190516192434%_
                   _%ctx192436%_
                   _%stx192437%_
                   _%args192438%_)
            (let* ((_%self192440%_ _%self190516192434%_)
                   (_%self192442%_ _%self192440%_)
                   (_%arguments-ok?192452%_
                    ((force __check-arguments194563)
                     _%self192442%_
                     _%ctx192436%_
                     _%stx192437%_
                     _%args192438%_))
                   (_%g192454192468%_
                    (lambda (_%g192455192465%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g192455192465%_))))
                   (_%g192453192547%_
                    (lambda (_%g192455192471%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g192455192471%_))
                          (let ((_%e192458192473%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g192455192471%_))))
                            (let ((_%hd192459192476%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192458192473%_)))
                                  (_%tl192460192478%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192458192473%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192460192478%_))
                                  (let ((_%e192461192481%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192460192478%_))))
                                    (let ((_%hd192462192484%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192461192481%_)))
                                          (_%tl192463192486%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192461192481%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192463192486%_))
                                          ((lambda (_%L192489%_ _%L192490%_)
                                             (let* ((_%klass192506%_
                                                     (let ((__tmp195354
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192442%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx192437%_
                                                        __tmp195354)))
                                                    (_%field192508%_
                                                     (let ((__tmp195355
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192442%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass192506%_
                                                        __tmp195355)))
                                                    (_%object192510%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx192436%_
                                                        _%L192490%_)))
                                                    (_%value192512%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx192436%_
                                                        _%L192489%_)))
                                                    (_%klass192515%_
                                                     _%klass192506%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass192515%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp195356
                                                          (cons (if (or _%arguments-ok?192452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self192442%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192442%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field192508%_ '()))
                                    (cons _%object192510%_
                                          (cons _%value192512%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp195356
                                                      _%stx192437%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass192515%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp195357
                                                              (cons (if (or _%arguments-ok?192452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self192442%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192442%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field192508%_ '()))
                                        (cons _%object192510%_
                                              (cons _%value192512%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp195357 _%stx192437%_))
               (let ((_%$e192535%_
                      (let ((__tmp195358
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self192442%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass192515%_
                         __tmp195358))))
                 (if _%$e192535%_
                     ((lambda (_%klass192538%_)
                        (let ((__tmp195359
                               (cons (if (or _%arguments-ok?192452%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self192442%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self192442%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field192508%_
                                                             '()))
                                                 (cons _%object192510%_
                                                       (cons _%value192512%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp195359 _%stx192437%_)))
                      _%$e192535%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192442%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp195360
                                (let ((_%$obj192544%_
                                       (let ((__tmp195361
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp195361))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj192544%_
                                                                '())
                                                          (cons _%object192510%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass192515%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj192544%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self192442%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field192508%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj192544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value192512%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?192452%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj192544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self192442%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value192512%_ '())))))
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
                                 _%self192442%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj192544%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192442%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value192512%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp195360 _%stx192437%_))
                         (let ((__tmp195362
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object192510%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192442%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value192512%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp195362
                            _%stx192437%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd192462192484%_
                                           _%hd192459192476%_)
                                          (_%g192454192468%_
                                           _%g192455192471%_))))
                                  (_%g192454192468%_ _%g192455192471%_))))
                          (_%g192454192468%_ _%g192455192471%_)))))
              (_%g192453192547%_ _%args192438%_))))))
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
      (lambda (_%self190517192247%_ _%ctx192249%_ _%stx192250%_ _%args192251%_)
        (let* ((_%self192253%_ _%self190517192247%_)
               (_%self192255%_ _%self192253%_)
               (_%self192264192274%_ _%self192255%_)
               (_%E192266192278%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self192264192274%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K192267192288%_
                (lambda (_%inline192281%_ _%dispatch192282%_ _%arity192283%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self192255%_
                         _%args192251%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx192250%_
                         _%arity192283%_)))
                  (if _%inline192281%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp195363 (_%inline192281%_ _%stx192250%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp195363
                           _%stx192250%_
                           _%ctx192249%_)))
                      (if (and _%dispatch192282%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch192282%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch192282%_))
                            (let ((__tmp195364
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch192282%_
                                                           '()))
                                               _%args192251%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp195364
                               _%stx192250%_
                               _%ctx192249%_)))
                          (gxc#!procedure::optimize-call
                           _%self192255%_
                           _%ctx192249%_
                           _%stx192250%_
                           _%args192251%_)))))
               (_%e192268192291%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192264192274%_ '1 '#f '#f)))
               (_%e192269192294%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192264192274%_ '2 '#f '#f)))
               (_%e192270192297%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192264192274%_ '3 '#f '#f)))
               (_%arity192300%_ _%e192270192297%_)
               (_%e192271192302%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192264192274%_ '4 '#f '#f)))
               (_%dispatch192305%_ _%e192271192302%_)
               (_%e192272192307%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192264192274%_ '5 '#f '#f)))
               (_%inline192310%_ _%e192272192307%_))
          (_%K192267192288%_
           _%inline192310%_
           _%dispatch192305%_
           _%arity192300%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self190518192097%_ _%ctx192099%_ _%stx192100%_ _%args192101%_)
        (let* ((_%self192103%_ _%self190518192097%_)
               (_%self192105%_ _%self192103%_)
               (_%$e192119%_
                (let ((__tmp195366
                       (lambda (_%g192114192116%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g192114192116%_
                            _%args192101%_))))
                      (__tmp195365
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self192105%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp195366 __tmp195365))))
          (if _%$e192119%_
              ((lambda (_%clause192122%_)
                 (let ((__method195270
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause192122%_ 'optimize-call))))
                   (if __method195270
                       (let ()
                         (declare (not safe))
                         (__method195270
                          _%clause192122%_
                          _%ctx192099%_
                          _%stx192100%_
                          _%args192101%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause192122%_
                                  'optimize-call))
                         '#!void))))
               _%$e192119%_)
              (let ((__tmp195367
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self192105%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx192100%_
                 __tmp195367))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self190519191835%_ _%ctx191837%_ _%stx191838%_ _%args191839%_)
        (let* ((_%self191841%_ _%self190519191835%_)
               (_%self191843%_ _%self191841%_)
               (_%self191852191861%_ _%self191843%_)
               (_%E191854191865%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self191852191861%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K191855191956%_
                (lambda (_%dispatch191868%_ _%table191869%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch191868%_))
                      (let* ((_%g191870191880%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch191868%_)))
                             (_%else191872191888%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch191868%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx191837%_
                                   _%stx191838%_))))
                             (_%K191874191937%_
                              (lambda (_%main191891%_ _%keys191892%_)
                                (let ((_g195368_
                                       (gxc#!kw-lambda-split-args
                                        _%stx191838%_
                                        _%args191839%_)))
                                  (begin
                                    (let ((_g195369_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195368_)
                                                 (##vector-length _g195368_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195369_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195369_)))
                                    (let ((_%pargs191894%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195368_ 0)))
                                          (_%kwargs191895%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195368_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main191891%_))
                                        (if _%table191869%_
                                            (let ((_%xargs191903%_
                                                   (map (lambda (_%key191897%_)
                                                          (let ((_%$e191899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key191897%_ _%kwargs191895%_))))
                    (if _%$e191899%_ _%$e191899%_ '(%#ref absent-value))))
                _%keys191892%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw191905%_)
                                                 (if (memq (car _%kw191905%_)
                                                           _%keys191892%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx191838%_
                                                        _%keys191892%_
                                                        _%kw191905%_))))
                                               _%kwargs191895%_)
                                              (let ((__tmp195370
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main191891%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs191894%_
                                  _%xargs191903%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp195370
                                                 _%stx191838%_
                                                 _%ctx191837%_)))
                                            (let* ((_%kwt191907%_
                                                    (let ((__tmp195371
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp195371)))
                                                   (_%kwvars191911%_
                                                    (map (lambda (_%_191909%_)
                                                           (let ((__tmp195372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp195372)))
                 _%kwargs191895%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind191916%_
                                                    (map (lambda (_%kw191913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar191914%_)
                   (cons (cons _%kwvar191914%_ '())
                         (cons (cdr _%kw191913%_) '())))
                 _%kwargs191895%_
                 _%kwvars191911%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset191921%_
                                                    (map (lambda (_%kw191918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar191919%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt191907%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw191918%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar191919%_
                                                             '()))
                                                 '()))))))
                 _%kwargs191895%_
                 _%kwvars191911%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs191926%_
                                                    (map (lambda (_%kw191923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar191924%_)
                   (cons (car _%kw191923%_)
                         (cons '%#ref (cons _%kwvar191924%_ '()))))
                 _%kwargs191895%_
                 _%kwvars191911%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs191934%_
                                                    (map (lambda (_%key191928%_)
                                                           (let ((_%$e191930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key191928%_ _%xkwargs191926%_))))
                     (if _%$e191930%_ _%$e191930%_ '(%#ref absent-value))))
                 _%keys191892%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp195373
                                                    (cons '%#let-values
                                                          (cons _%kwbind191916%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt191907%_ '())
                                                      (cons (let ((__tmp195374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs191895%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195374 _%stx191838%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp195375
                                                             (cons (let ((__tmp195376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main191891%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt191907%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs191894%_
                                                       _%xargs191934%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp195376 _%stx191838%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp195375 _%kwset191921%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp195373
                                               _%stx191838%_
                                               _%ctx191837%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g191870191880%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e191875191940%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g191870191880%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e191876191943%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g191870191880%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e191877191946%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g191870191880%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys191949%_ _%e191877191946%_)
                                   (_%e191878191951%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g191870191880%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main191954%_ _%e191878191951%_))
                              (_%K191874191937%_
                               _%main191954%_
                               _%keys191949%_))
                            (_%else191872191888%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx191837%_ _%stx191838%_)))))
               (_%e191856191959%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191852191861%_ '1 '#f '#f)))
               (_%e191857191962%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191852191861%_ '2 '#f '#f)))
               (_%e191858191965%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191852191861%_ '3 '#f '#f)))
               (_%table191968%_ _%e191858191965%_)
               (_%e191859191970%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191852191861%_ '4 '#f '#f)))
               (_%dispatch191973%_ _%e191859191970%_))
          (_%K191855191956%_ _%dispatch191973%_ _%table191968%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx191448%_ _%args191449%_)
        (let _%lp191451%_ ((_%rest191453%_ _%args191449%_)
                           (_%pargs191454%_ '())
                           (_%kwargs191455%_ '()))
          (let* ((_%__stx194829194830%_ _%rest191453%_)
                 (_%g191461191513%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx194829194830%_)))))
            (let ((_%__kont194831194832%_
                   (lambda (_%L191692%_ _%L191693%_)
                     (_%lp191451%_
                      _%L191692%_
                      (cons _%L191693%_ _%pargs191454%_)
                      _%kwargs191455%_)))
                  (_%__kont194833194834%_
                   (lambda (_%L191638%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L191638%_ _%pargs191454%_))
                             (reverse _%kwargs191455%_))))
                  (_%__kont194835194836%_
                   (lambda (_%L191585%_ _%L191586%_ _%L191587%_)
                     (let ((_%kw191604%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L191587%_))))
                       (if (assq _%kw191604%_ _%kwargs191455%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx191448%_
                              _%kw191604%_))
                           (_%lp191451%_
                            _%L191585%_
                            _%pargs191454%_
                            (cons (cons _%kw191604%_ _%L191586%_)
                                  _%kwargs191455%_))))))
                  (_%__kont194837194838%_
                   (lambda (_%L191533%_ _%L191534%_)
                     (_%lp191451%_
                      _%L191533%_
                      (cons _%L191534%_ _%pargs191454%_)
                      _%kwargs191455%_)))
                  (_%__kont194839194840%_
                   (lambda ()
                     (values (reverse _%pargs191454%_)
                             (reverse _%kwargs191455%_)))))
              (let ((_%__match194936194937%_
                     (lambda (_%e191492191553%_
                              _%hd191493191556%_
                              _%tl191494191558%_
                              _%e191495191561%_
                              _%hd191496191564%_
                              _%tl191497191566%_
                              _%e191498191569%_
                              _%hd191499191572%_
                              _%tl191500191574%_
                              _%e191501191577%_
                              _%hd191502191580%_
                              _%tl191503191582%_)
                       (let ((_%L191585%_ _%tl191503191582%_)
                             (_%L191586%_ _%hd191502191580%_)
                             (_%L191587%_ _%hd191499191572%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L191587%_))
                             (_%__kont194835194836%_
                              _%L191585%_
                              _%L191586%_
                              _%L191587%_)
                             (_%__kont194837194838%_
                              _%tl191494191558%_
                              _%hd191493191556%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx194829194830%_))
                    (let ((_%e191465191657%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx194829194830%_))))
                      (let ((_%tl191467191662%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191465191657%_)))
                            (_%hd191466191660%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191465191657%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd191466191660%_))
                            (let ((_%e191468191665%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd191466191660%_))))
                              (let ((_%tl191470191670%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191468191665%_)))
                                    (_%hd191469191668%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191468191665%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191469191668%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd191469191668%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191470191670%_))
                                            (let ((_%e191471191673%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191470191670%_))))
                                              (let ((_%tl191473191678%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191471191673%_)))
                                                    (_%hd191472191676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191471191673%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd191472191676%_))
                                                    (let ((_%e191474191681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd191472191676%_))))
                                                      (if (equal? _%e191474191681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191473191678%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191467191662%_))
                          (let ((_%e191475191684%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191467191662%_))))
                            (let ((_%tl191477191689%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191475191684%_)))
                                  (_%hd191476191687%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191475191684%_))))
                              (_%__kont194831194832%_
                               _%tl191477191689%_
                               _%hd191476191687%_)))
                          (_%__kont194837194838%_
                           _%tl191467191662%_
                           _%hd191466191660%_))
                      (_%__kont194837194838%_
                       _%tl191467191662%_
                       _%hd191466191660%_))
                  (if (equal? _%e191474191681%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191473191678%_))
                          (_%__kont194833194834%_ _%tl191467191662%_)
                          (_%__kont194837194838%_
                           _%tl191467191662%_
                           _%hd191466191660%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191473191678%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191467191662%_))
                              (let ((_%e191501191577%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191467191662%_))))
                                (let ((_%tl191503191582%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191501191577%_)))
                                      (_%hd191502191580%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191501191577%_))))
                                  (_%__match194936194937%_
                                   _%e191465191657%_
                                   _%hd191466191660%_
                                   _%tl191467191662%_
                                   _%e191468191665%_
                                   _%hd191469191668%_
                                   _%tl191470191670%_
                                   _%e191471191673%_
                                   _%hd191472191676%_
                                   _%tl191473191678%_
                                   _%e191501191577%_
                                   _%hd191502191580%_
                                   _%tl191503191582%_)))
                              (_%__kont194837194838%_
                               _%tl191467191662%_
                               _%hd191466191660%_))
                          (_%__kont194837194838%_
                           _%tl191467191662%_
                           _%hd191466191660%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191473191678%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191467191662%_))
                                                            (let ((_%e191501191577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191467191662%_))))
                      (let ((_%tl191503191582%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191501191577%_)))
                            (_%hd191502191580%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191501191577%_))))
                        (_%__match194936194937%_
                         _%e191465191657%_
                         _%hd191466191660%_
                         _%tl191467191662%_
                         _%e191468191665%_
                         _%hd191469191668%_
                         _%tl191470191670%_
                         _%e191471191673%_
                         _%hd191472191676%_
                         _%tl191473191678%_
                         _%e191501191577%_
                         _%hd191502191580%_
                         _%tl191503191582%_)))
                    (_%__kont194837194838%_
                     _%tl191467191662%_
                     _%hd191466191660%_))
                (_%__kont194837194838%_
                 _%tl191467191662%_
                 _%hd191466191660%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont194837194838%_
                                             _%tl191467191662%_
                                             _%hd191466191660%_))
                                        (_%__kont194837194838%_
                                         _%tl191467191662%_
                                         _%hd191466191660%_))
                                    (_%__kont194837194838%_
                                     _%tl191467191662%_
                                     _%hd191466191660%_))))
                            (_%__kont194837194838%_
                             _%tl191467191662%_
                             _%hd191466191660%_))))
                    (_%__kont194839194840%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self190520191430%_ _%ctx191432%_ _%stx191433%_ _%args191434%_)
        (let* ((_%self191436%_ _%self190520191430%_)
               (_%self191438%_ _%self191436%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx191432%_ _%stx191433%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self191118%_ _%stx191119%_)
        (let* ((_%__stx194945194946%_ _%stx191119%_)
               (_%g191122191162%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194945194946%_)))))
          (let ((_%__kont194947194948%_
                 (lambda (_%L191268%_ _%L191269%_)
                   (let ((_%$e191296%_
                          (member 'return:
                                  (let ((__tmp195377
                                         (lambda (_%g191288191291%_
                                                  _%g191289191293%_)
                                           (cons _%g191288191291%_
                                                 _%g191289191293%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp195377 '() _%L191269%_))
                                  gx#stx-eq?)))
                     (if _%$e191296%_
                         ((lambda (_%tail191299%_)
                            (let ((_%type191301%_
                                   (let ((__tmp195378
                                          (let ((__tmp195379
                                                 (cadr _%tail191299%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp195379))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx191119%_
                                      __tmp195378))))
                              (gxc#check-return-type!
                               _%stx191119%_
                               _%L191268%_
                               _%type191301%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self191118%_
                                 _%L191268%_))))
                          _%$e191296%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self191118%_ _%L191268%_))))))
                (_%__kont194951194952%_
                 (lambda (_%L191191%_ _%L191192%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self191118%_ _%L191191%_)))))
            (let ((_%__match194982194983%_
                   (lambda (_%e191126191212%_
                            _%hd191127191215%_
                            _%tl191128191217%_
                            _%e191129191220%_
                            _%hd191130191223%_
                            _%tl191131191225%_
                            _%e191132191228%_
                            _%hd191133191231%_
                            _%tl191134191233%_
                            _%__splice194949194950%_
                            _%target191135191236%_
                            _%tl191137191238%_)
                     (letrec ((_%loop191138191241%_
                               (lambda (_%hd191136191244%_
                                        _%signature191142191246%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd191136191244%_))
                                     (let ((_%e191139191249%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd191136191244%_))))
                                       (let ((_%lp-tl191141191254%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e191139191249%_)))
                                             (_%lp-hd191140191252%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e191139191249%_))))
                                         (_%loop191138191241%_
                                          _%lp-tl191141191254%_
                                          (cons _%lp-hd191140191252%_
                                                _%signature191142191246%_))))
                                     (let ((_%signature191143191257%_
                                            (reverse _%signature191142191246%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl191131191225%_))
                                           (let ((_%e191144191260%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl191131191225%_))))
                                             (let ((_%tl191146191265%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e191144191260%_)))
                                                   (_%hd191145191263%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e191144191260%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl191146191265%_))
                                                   (_%__kont194947194948%_
                                                    _%hd191145191263%_
                                                    _%signature191143191257%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g191122191162%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g191122191162%_))))))))
                       (_%loop191138191241%_ _%target191135191236%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194945194946%_))
                  (let ((_%e191126191212%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194945194946%_))))
                    (let ((_%tl191128191217%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191126191212%_)))
                          (_%hd191127191215%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191126191212%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191128191217%_))
                          (let ((_%e191129191220%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191128191217%_))))
                            (let ((_%tl191131191225%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191129191220%_)))
                                  (_%hd191130191223%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191129191220%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191130191223%_))
                                  (let ((_%e191132191228%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191130191223%_))))
                                    (let ((_%tl191134191233%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191132191228%_)))
                                          (_%hd191133191231%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191132191228%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191133191231%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd191133191231%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl191134191233%_))
                                                  (let ((_%__splice194949194950%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl191134191233%_
                                                            '0))))
                                                    (let ((_%tl191137191238%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice194949194950%_
                                                              '1)))
                                                          (_%target191135191236%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice194949194950%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191137191238%_))
                                                          (_%__match194982194983%_
                                                           _%e191126191212%_
                                                           _%hd191127191215%_
                                                           _%tl191128191217%_
                                                           _%e191129191220%_
                                                           _%hd191130191223%_
                                                           _%tl191131191225%_
                                                           _%e191132191228%_
                                                           _%hd191133191231%_
                                                           _%tl191134191233%_
                                                           _%__splice194949194950%_
                                                           _%target191135191236%_
                                                           _%tl191137191238%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191131191225%_))
                      (let ((_%e191155191183%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191131191225%_))))
                        (let ((_%tl191157191188%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191155191183%_)))
                              (_%hd191156191186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191155191183%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191157191188%_))
                              (_%__kont194951194952%_
                               _%hd191156191186%_
                               _%hd191130191223%_)
                              (let ()
                                (declare (not safe))
                                (_%g191122191162%_)))))
                      (let () (declare (not safe)) (_%g191122191162%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191131191225%_))
                                                      (let ((_%e191155191183%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191131191225%_))))
                (let ((_%tl191157191188%_
                       (let () (declare (not safe)) (##cdr _%e191155191183%_)))
                      (_%hd191156191186%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191155191183%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191157191188%_))
                      (_%__kont194951194952%_
                       _%hd191156191186%_
                       _%hd191130191223%_)
                      (let () (declare (not safe)) (_%g191122191162%_)))))
              (let () (declare (not safe)) (_%g191122191162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191131191225%_))
                                                  (let ((_%e191155191183%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191131191225%_))))
                                                    (let ((_%tl191157191188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191155191183%_)))
                                                          (_%hd191156191186%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191155191183%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191157191188%_))
                                                          (_%__kont194951194952%_
                                                           _%hd191156191186%_
                                                           _%hd191130191223%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191122191162%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191122191162%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191131191225%_))
                                              (let ((_%e191155191183%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191131191225%_))))
                                                (let ((_%tl191157191188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191155191183%_)))
                                                      (_%hd191156191186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191155191183%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191157191188%_))
                                                      (_%__kont194951194952%_
                                                       _%hd191156191186%_
                                                       _%hd191130191223%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191122191162%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191122191162%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191131191225%_))
                                      (let ((_%e191155191183%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191131191225%_))))
                                        (let ((_%tl191157191188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191155191183%_)))
                                              (_%hd191156191186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191155191183%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191157191188%_))
                                              (_%__kont194951194952%_
                                               _%hd191156191186%_
                                               _%hd191130191223%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g191122191162%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191122191162%_))))))
                          (let () (declare (not safe)) (_%g191122191162%_)))))
                  (let () (declare (not safe)) (_%g191122191162%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx191096%_ _%expr191097%_ _%type191098%_)
        (let ((_%$e191100%_ (not _%type191098%_)))
          (if _%$e191100%_
              _%$e191100%_
              (let ((_%$e191103%_
                     (eq? (##structure-ref _%type191098%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e191103%_
                    _%$e191103%_
                    (let ((_%expr-type191107%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr191097%_))))
                      (if (not _%expr-type191107%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx191096%_
                             _%type191098%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type191107%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx191096%_
                                 _%type191098%_
                                 _%expr-type191107%_))
                              (let ((_%$e191111%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type191107%_
                                        'gxc#!abort::t))))
                                (if _%$e191111%_
                                    _%$e191111%_
                                    (let ((_%$e191114%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type191107%_
                                              _%type191098%_))))
                                      (if _%$e191114%_
                                          _%$e191114%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx191096%_
                                             _%type191098%_
                                             _%expr-type191107%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self190522%_ _%stx190523%_)
        (let* ((_%__stx195027195028%_ _%stx190523%_)
               (_%g190528190638%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195027195028%_)))))
          (let ((_%__kont195029195030%_
                 (lambda (_%L191070%_ _%L191071%_ _%L191072%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L191072%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self190522%_ _%L191071%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self190522%_ _%L191070%_)))))
                (_%__kont195031195032%_
                 (lambda (_%L190896%_ _%L190897%_ _%L190898%_ _%L190899%_)
                   (let ((_%$e190931%_
                          (let ((__tmp195380
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L190899%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp195380))))
                     (if _%$e190931%_
                         ((lambda (_%pred-type190934%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type190934%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type190934%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test190939%_
                                        (let ((__tmp195381
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L190899%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L190898%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp195381
                                           _%stx190523%_
                                           _%self190522%_)))
                                       (_%K190943%_
                                        (let ((__tmp195382
                                               (lambda ()
                                                 (let ((__tmp195385
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self190522%_
                                                             _%L190897%_))))
                                                       (__tmp195383
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L190898%_))
                            (let ((__tmp195384
                                   (##structure-ref
                                    _%pred-type190934%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx190523%_
                               __tmp195384)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp195385
                                                    gxc#current-compile-path-type
                                                    __tmp195383)))))
                                          (declare (not safe))
                                          (__make-promise __tmp195382)))
                                       (_%E190946%_
                                        (let ((__tmp195386
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self190522%_
                                                    _%L190896%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp195386)))
                                       (_%__stx195005195006%_ _%test190939%_)
                                       (_%g190950190964%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx195005195006%_)))))
                                  (let ((_%__kont195007195008%_
                                         (lambda (_%L190992%_ _%L190993%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L190992%_))
                                               (force _%K190943%_)
                                               (force _%E190946%_))))
                                        (_%__kont195009195010%_
                                         (lambda ()
                                           (let ((__tmp195387
                                                  (cons '%#if
                                                        (cons _%test190939%_
                                                              (cons (force _%K190943%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E190946%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195387
                                              _%stx190523%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx195005195006%_))
                                        (let ((_%e190954190976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx195005195006%_))))
                                          (let ((_%tl190956190981%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e190954190976%_)))
                                                (_%hd190955190979%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e190954190976%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl190956190981%_))
                                                (let ((_%e190957190984%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl190956190981%_))))
                                                  (let ((_%tl190959190989%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e190957190984%_)))
                                                        (_%hd190958190987%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e190957190984%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl190959190989%_))
                                                        (_%__kont195007195008%_
                                                         _%hd190958190987%_
                                                         _%hd190955190979%_)
                                                        (_%__kont195009195010%_))))
                                                (_%__kont195009195010%_))))
                                        (_%__kont195009195010%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self190522%_
                                   _%stx190523%_))))
                          _%$e190931%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self190522%_
                            _%stx190523%_))))))
                (_%__kont195033195034%_
                 (lambda (_%L190772%_ _%L190773%_ _%L190774%_ _%L190775%_)
                   (gxc#optimize-if%
                    _%self190522%_
                    (let ((__tmp195388
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L190774%_
                                       (cons _%L190772%_
                                             (cons _%L190773%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195388 _%stx190523%_)))))
                (_%__kont195035195036%_
                 (lambda (_%L190675%_ _%L190676%_ _%L190677%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self190522%_ _%stx190523%_)))))
            (let ((_%__match195234195235%_
                   (lambda (_%e190592190700%_
                            _%hd190593190703%_
                            _%tl190594190705%_
                            _%e190595190708%_
                            _%hd190596190711%_
                            _%tl190597190713%_
                            _%e190598190716%_
                            _%hd190599190719%_
                            _%tl190600190721%_
                            _%e190601190724%_
                            _%hd190602190727%_
                            _%tl190603190729%_
                            _%e190604190732%_
                            _%hd190605190735%_
                            _%tl190606190737%_
                            _%e190607190740%_
                            _%hd190608190743%_
                            _%tl190609190745%_
                            _%e190610190748%_
                            _%hd190611190751%_
                            _%tl190612190753%_
                            _%e190613190756%_
                            _%hd190614190759%_
                            _%tl190615190761%_
                            _%e190616190764%_
                            _%hd190617190767%_
                            _%tl190618190769%_)
                     (let ((_%L190772%_ _%hd190617190767%_)
                           (_%L190773%_ _%hd190614190759%_)
                           (_%L190774%_ _%hd190611190751%_)
                           (_%L190775%_ _%hd190608190743%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L190775%_ 'not))
                           (_%__kont195033195034%_
                            _%L190772%_
                            _%L190773%_
                            _%L190774%_
                            _%L190775%_)
                           (_%__kont195035195036%_
                            _%hd190617190767%_
                            _%hd190614190759%_
                            _%hd190596190711%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195027195028%_))
                  (let ((_%e190533191022%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195027195028%_))))
                    (let ((_%tl190535191027%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190533191022%_)))
                          (_%hd190534191025%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190533191022%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190535191027%_))
                          (let ((_%e190536191030%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190535191027%_))))
                            (let ((_%tl190538191035%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190536191030%_)))
                                  (_%hd190537191033%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190536191030%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190537191033%_))
                                  (let ((_%e190539191038%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190537191033%_))))
                                    (let ((_%tl190541191043%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190539191038%_)))
                                          (_%hd190540191041%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190539191038%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190540191041%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd190540191041%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190541191043%_))
                                                  (let ((_%e190542191046%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190541191043%_))))
                                                    (let ((_%tl190544191051%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190542191046%_)))
                                                          (_%hd190543191049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190542191046%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190544191051%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl190538191035%_))
                      (let ((_%e190545191054%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190538191035%_))))
                        (let ((_%tl190547191059%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190545191054%_)))
                              (_%hd190546191057%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190545191054%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190547191059%_))
                              (let ((_%e190548191062%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190547191059%_))))
                                (let ((_%tl190550191067%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190548191062%_)))
                                      (_%hd190549191065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190548191062%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190550191067%_))
                                      (_%__kont195029195030%_
                                       _%hd190549191065%_
                                       _%hd190546191057%_
                                       _%hd190543191049%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g190528190638%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g190528190638%_)))))
                      (let () (declare (not safe)) (_%g190528190638%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl190538191035%_))
                      (let ((_%e190628190659%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190538191035%_))))
                        (let ((_%tl190630190664%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190628190659%_)))
                              (_%hd190629190662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190628190659%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190630190664%_))
                              (let ((_%e190631190667%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190630190664%_))))
                                (let ((_%tl190633190672%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190631190667%_)))
                                      (_%hd190632190670%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190631190667%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190633190672%_))
                                      (_%__kont195035195036%_
                                       _%hd190632190670%_
                                       _%hd190629190662%_
                                       _%hd190537191033%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g190528190638%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g190528190638%_)))))
                      (let () (declare (not safe)) (_%g190528190638%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190538191035%_))
                                                      (let ((_%e190628190659%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190538191035%_))))
                (let ((_%tl190630190664%_
                       (let () (declare (not safe)) (##cdr _%e190628190659%_)))
                      (_%hd190629190662%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190628190659%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl190630190664%_))
                      (let ((_%e190631190667%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190630190664%_))))
                        (let ((_%tl190633190672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190631190667%_)))
                              (_%hd190632190670%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190631190667%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190633190672%_))
                              (_%__kont195035195036%_
                               _%hd190632190670%_
                               _%hd190629190662%_
                               _%hd190537191033%_)
                              (let ()
                                (declare (not safe))
                                (_%g190528190638%_)))))
                      (let () (declare (not safe)) (_%g190528190638%_)))))
              (let () (declare (not safe)) (_%g190528190638%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd190540191041%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190541191043%_))
                                                      (let ((_%e190564190832%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190541191043%_))))
                (let ((_%tl190566190837%_
                       (let () (declare (not safe)) (##cdr _%e190564190832%_)))
                      (_%hd190565190835%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190564190832%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd190565190835%_))
                      (let ((_%e190567190840%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd190565190835%_))))
                        (let ((_%tl190569190845%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190567190840%_)))
                              (_%hd190568190843%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190567190840%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd190568190843%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd190568190843%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190569190845%_))
                                      (let ((_%e190570190848%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190569190845%_))))
                                        (let ((_%tl190572190853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190570190848%_)))
                                              (_%hd190571190851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190570190848%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190572190853%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190566190837%_))
                                                  (let ((_%e190573190856%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190566190837%_))))
                                                    (let ((_%tl190575190861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190573190856%_)))
                                                          (_%hd190574190859%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190573190856%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd190574190859%_))
                                                          (let ((_%e190576190864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd190574190859%_))))
                    (let ((_%tl190578190869%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190576190864%_)))
                          (_%hd190577190867%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190576190864%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd190577190867%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd190577190867%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190578190869%_))
                                  (let ((_%e190579190872%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190578190869%_))))
                                    (let ((_%tl190581190877%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190579190872%_)))
                                          (_%hd190580190875%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190579190872%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190581190877%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190575190861%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190538191035%_))
                                                  (let ((_%e190582190880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190538191035%_))))
                                                    (let ((_%tl190584190885%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190582190880%_)))
                                                          (_%hd190583190883%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190582190880%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190584190885%_))
                                                          (let ((_%e190585190888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190584190885%_))))
                    (let ((_%tl190587190893%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190585190888%_)))
                          (_%hd190586190891%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190585190888%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190587190893%_))
                          (_%__kont195031195032%_
                           _%hd190586190891%_
                           _%hd190583190883%_
                           _%hd190580190875%_
                           _%hd190571190851%_)
                          (let () (declare (not safe)) (_%g190528190638%_)))))
                  (let () (declare (not safe)) (_%g190528190638%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190528190638%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190538191035%_))
                                                  (let ((_%e190628190659%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190538191035%_))))
                                                    (let ((_%tl190630190664%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190628190659%_)))
                                                          (_%hd190629190662%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190628190659%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190630190664%_))
                                                          (let ((_%e190631190667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190630190664%_))))
                    (let ((_%tl190633190672%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190631190667%_)))
                          (_%hd190632190670%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190631190667%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190633190672%_))
                          (_%__kont195035195036%_
                           _%hd190632190670%_
                           _%hd190629190662%_
                           _%hd190537191033%_)
                          (let () (declare (not safe)) (_%g190528190638%_)))))
                  (let () (declare (not safe)) (_%g190528190638%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190528190638%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190575190861%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190538191035%_))
                                                  (let ((_%e190613190756%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190538191035%_))))
                                                    (let ((_%tl190615190761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190613190756%_)))
                                                          (_%hd190614190759%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190613190756%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190615190761%_))
                                                          (let ((_%e190616190764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190615190761%_))))
                    (let ((_%tl190618190769%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190616190764%_)))
                          (_%hd190617190767%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190616190764%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190618190769%_))
                          (_%__match195234195235%_
                           _%e190533191022%_
                           _%hd190534191025%_
                           _%tl190535191027%_
                           _%e190536191030%_
                           _%hd190537191033%_
                           _%tl190538191035%_
                           _%e190539191038%_
                           _%hd190540191041%_
                           _%tl190541191043%_
                           _%e190564190832%_
                           _%hd190565190835%_
                           _%tl190566190837%_
                           _%e190567190840%_
                           _%hd190568190843%_
                           _%tl190569190845%_
                           _%e190570190848%_
                           _%hd190571190851%_
                           _%tl190572190853%_
                           _%e190573190856%_
                           _%hd190574190859%_
                           _%tl190575190861%_
                           _%e190613190756%_
                           _%hd190614190759%_
                           _%tl190615190761%_
                           _%e190616190764%_
                           _%hd190617190767%_
                           _%tl190618190769%_)
                          (let () (declare (not safe)) (_%g190528190638%_)))))
                  (let () (declare (not safe)) (_%g190528190638%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190528190638%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190538191035%_))
                                                  (let ((_%e190628190659%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190538191035%_))))
                                                    (let ((_%tl190630190664%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190628190659%_)))
                                                          (_%hd190629190662%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190628190659%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190630190664%_))
                                                          (let ((_%e190631190667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190630190664%_))))
                    (let ((_%tl190633190672%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190631190667%_)))
                          (_%hd190632190670%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190631190667%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190633190672%_))
                          (_%__kont195035195036%_
                           _%hd190632190670%_
                           _%hd190629190662%_
                           _%hd190537191033%_)
                          (let () (declare (not safe)) (_%g190528190638%_)))))
                  (let () (declare (not safe)) (_%g190528190638%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190528190638%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190575190861%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190538191035%_))
                                          (let ((_%e190613190756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190538191035%_))))
                                            (let ((_%tl190615190761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190613190756%_)))
                                                  (_%hd190614190759%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190613190756%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190615190761%_))
                                                  (let ((_%e190616190764%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190615190761%_))))
                                                    (let ((_%tl190618190769%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190616190764%_)))
                                                          (_%hd190617190767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190616190764%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190618190769%_))
                                                          (_%__match195234195235%_
                                                           _%e190533191022%_
                                                           _%hd190534191025%_
                                                           _%tl190535191027%_
                                                           _%e190536191030%_
                                                           _%hd190537191033%_
                                                           _%tl190538191035%_
                                                           _%e190539191038%_
                                                           _%hd190540191041%_
                                                           _%tl190541191043%_
                                                           _%e190564190832%_
                                                           _%hd190565190835%_
                                                           _%tl190566190837%_
                                                           _%e190567190840%_
                                                           _%hd190568190843%_
                                                           _%tl190569190845%_
                                                           _%e190570190848%_
                                                           _%hd190571190851%_
                                                           _%tl190572190853%_
                                                           _%e190573190856%_
                                                           _%hd190574190859%_
                                                           _%tl190575190861%_
                                                           _%e190613190756%_
                                                           _%hd190614190759%_
                                                           _%tl190615190761%_
                                                           _%e190616190764%_
                                                           _%hd190617190767%_
                                                           _%tl190618190769%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190528190638%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190528190638%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190528190638%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190538191035%_))
                                          (let ((_%e190628190659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190538191035%_))))
                                            (let ((_%tl190630190664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190628190659%_)))
                                                  (_%hd190629190662%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190628190659%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190630190664%_))
                                                  (let ((_%e190631190667%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190630190664%_))))
                                                    (let ((_%tl190633190672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190631190667%_)))
                                                          (_%hd190632190670%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190631190667%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190633190672%_))
                                                          (_%__kont195035195036%_
                                                           _%hd190632190670%_
                                                           _%hd190629190662%_
                                                           _%hd190537191033%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190528190638%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190528190638%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190528190638%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl190575190861%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190538191035%_))
                                      (let ((_%e190613190756%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190538191035%_))))
                                        (let ((_%tl190615190761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190613190756%_)))
                                              (_%hd190614190759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190613190756%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190615190761%_))
                                              (let ((_%e190616190764%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190615190761%_))))
                                                (let ((_%tl190618190769%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190616190764%_)))
                                                      (_%hd190617190767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190616190764%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190618190769%_))
                                                      (_%__match195234195235%_
                                                       _%e190533191022%_
                                                       _%hd190534191025%_
                                                       _%tl190535191027%_
                                                       _%e190536191030%_
                                                       _%hd190537191033%_
                                                       _%tl190538191035%_
                                                       _%e190539191038%_
                                                       _%hd190540191041%_
                                                       _%tl190541191043%_
                                                       _%e190564190832%_
                                                       _%hd190565190835%_
                                                       _%tl190566190837%_
                                                       _%e190567190840%_
                                                       _%hd190568190843%_
                                                       _%tl190569190845%_
                                                       _%e190570190848%_
                                                       _%hd190571190851%_
                                                       _%tl190572190853%_
                                                       _%e190573190856%_
                                                       _%hd190574190859%_
                                                       _%tl190575190861%_
                                                       _%e190613190756%_
                                                       _%hd190614190759%_
                                                       _%tl190615190761%_
                                                       _%e190616190764%_
                                                       _%hd190617190767%_
                                                       _%tl190618190769%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190528190638%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190528190638%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190528190638%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190538191035%_))
                                      (let ((_%e190628190659%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190538191035%_))))
                                        (let ((_%tl190630190664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190628190659%_)))
                                              (_%hd190629190662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190628190659%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190630190664%_))
                                              (let ((_%e190631190667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190630190664%_))))
                                                (let ((_%tl190633190672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190631190667%_)))
                                                      (_%hd190632190670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190631190667%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190633190672%_))
                                                      (_%__kont195035195036%_
                                                       _%hd190632190670%_
                                                       _%hd190629190662%_
                                                       _%hd190537191033%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190528190638%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190528190638%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190528190638%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190575190861%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190538191035%_))
                                  (let ((_%e190613190756%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190538191035%_))))
                                    (let ((_%tl190615190761%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190613190756%_)))
                                          (_%hd190614190759%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190613190756%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190615190761%_))
                                          (let ((_%e190616190764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190615190761%_))))
                                            (let ((_%tl190618190769%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190616190764%_)))
                                                  (_%hd190617190767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190616190764%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl190618190769%_))
                                                  (_%__match195234195235%_
                                                   _%e190533191022%_
                                                   _%hd190534191025%_
                                                   _%tl190535191027%_
                                                   _%e190536191030%_
                                                   _%hd190537191033%_
                                                   _%tl190538191035%_
                                                   _%e190539191038%_
                                                   _%hd190540191041%_
                                                   _%tl190541191043%_
                                                   _%e190564190832%_
                                                   _%hd190565190835%_
                                                   _%tl190566190837%_
                                                   _%e190567190840%_
                                                   _%hd190568190843%_
                                                   _%tl190569190845%_
                                                   _%e190570190848%_
                                                   _%hd190571190851%_
                                                   _%tl190572190853%_
                                                   _%e190573190856%_
                                                   _%hd190574190859%_
                                                   _%tl190575190861%_
                                                   _%e190613190756%_
                                                   _%hd190614190759%_
                                                   _%tl190615190761%_
                                                   _%e190616190764%_
                                                   _%hd190617190767%_
                                                   _%tl190618190769%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190528190638%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190528190638%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190528190638%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190538191035%_))
                                  (let ((_%e190628190659%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190538191035%_))))
                                    (let ((_%tl190630190664%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190628190659%_)))
                                          (_%hd190629190662%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190628190659%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190630190664%_))
                                          (let ((_%e190631190667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190630190664%_))))
                                            (let ((_%tl190633190672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190631190667%_)))
                                                  (_%hd190632190670%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190631190667%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl190633190672%_))
                                                  (_%__kont195035195036%_
                                                   _%hd190632190670%_
                                                   _%hd190629190662%_
                                                   _%hd190537191033%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190528190638%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190528190638%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190528190638%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190575190861%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190538191035%_))
                          (let ((_%e190613190756%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190538191035%_))))
                            (let ((_%tl190615190761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190613190756%_)))
                                  (_%hd190614190759%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190613190756%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190615190761%_))
                                  (let ((_%e190616190764%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190615190761%_))))
                                    (let ((_%tl190618190769%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190616190764%_)))
                                          (_%hd190617190767%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190616190764%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190618190769%_))
                                          (_%__match195234195235%_
                                           _%e190533191022%_
                                           _%hd190534191025%_
                                           _%tl190535191027%_
                                           _%e190536191030%_
                                           _%hd190537191033%_
                                           _%tl190538191035%_
                                           _%e190539191038%_
                                           _%hd190540191041%_
                                           _%tl190541191043%_
                                           _%e190564190832%_
                                           _%hd190565190835%_
                                           _%tl190566190837%_
                                           _%e190567190840%_
                                           _%hd190568190843%_
                                           _%tl190569190845%_
                                           _%e190570190848%_
                                           _%hd190571190851%_
                                           _%tl190572190853%_
                                           _%e190573190856%_
                                           _%hd190574190859%_
                                           _%tl190575190861%_
                                           _%e190613190756%_
                                           _%hd190614190759%_
                                           _%tl190615190761%_
                                           _%e190616190764%_
                                           _%hd190617190767%_
                                           _%tl190618190769%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190528190638%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190528190638%_)))))
                          (let () (declare (not safe)) (_%g190528190638%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190538191035%_))
                          (let ((_%e190628190659%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190538191035%_))))
                            (let ((_%tl190630190664%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190628190659%_)))
                                  (_%hd190629190662%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190628190659%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190630190664%_))
                                  (let ((_%e190631190667%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190630190664%_))))
                                    (let ((_%tl190633190672%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190631190667%_)))
                                          (_%hd190632190670%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190631190667%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190633190672%_))
                                          (_%__kont195035195036%_
                                           _%hd190632190670%_
                                           _%hd190629190662%_
                                           _%hd190537191033%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190528190638%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190528190638%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g190528190638%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190538191035%_))
                                                      (let ((_%e190628190659%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190538191035%_))))
                (let ((_%tl190630190664%_
                       (let () (declare (not safe)) (##cdr _%e190628190659%_)))
                      (_%hd190629190662%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190628190659%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl190630190664%_))
                      (let ((_%e190631190667%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190630190664%_))))
                        (let ((_%tl190633190672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190631190667%_)))
                              (_%hd190632190670%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190631190667%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190633190672%_))
                              (_%__kont195035195036%_
                               _%hd190632190670%_
                               _%hd190629190662%_
                               _%hd190537191033%_)
                              (let ()
                                (declare (not safe))
                                (_%g190528190638%_)))))
                      (let () (declare (not safe)) (_%g190528190638%_)))))
              (let () (declare (not safe)) (_%g190528190638%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190538191035%_))
                                                  (let ((_%e190628190659%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190538191035%_))))
                                                    (let ((_%tl190630190664%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190628190659%_)))
                                                          (_%hd190629190662%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190628190659%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190630190664%_))
                                                          (let ((_%e190631190667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190630190664%_))))
                    (let ((_%tl190633190672%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190631190667%_)))
                          (_%hd190632190670%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190631190667%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190633190672%_))
                          (_%__kont195035195036%_
                           _%hd190632190670%_
                           _%hd190629190662%_
                           _%hd190537191033%_)
                          (let () (declare (not safe)) (_%g190528190638%_)))))
                  (let () (declare (not safe)) (_%g190528190638%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190528190638%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190538191035%_))
                                          (let ((_%e190628190659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190538191035%_))))
                                            (let ((_%tl190630190664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190628190659%_)))
                                                  (_%hd190629190662%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190628190659%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190630190664%_))
                                                  (let ((_%e190631190667%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190630190664%_))))
                                                    (let ((_%tl190633190672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190631190667%_)))
                                                          (_%hd190632190670%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190631190667%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190633190672%_))
                                                          (_%__kont195035195036%_
                                                           _%hd190632190670%_
                                                           _%hd190629190662%_
                                                           _%hd190537191033%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190528190638%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190528190638%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190528190638%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190538191035%_))
                                      (let ((_%e190628190659%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190538191035%_))))
                                        (let ((_%tl190630190664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190628190659%_)))
                                              (_%hd190629190662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190628190659%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190630190664%_))
                                              (let ((_%e190631190667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190630190664%_))))
                                                (let ((_%tl190633190672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190631190667%_)))
                                                      (_%hd190632190670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190631190667%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190633190672%_))
                                                      (_%__kont195035195036%_
                                                       _%hd190632190670%_
                                                       _%hd190629190662%_
                                                       _%hd190537191033%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190528190638%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190528190638%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190528190638%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190538191035%_))
                                  (let ((_%e190628190659%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190538191035%_))))
                                    (let ((_%tl190630190664%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190628190659%_)))
                                          (_%hd190629190662%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190628190659%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190630190664%_))
                                          (let ((_%e190631190667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190630190664%_))))
                                            (let ((_%tl190633190672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190631190667%_)))
                                                  (_%hd190632190670%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190631190667%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl190633190672%_))
                                                  (_%__kont195035195036%_
                                                   _%hd190632190670%_
                                                   _%hd190629190662%_
                                                   _%hd190537191033%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190528190638%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190528190638%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190528190638%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190538191035%_))
                          (let ((_%e190628190659%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190538191035%_))))
                            (let ((_%tl190630190664%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190628190659%_)))
                                  (_%hd190629190662%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190628190659%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190630190664%_))
                                  (let ((_%e190631190667%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190630190664%_))))
                                    (let ((_%tl190633190672%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190631190667%_)))
                                          (_%hd190632190670%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190631190667%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190633190672%_))
                                          (_%__kont195035195036%_
                                           _%hd190632190670%_
                                           _%hd190629190662%_
                                           _%hd190537191033%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190528190638%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190528190638%_)))))
                          (let () (declare (not safe)) (_%g190528190638%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl190538191035%_))
                  (let ((_%e190628190659%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190538191035%_))))
                    (let ((_%tl190630190664%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190628190659%_)))
                          (_%hd190629190662%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190628190659%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190630190664%_))
                          (let ((_%e190631190667%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190630190664%_))))
                            (let ((_%tl190633190672%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190631190667%_)))
                                  (_%hd190632190670%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190631190667%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl190633190672%_))
                                  (_%__kont195035195036%_
                                   _%hd190632190670%_
                                   _%hd190629190662%_
                                   _%hd190537191033%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g190528190638%_)))))
                          (let () (declare (not safe)) (_%g190528190638%_)))))
                  (let () (declare (not safe)) (_%g190528190638%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190538191035%_))
                                                      (let ((_%e190628190659%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190538191035%_))))
                (let ((_%tl190630190664%_
                       (let () (declare (not safe)) (##cdr _%e190628190659%_)))
                      (_%hd190629190662%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190628190659%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl190630190664%_))
                      (let ((_%e190631190667%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190630190664%_))))
                        (let ((_%tl190633190672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190631190667%_)))
                              (_%hd190632190670%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190631190667%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190633190672%_))
                              (_%__kont195035195036%_
                               _%hd190632190670%_
                               _%hd190629190662%_
                               _%hd190537191033%_)
                              (let ()
                                (declare (not safe))
                                (_%g190528190638%_)))))
                      (let () (declare (not safe)) (_%g190528190638%_)))))
              (let () (declare (not safe)) (_%g190528190638%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190538191035%_))
                                              (let ((_%e190628190659%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190538191035%_))))
                                                (let ((_%tl190630190664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190628190659%_)))
                                                      (_%hd190629190662%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190628190659%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190630190664%_))
                                                      (let ((_%e190631190667%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190630190664%_))))
                (let ((_%tl190633190672%_
                       (let () (declare (not safe)) (##cdr _%e190631190667%_)))
                      (_%hd190632190670%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190631190667%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190633190672%_))
                      (_%__kont195035195036%_
                       _%hd190632190670%_
                       _%hd190629190662%_
                       _%hd190537191033%_)
                      (let () (declare (not safe)) (_%g190528190638%_)))))
              (let () (declare (not safe)) (_%g190528190638%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g190528190638%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190538191035%_))
                                      (let ((_%e190628190659%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190538191035%_))))
                                        (let ((_%tl190630190664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190628190659%_)))
                                              (_%hd190629190662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190628190659%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190630190664%_))
                                              (let ((_%e190631190667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190630190664%_))))
                                                (let ((_%tl190633190672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190631190667%_)))
                                                      (_%hd190632190670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190631190667%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190633190672%_))
                                                      (_%__kont195035195036%_
                                                       _%hd190632190670%_
                                                       _%hd190629190662%_
                                                       _%hd190537191033%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190528190638%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190528190638%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190528190638%_))))))
                          (let () (declare (not safe)) (_%g190528190638%_)))))
                  (let () (declare (not safe)) (_%g190528190638%_))))))))))
