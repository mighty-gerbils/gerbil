(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1733870081)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp197344 (list gxc#::basic-xform::t))
            (__tmp197343 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp197344
         '()
         __tmp197343
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args196621%_
        (apply make-instance gxc#::optimize-call::t _%$args196621%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp197345
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
        (__make-promise __tmp197345)))
    (define gxc#apply-optimize-call
      (lambda (_%stx196613%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self196616%_
                (let ((__obj197335
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj197335))
               (__tmp197346
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self196616%_ _%stx196613%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197346
           gxc#current-compile-method
           _%self196616%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp197348 (list gxc#::void::t))
            (__tmp197347 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp197348
         '()
         __tmp197347
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args196610%_
        (apply make-instance gxc#::check-return-type::t _%$args196610%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp197349
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
        (__make-promise __tmp197349)))
    (define gxc#apply-check-return-type
      (lambda (_%stx196602%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self196605%_
                (let ((__obj197337
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj197337))
               (__tmp197350
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self196605%_ _%stx196602%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197350
           gxc#current-compile-method
           _%self196605%_))))
    (define gxc#optimize-call%
      (lambda (_%self196203%_ _%stx196204%_)
        (let* ((_%__stx196690196691%_ _%stx196204%_)
               (_%g196207196253%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196690196691%_)))))
          (let ((_%__kont196692196693%_
                 (lambda (_%L196396%_ _%L196397%_)
                   (let* ((_%rator-id196417%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L196397%_)))
                          (_%rator-type196419%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id196417%_))))
                     (if (or (not _%rator-type196419%_)
                             (eq? (##structure-ref
                                   _%rator-type196419%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self196203%_ _%stx196204%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type196419%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp197351
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type196419%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id196417%_
                                  '" => "
                                  _%rator-type196419%_
                                  '" "
                                  __tmp197351))
                               (let* ((_%optimized196434%_
                                       (let ((__method197338
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type196419%_
                                                 'optimize-call))))
                                         (if __method197338
                                             (let ((__tmp197352
                                                    (let ((__tmp197353
                                                           (lambda (_%g196426196429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g196427196431%_)
                     (cons _%g196426196429%_ _%g196427196431%_))))
              (declare (not safe))
              (__foldr1 __tmp197353 '() _%L196396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method197338
                                                _%rator-type196419%_
                                                _%self196203%_
                                                _%stx196204%_
                                                __tmp197352))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type196419%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx196638196639%_
                                       _%optimized196434%_)
                                      (_%g196437196466%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx196638196639%_)))))
                                 (let ((_%__kont196640196641%_
                                        (lambda (_%L196534%_ _%L196535%_)
                                          (let* ((_%optimized-rator-id196562%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L196535%_)))
                                                 (_%rator-type196567%_
                                                  (let ((_%$e196564%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id196562%_))))
                                                    (if _%$e196564%_
                                                        _%$e196564%_
                                                        _%rator-type196419%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type196567%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id196562%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type196567%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type196567%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized196434%_
                                                (let ((__tmp197354
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L196535%_ '()))
                           (let ((__tmp197355
                                  (lambda (_%g196575196578%_ _%g196576196580%_)
                                    (cons _%g196575196578%_
                                          _%g196576196580%_))))
                             (declare (not safe))
                             (__foldr1 __tmp197355 '() _%L196534%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp197354
                                                   _%stx196204%_))))))
                                       (_%__kont196644196645%_
                                        (lambda () _%optimized196434%_)))
                                   (let ((_%__match196687196688%_
                                          (lambda (_%e196441196478%_
                                                   _%hd196442196481%_
                                                   _%tl196443196483%_
                                                   _%e196444196486%_
                                                   _%hd196445196489%_
                                                   _%tl196446196491%_
                                                   _%e196447196494%_
                                                   _%hd196448196497%_
                                                   _%tl196449196499%_
                                                   _%e196450196502%_
                                                   _%hd196451196505%_
                                                   _%tl196452196507%_
                                                   _%__splice196642196643%_
                                                   _%target196453196510%_
                                                   _%tl196455196512%_)
                                            (letrec ((_%loop196456196515%_
                                                      (lambda (_%hd196454196518%_
                                                               _%arg196460196520%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd196454196518%_))
                                                            (let ((_%e196457196523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd196454196518%_))))
                      (let ((_%lp-tl196459196528%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e196457196523%_)))
                            (_%lp-hd196458196526%_
                             (let ()
                               (declare (not safe))
                               (##car _%e196457196523%_))))
                        (_%loop196456196515%_
                         _%lp-tl196459196528%_
                         (cons _%lp-hd196458196526%_ _%arg196460196520%_))))
                    (let ((_%arg196461196531%_ (reverse _%arg196460196520%_)))
                      (_%__kont196640196641%_
                       _%arg196461196531%_
                       _%hd196451196505%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop196456196515%_
                                               _%target196453196510%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx196638196639%_))
                                         (let ((_%e196441196478%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx196638196639%_))))
                                           (let ((_%tl196443196483%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196441196478%_)))
                                                 (_%hd196442196481%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196441196478%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd196442196481%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd196442196481%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl196443196483%_))
                                                         (let ((_%e196444196486%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl196443196483%_))))
                   (let ((_%tl196446196491%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e196444196486%_)))
                         (_%hd196445196489%_
                          (let ()
                            (declare (not safe))
                            (##car _%e196444196486%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd196445196489%_))
                         (let ((_%e196447196494%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd196445196489%_))))
                           (let ((_%tl196449196499%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e196447196494%_)))
                                 (_%hd196448196497%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e196447196494%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd196448196497%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd196448196497%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl196449196499%_))
                                         (let ((_%e196450196502%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl196449196499%_))))
                                           (let ((_%tl196452196507%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196450196502%_)))
                                                 (_%hd196451196505%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196450196502%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl196452196507%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl196446196491%_))
                                                     (let ((_%__splice196642196643%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl196446196491%_
                                                               '0))))
                                                       (let ((_%tl196455196512%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice196642196643%_ '1)))
                     (_%target196453196510%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice196642196643%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl196455196512%_))
                     (_%__match196687196688%_
                      _%e196441196478%_
                      _%hd196442196481%_
                      _%tl196443196483%_
                      _%e196444196486%_
                      _%hd196445196489%_
                      _%tl196446196491%_
                      _%e196447196494%_
                      _%hd196448196497%_
                      _%tl196449196499%_
                      _%e196450196502%_
                      _%hd196451196505%_
                      _%tl196452196507%_
                      _%__splice196642196643%_
                      _%target196453196510%_
                      _%tl196455196512%_)
                     (_%__kont196644196645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont196644196645%_))
                                                 (_%__kont196644196645%_))))
                                         (_%__kont196644196645%_))
                                     (_%__kont196644196645%_))
                                 (_%__kont196644196645%_))))
                         (_%__kont196644196645%_))))
                 (_%__kont196644196645%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont196644196645%_))
                                                 (_%__kont196644196645%_))))
                                         (_%__kont196644196645%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type196419%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type196419%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp197356
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L196397%_
                                                                '()))
                                                    (map (lambda (_%g196586196588%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self196203%_
                                                              _%g196586196588%_)))
                                                         (let ((__tmp197357
                                                                (lambda (_%g196590196593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g196591196595%_)
                          (cons _%g196590196593%_ _%g196591196595%_))))
                   (declare (not safe))
                   (__foldr1 __tmp197357 '() _%L196396%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp197356
                                    _%stx196204%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx196204%_
                                    _%rator-type196419%_))))))))
                (_%__kont196696196697%_
                 (lambda (_%L196298%_ _%L196299%_)
                   (let ((_%rator-type196316%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L196299%_))))
                     (if (and _%rator-type196316%_
                              (eq? (##structure-ref
                                    _%rator-type196316%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type196316%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type196316%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type196316%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp197358
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self196203%_
                                               _%L196299%_))
                                            (map (lambda (_%g196318196320%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self196203%_
                                                      _%g196318196320%_)))
                                                 (let ((__tmp197359
                                                        (lambda (_%g196322196325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g196323196327%_)
                  (cons _%g196322196325%_ _%g196323196327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp197359
                                                    '()
                                                    _%L196298%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp197358 _%stx196204%_))
                         (if (or (not _%rator-type196316%_)
                                 (let ((__tmp197360
                                        (##structure-ref
                                         _%rator-type196316%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp197360 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self196203%_ _%stx196204%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx196204%_
                                _%rator-type196316%_))))))))
            (let* ((_%__match196757196758%_
                    (lambda (_%e196234196258%_
                             _%hd196235196261%_
                             _%tl196236196263%_
                             _%e196237196266%_
                             _%hd196238196269%_
                             _%tl196239196271%_
                             _%__splice196698196699%_
                             _%target196240196274%_
                             _%tl196242196276%_)
                      (letrec ((_%loop196243196279%_
                                (lambda (_%hd196241196282%_
                                         _%rand196247196284%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196241196282%_))
                                      (let ((_%e196244196287%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196241196282%_))))
                                        (let ((_%lp-tl196246196292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196244196287%_)))
                                              (_%lp-hd196245196290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196244196287%_))))
                                          (_%loop196243196279%_
                                           _%lp-tl196246196292%_
                                           (cons _%lp-hd196245196290%_
                                                 _%rand196247196284%_))))
                                      (let ((_%rand196248196295%_
                                             (reverse _%rand196247196284%_)))
                                        (_%__kont196696196697%_
                                         _%rand196248196295%_
                                         _%hd196238196269%_))))))
                        (_%loop196243196279%_ _%target196240196274%_ '()))))
                   (_%__match196737196738%_
                    (lambda (_%e196211196340%_
                             _%hd196212196343%_
                             _%tl196213196345%_
                             _%e196214196348%_
                             _%hd196215196351%_
                             _%tl196216196353%_
                             _%e196217196356%_
                             _%hd196218196359%_
                             _%tl196219196361%_
                             _%e196220196364%_
                             _%hd196221196367%_
                             _%tl196222196369%_
                             _%__splice196694196695%_
                             _%target196223196372%_
                             _%tl196225196374%_)
                      (letrec ((_%loop196226196377%_
                                (lambda (_%hd196224196380%_
                                         _%rand196230196382%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196224196380%_))
                                      (let ((_%e196227196385%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196224196380%_))))
                                        (let ((_%lp-tl196229196390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196227196385%_)))
                                              (_%lp-hd196228196388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196227196385%_))))
                                          (_%loop196226196377%_
                                           _%lp-tl196229196390%_
                                           (cons _%lp-hd196228196388%_
                                                 _%rand196230196382%_))))
                                      (let ((_%rand196231196393%_
                                             (reverse _%rand196230196382%_)))
                                        (_%__kont196692196693%_
                                         _%rand196231196393%_
                                         _%hd196221196367%_))))))
                        (_%loop196226196377%_ _%target196223196372%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196690196691%_))
                  (let ((_%e196211196340%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196690196691%_))))
                    (let ((_%tl196213196345%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196211196340%_)))
                          (_%hd196212196343%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196211196340%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196213196345%_))
                          (let ((_%e196214196348%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196213196345%_))))
                            (let ((_%tl196216196353%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196214196348%_)))
                                  (_%hd196215196351%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196214196348%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196215196351%_))
                                  (let ((_%e196217196356%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196215196351%_))))
                                    (let ((_%tl196219196361%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196217196356%_)))
                                          (_%hd196218196359%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196217196356%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196218196359%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196218196359%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196219196361%_))
                                                  (let ((_%e196220196364%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196219196361%_))))
                                                    (let ((_%tl196222196369%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196220196364%_)))
                                                          (_%hd196221196367%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196220196364%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196222196369%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl196216196353%_))
                      (let ((_%__splice196694196695%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl196216196353%_
                                '0))))
                        (let ((_%tl196225196374%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196694196695%_ '1)))
                              (_%target196223196372%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196694196695%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196225196374%_))
                              (_%__match196737196738%_
                               _%e196211196340%_
                               _%hd196212196343%_
                               _%tl196213196345%_
                               _%e196214196348%_
                               _%hd196215196351%_
                               _%tl196216196353%_
                               _%e196217196356%_
                               _%hd196218196359%_
                               _%tl196219196361%_
                               _%e196220196364%_
                               _%hd196221196367%_
                               _%tl196222196369%_
                               _%__splice196694196695%_
                               _%target196223196372%_
                               _%tl196225196374%_)
                              (let ()
                                (declare (not safe))
                                (_%g196207196253%_)))))
                      (let () (declare (not safe)) (_%g196207196253%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl196216196353%_))
                      (let ((_%__splice196698196699%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl196216196353%_
                                '0))))
                        (let ((_%tl196242196276%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196698196699%_ '1)))
                              (_%target196240196274%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196698196699%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196242196276%_))
                              (_%__match196757196758%_
                               _%e196211196340%_
                               _%hd196212196343%_
                               _%tl196213196345%_
                               _%e196214196348%_
                               _%hd196215196351%_
                               _%tl196216196353%_
                               _%__splice196698196699%_
                               _%target196240196274%_
                               _%tl196242196276%_)
                              (let ()
                                (declare (not safe))
                                (_%g196207196253%_)))))
                      (let () (declare (not safe)) (_%g196207196253%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl196216196353%_))
                                                      (let ((_%__splice196698196699%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl196216196353%_ '0))))
                (let ((_%tl196242196276%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice196698196699%_ '1)))
                      (_%target196240196274%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice196698196699%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196242196276%_))
                      (_%__match196757196758%_
                       _%e196211196340%_
                       _%hd196212196343%_
                       _%tl196213196345%_
                       _%e196214196348%_
                       _%hd196215196351%_
                       _%tl196216196353%_
                       _%__splice196698196699%_
                       _%target196240196274%_
                       _%tl196242196276%_)
                      (let () (declare (not safe)) (_%g196207196253%_)))))
              (let () (declare (not safe)) (_%g196207196253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl196216196353%_))
                                                  (let ((_%__splice196698196699%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl196216196353%_
                                                            '0))))
                                                    (let ((_%tl196242196276%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196698196699%_
                                                              '1)))
                                                          (_%target196240196274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196698196699%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196242196276%_))
                                                          (_%__match196757196758%_
                                                           _%e196211196340%_
                                                           _%hd196212196343%_
                                                           _%tl196213196345%_
                                                           _%e196214196348%_
                                                           _%hd196215196351%_
                                                           _%tl196216196353%_
                                                           _%__splice196698196699%_
                                                           _%target196240196274%_
                                                           _%tl196242196276%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g196207196253%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g196207196253%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl196216196353%_))
                                              (let ((_%__splice196698196699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl196216196353%_
                                                        '0))))
                                                (let ((_%tl196242196276%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice196698196699%_
                                                          '1)))
                                                      (_%target196240196274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice196698196699%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196242196276%_))
                                                      (_%__match196757196758%_
                                                       _%e196211196340%_
                                                       _%hd196212196343%_
                                                       _%tl196213196345%_
                                                       _%e196214196348%_
                                                       _%hd196215196351%_
                                                       _%tl196216196353%_
                                                       _%__splice196698196699%_
                                                       _%target196240196274%_
                                                       _%tl196242196276%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g196207196253%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g196207196253%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196216196353%_))
                                      (let ((_%__splice196698196699%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196216196353%_
                                                '0))))
                                        (let ((_%tl196242196276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196698196699%_
                                                  '1)))
                                              (_%target196240196274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196698196699%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196242196276%_))
                                              (_%__match196757196758%_
                                               _%e196211196340%_
                                               _%hd196212196343%_
                                               _%tl196213196345%_
                                               _%e196214196348%_
                                               _%hd196215196351%_
                                               _%tl196216196353%_
                                               _%__splice196698196699%_
                                               _%target196240196274%_
                                               _%tl196242196276%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g196207196253%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g196207196253%_))))))
                          (let () (declare (not safe)) (_%g196207196253%_)))))
                  (let () (declare (not safe)) (_%g196207196253%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self192582196163%_ _%ctx196165%_ _%stx196166%_ _%args196167%_)
        (let* ((_%self196169%_ _%self192582196163%_)
               (_%self196171%_ _%self196169%_))
          (if (let ((__method197339
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self196171%_ 'check-arguments))))
                (if __method197339
                    (let ()
                      (declare (not safe))
                      (__method197339
                       _%self196171%_
                       _%ctx196165%_
                       _%stx196166%_
                       _%args196167%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self196171%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature196181%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196171%_ '2 '#f '#f)))
                     (_%signature196183%_ _%signature196181%_)
                     (_%$e196193%_
                      (if _%signature196183%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature196183%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e196193%_
                    ((lambda (_%unchecked196196%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked196196%_))
                           (let ((__tmp197361
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked196196%_
                                                          '()))
                                              (map (lambda (_%g196197196199%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx196165%_
                                                        _%g196197196199%_)))
                                                   _%args196167%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp197361
                              _%stx196166%_
                              _%ctx196165%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx196165%_ _%stx196166%_))))
                     _%$e196193%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx196165%_ _%stx196166%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx196165%_ _%stx196166%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass196623 __method-table196624)
        (let ((__check-arguments196625
               (let ((__tmp197362
                      (lambda ()
                        (let ((__method196626
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196624
                                  'check-arguments
                                  '#f))))
                          (if __method196626
                              __method196626
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197362))))
          (lambda (_%self192582196163%_
                   _%ctx196165%_
                   _%stx196166%_
                   _%args196167%_)
            (let* ((_%self196169%_ _%self192582196163%_)
                   (_%self196171%_ _%self196169%_))
              (if ((force __check-arguments196625)
                   _%self196171%_
                   _%ctx196165%_
                   _%stx196166%_
                   _%args196167%_)
                  (let* ((_%signature196181%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self196171%_
                             '2
                             '#f
                             '#f)))
                         (_%signature196183%_ _%signature196181%_)
                         (_%$e196193%_
                          (if _%signature196183%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature196183%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e196193%_
                        ((lambda (_%unchecked196196%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked196196%_))
                               (let ((__tmp197363
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked196196%_
                                                              '()))
                                                  (map (lambda (_%g196197196199%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx196165%_
                                                            _%g196197196199%_)))
                                                       _%args196167%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp197363
                                  _%stx196166%_
                                  _%ctx196165%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx196165%_
                                  _%stx196166%_))))
                         _%$e196193%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx196165%_ _%stx196166%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx196165%_ _%stx196166%_))))))))
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
      (lambda (_%self192583195912%_ _%ctx195914%_ _%stx195915%_ _%args195916%_)
        (let* ((_%self195918%_ _%self192583195912%_)
               (_%self195920%_ _%self195918%_)
               (_%signature195929195931%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195920%_ '2 '#f '#f))))
          (if _%signature195929195931%_
              (let* ((_%signature195934%_ _%signature195929195931%_)
                     (_%argument-types195935195937%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature195934%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types195935195937%_
                    (let* ((_%argument-types195940%_
                            _%argument-types195935195937%_)
                           (_%argument-types195945%_
                            (let ((__tmp197364
                                   (lambda (_%t195943%_)
                                     (if _%t195943%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195915%_
                                            _%t195943%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp197364
                               _%argument-types195940%_))))
                      (let _%loop195947%_ ((_%rest-args195949%_ _%args195916%_)
                                           (_%rest-types195950%_
                                            _%argument-types195945%_)
                                           (_%result195951%_ '#t))
                        (let* ((_%rest-args195952195960%_ _%rest-args195949%_)
                               (_%else195954195968%_
                                (lambda () _%result195951%_))
                               (_%K195956196029%_
                                (lambda (_%rest-args195971%_ _%arg195972%_)
                                  (let* ((_%rest-types195973195984%_
                                          _%rest-types195950%_)
                                         (_%E195977195988%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types195973195984%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K195980196017%_
                                           (lambda (_%rest-types196014%_
                                                    _%type196015%_)
                                             (_%loop195947%_
                                              _%rest-args195971%_
                                              _%rest-types196014%_
                                              (if (gxc#check-expression-type!
                                                   _%stx195915%_
                                                   _%arg195972%_
                                                   _%type196015%_)
                                                  _%result195951%_
                                                  '#f))))
                                          (_%K195979196008%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx195915%_
                                                _%argument-types195945%_))))
                                          (_%K195978195998%_
                                           (lambda (_%tail-type195992%_)
                                             (if (let ((__tmp197365
                                                        (lambda (_%g195993195995%_)
                                                          (gxc#check-expression-type!
                                                           _%stx195915%_
                                                           _%g195993195995%_
                                                           _%tail-type195992%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp197365
                                                    _%rest-args195971%_))
                                                 _%result195951%_
                                                 '#f))))
                                      (let ((_%try-match195975196011%_
                                             (lambda ()
                                               (if (null? _%rest-types195973195984%_)
                                                   (_%K195979196008%_)
                                                   (let ((_%tail-type196001%_
                                                          _%rest-types195973195984%_))
                                                     (_%K195978195998%_
                                                      _%tail-type196001%_))))))
                                        (if (pair? _%rest-types195973195984%_)
                                            (let ((_%tl195982196022%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types195973195984%_)))
                                                  (_%hd195981196020%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types195973195984%_))))
                                              (let ((_%type196025%_
                                                     _%hd195981196020%_)
                                                    (_%rest-types196027%_
                                                     _%tl195982196022%_))
                                                (_%K195980196017%_
                                                 _%rest-types196027%_
                                                 _%type196025%_)))
                                            (_%try-match195975196011%_))))))))
                          (if (pair? _%rest-args195952195960%_)
                              (let ((_%hd195957196032%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args195952195960%_)))
                                    (_%tl195958196034%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args195952195960%_))))
                                (let* ((_%arg196037%_ _%hd195957196032%_)
                                       (_%rest-args196039%_
                                        _%tl195958196034%_))
                                  (_%K195956196029%_
                                   _%rest-args196039%_
                                   _%arg196037%_)))
                              (_%else195954195968%_)))))
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
      (lambda (_%self192584195721%_ _%ctx195723%_ _%stx195724%_ _%args195725%_)
        (let* ((_%self195727%_ _%self192584195721%_)
               (_%self195729%_ _%self195727%_)
               (_%g195739195749%_
                (lambda (_%g195740195746%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195740195746%_))))
               (_%g195738195787%_
                (lambda (_%g195740195752%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195740195752%_))
                      (let ((_%e195742195754%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195740195752%_))))
                        (let ((_%hd195743195757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195742195754%_)))
                              (_%tl195744195759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195742195754%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195744195759%_))
                              ((lambda (_%L195762%_)
                                 (let* ((_%klass195774%_
                                         (let ((__tmp197366
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195729%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195724%_
                                            __tmp197366)))
                                        (_%object195776%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195723%_
                                            _%L195762%_)))
                                        (_%instance?195781%_
                                         (let ((_%$e195778%_
                                                (gxc#expression-type?
                                                 _%object195776%_
                                                 _%klass195774%_)))
                                           (if _%$e195778%_
                                               _%$e195778%_
                                               (gxc#expression-type?
                                                _%L195762%_
                                                _%klass195774%_)))))
                                   (if _%instance?195781%_
                                       (let ((__tmp197367
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object195776%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L195762%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object195776%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197367
                                          _%stx195724%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx195723%_
                                          _%stx195724%_)))))
                               _%hd195743195757%_)
                              (_%g195739195749%_ _%g195740195752%_))))
                      (_%g195739195749%_ _%g195740195752%_)))))
          (_%g195738195787%_ _%args195725%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self192585195515%_ _%ctx195517%_ _%stx195518%_ _%args195519%_)
        (let* ((_%self195521%_ _%self192585195515%_)
               (_%self195523%_ _%self195521%_)
               (_%g195533195543%_
                (lambda (_%g195534195540%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195534195540%_))))
               (_%g195532195596%_
                (lambda (_%g195534195546%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195534195546%_))
                      (let ((_%e195536195548%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195534195546%_))))
                        (let ((_%hd195537195551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195536195548%_)))
                              (_%tl195538195553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195536195548%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195538195553%_))
                              ((lambda (_%L195556%_)
                                 (let* ((_%klass195568%_
                                         (let ((__tmp197368
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195523%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195518%_
                                            __tmp197368)))
                                        (_%object195570%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195517%_
                                            _%L195556%_)))
                                        (_%instance?195575%_
                                         (let ((_%$e195572%_
                                                (gxc#expression-type?
                                                 _%object195570%_
                                                 _%klass195568%_)))
                                           (if _%$e195572%_
                                               _%$e195572%_
                                               (gxc#expression-type?
                                                _%L195556%_
                                                _%klass195568%_))))
                                        (_%klass195578%_ _%klass195568%_))
                                   (if _%instance?195575%_
                                       (let ((__tmp197369
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object195570%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L195556%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object195570%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197369
                                          _%stx195518%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195578%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp197370
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass195578%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object195570%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197370
                                              _%stx195518%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195578%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197371
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass195578%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object195570%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197371
                                                  _%stx195518%_))
                                               (let ((__tmp197372
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self195523%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object195570%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197372
                                                  _%stx195518%_)))))))
                               _%hd195537195551%_)
                              (_%g195533195543%_ _%g195534195546%_))))
                      (_%g195533195543%_ _%g195534195546%_)))))
          (_%g195532195596%_ _%args195519%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx195178%_)
        (let* ((_%__stx196767196768%_ _%stx195178%_)
               (_%g195183195224%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196767196768%_)))))
          (let ((_%__kont196769196770%_ (lambda () '#t))
                (_%__kont196771196772%_ (lambda () '#t))
                (_%__kont196773196774%_
                 (lambda (_%L195292%_ _%L195293%_)
                   (let ((_%rator-type195314195316%_
                          (let ((__tmp197373
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L195293%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp197373))))
                     (if _%rator-type195314195316%_
                         (let* ((_%rator-type195319%_
                                 _%rator-type195314195316%_)
                                (_%rator-signature195320195322%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type195319%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type195319%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature195320195322%_
                               (let* ((_%rator-signature195325%_
                                       _%rator-signature195320195322%_)
                                      (_%rator-effect195326195328%_
                                       (if _%rator-signature195325%_
                                           (##direct-structure-ref
                                            _%rator-signature195325%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect195326195328%_
                                     (let ((_%rator-effect195331%_
                                            _%rator-effect195326195328%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect195331%_)
                                               (equal? '(alloc)
                                                       _%rator-effect195331%_))
                                           (let ((__tmp197374
                                                  (let ((__tmp197375
                                                         (lambda (_%g195336195339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g195337195341%_)
                   (cons _%g195336195339%_ _%g195337195341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp197375
                                                     '()
                                                     _%L195292%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp197374))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont196777196778%_ (lambda () '#f)))
            (let ((_%__match196856196857%_
                   (lambda (_%e195199195236%_
                            _%hd195200195239%_
                            _%tl195201195241%_
                            _%e195202195244%_
                            _%hd195203195247%_
                            _%tl195204195249%_
                            _%e195205195252%_
                            _%hd195206195255%_
                            _%tl195207195257%_
                            _%e195208195260%_
                            _%hd195209195263%_
                            _%tl195210195265%_
                            _%__splice196775196776%_
                            _%target195211195268%_
                            _%tl195213195270%_)
                     (letrec ((_%loop195214195273%_
                               (lambda (_%hd195212195276%_
                                        _%rand195218195278%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd195212195276%_))
                                     (let ((_%e195215195281%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd195212195276%_))))
                                       (let ((_%lp-tl195217195286%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e195215195281%_)))
                                             (_%lp-hd195216195284%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e195215195281%_))))
                                         (_%loop195214195273%_
                                          _%lp-tl195217195286%_
                                          (cons _%lp-hd195216195284%_
                                                _%rand195218195278%_))))
                                     (let ((_%rand195219195289%_
                                            (reverse _%rand195218195278%_)))
                                       (_%__kont196773196774%_
                                        _%rand195219195289%_
                                        _%hd195209195263%_))))))
                       (_%loop195214195273%_ _%target195211195268%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196767196768%_))
                  (let ((_%e195185195372%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196767196768%_))))
                    (let ((_%tl195187195377%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195185195372%_)))
                          (_%hd195186195375%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195185195372%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd195186195375%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd195186195375%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195187195377%_))
                                  (let ((_%e195188195380%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195187195377%_))))
                                    (let ((_%tl195190195385%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195188195380%_)))
                                          (_%hd195189195383%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195188195380%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl195190195385%_))
                                          (_%__kont196769196770%_)
                                          (_%__kont196777196778%_))))
                                  (_%__kont196777196778%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd195186195375%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195187195377%_))
                                      (let ((_%e195194195357%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195187195377%_))))
                                        (let ((_%tl195196195362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195194195357%_)))
                                              (_%hd195195195360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195194195357%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195196195362%_))
                                              (_%__kont196771196772%_)
                                              (_%__kont196777196778%_))))
                                      (_%__kont196777196778%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd195186195375%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195187195377%_))
                                          (let ((_%e195202195244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl195187195377%_))))
                                            (let ((_%tl195204195249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195202195244%_)))
                                                  (_%hd195203195247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195202195244%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd195203195247%_))
                                                  (let ((_%e195205195252%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd195203195247%_))))
                                                    (let ((_%tl195207195257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195205195252%_)))
                                                          (_%hd195206195255%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195205195252%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd195206195255%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd195206195255%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195207195257%_))
                          (let ((_%e195208195260%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl195207195257%_))))
                            (let ((_%tl195210195265%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195208195260%_)))
                                  (_%hd195209195263%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195208195260%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl195210195265%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl195204195249%_))
                                      (let ((_%__splice196775196776%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl195204195249%_
                                                '0))))
                                        (let ((_%tl195213195270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196775196776%_
                                                  '1)))
                                              (_%target195211195268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196775196776%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195213195270%_))
                                              (_%__match196856196857%_
                                               _%e195185195372%_
                                               _%hd195186195375%_
                                               _%tl195187195377%_
                                               _%e195202195244%_
                                               _%hd195203195247%_
                                               _%tl195204195249%_
                                               _%e195205195252%_
                                               _%hd195206195255%_
                                               _%tl195207195257%_
                                               _%e195208195260%_
                                               _%hd195209195263%_
                                               _%tl195210195265%_
                                               _%__splice196775196776%_
                                               _%target195211195268%_
                                               _%tl195213195270%_)
                                              (_%__kont196777196778%_))))
                                      (_%__kont196777196778%_))
                                  (_%__kont196777196778%_))))
                          (_%__kont196777196778%_))
                      (_%__kont196777196778%_))
                  (_%__kont196777196778%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont196777196778%_))))
                                          (_%__kont196777196778%_))
                                      (_%__kont196777196778%_))))
                          (_%__kont196777196778%_))))
                  (_%__kont196777196778%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx195173%_ _%klass195174%_)
        (let ((_%expr-type195176%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx195173%_))))
          (if _%expr-type195176%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type195176%_ _%klass195174%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx195151%_ _%expr195152%_ _%type195153%_)
        (if (not _%type195153%_)
            '#f
            (let ((_%$e195156%_
                   (eq? (##structure-ref _%type195153%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e195156%_
                  _%$e195156%_
                  (let ((_%expr-type195160%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr195152%_))))
                    (if (not _%expr-type195160%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type195160%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e195164%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type195160%_
                                      'gxc#!abort::t))))
                              (if _%$e195164%_
                                  _%$e195164%_
                                  (let ((_%$e195167%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type195160%_
                                            _%type195153%_))))
                                    (if _%$e195167%_
                                        _%$e195167%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type195153%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type195153%_
                                                   _%expr-type195160%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx195151%_
                                                   _%expr195152%_
                                                   _%expr-type195160%_
                                                   _%type195153%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self192586194963%_ _%ctx194965%_ _%stx194966%_ _%args194967%_)
        (let* ((_%self194969%_ _%self192586194963%_)
               (_%self194971%_ _%self194969%_)
               (_%klass194981%_
                (let ((__tmp197376
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self194971%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx194966%_ __tmp197376)))
               (_%fields194983%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass194981%_
                           '5
                           '#f
                           '#f))))
               (_%args194989%_
                (map (lambda (_%g194984194986%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx194965%_ _%g194984194986%_)))
                     _%args194967%_))
               (_%inline-make-object194991%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self194971%_
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
                           _%self194971%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields194983%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass194994%_ _%klass194981%_)
               (_%$e195008%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass194994%_ '6 '#f '#f))))
          (if _%$e195008%_
              ((lambda (_%ctor195011%_)
                 (let ((_%$obj195013%_
                        (let ((__tmp197377
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp197377)))
                       (_%ctor-impl195014%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass194994%_
                           _%ctor195011%_))))
                   (let ((__tmp197378
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj195013%_ '())
                                                  (cons _%inline-make-object194991%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl195014%_
                                                            (let ((__tmp197379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl195014%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj195013%_ '()))
                                             _%args194989%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp197379
                       _%stx194966%_
                       _%ctx194965%_))
                    (let ((_%$ctor195016%_
                           (let ((__tmp197380
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp197380))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor195016%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194971%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj195013%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor195011%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor195016%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor195016%_ '()))
                              (cons (cons '%#ref (cons _%$obj195013%_ '()))
                                    _%args194989%_)))
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
                             _%self194971%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor195011%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj195013%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp197378 _%stx194966%_))))
               _%$e195008%_)
              (let ((_%$e195018%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass194994%_
                        '10
                        '#f
                        '#f))))
                (if _%$e195018%_
                    ((lambda (_%metaclass195021%_)
                       (let* ((_%$obj195023%_
                               (let ((__tmp197381
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197381)))
                              (_%metakons195025%_
                               (let ((__tmp197382
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx194966%_
                                         _%metaclass195021%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp197382
                                  'instance-init!)))
                              (__tmp197383
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj195023%_
                                                             '())
                                                       (cons _%inline-make-object194991%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons195025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp197384
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons195025%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self194971%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj195023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args194989%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp197384
                            _%stx194966%_
                            _%ctx194965%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self194971%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj195023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args194989%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj195023%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp197383 _%stx194966%_)))
                     _%$e195018%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass194994%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp197385
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args194989%_))))
                              (declare (not safe))
                              (##fx= __tmp197385 _%fields194983%_))
                            (let ((__tmp197386
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self194971%_
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
                                              _%self194971%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args194989%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp197386
                               _%stx194966%_))
                            (let ((__tmp197388
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self194971%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp197387
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass194994%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx194966%_
                               __tmp197388
                               __tmp197387)))
                        (let ((_%$obj195030%_
                               (let ((__tmp197389
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197389))))
                          (let _%lp195032%_ ((_%rest195034%_ _%args194989%_)
                                             (_%initializers195035%_ '()))
                            (let* ((_%__stx196859196860%_ _%rest195034%_)
                                   (_%g195039195060%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx196859196860%_)))))
                              (let ((_%__kont196861196862%_
                                     (lambda (_%L195114%_
                                              _%L195115%_
                                              _%L195116%_)
                                       (let* ((_%slot195143%_
                                               (let ((__tmp197390
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L195116%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp197390)))
                                              (_%off195145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass194994%_
                                                  _%slot195143%_))))
                                         (if _%off195145%_
                                             (_%lp195032%_
                                              _%L195114%_
                                              (cons (cons _%off195145%_
                                                          _%L195115%_)
                                                    _%initializers195035%_))
                                             (let ((__tmp197391
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194971%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx194966%_
                                                __tmp197391
                                                _%slot195143%_))))))
                                    (_%__kont196863196864%_
                                     (lambda ()
                                       (let ((__tmp197392
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj195030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object194991%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp197395
                                     (cons (cons '%#ref
                                                 (cons _%$obj195030%_ '()))
                                           '()))
                                    (__tmp197393
                                     (let ((__tmp197394
                                            (lambda (_%i195074%_ _%r195075%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self194971%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i195074%_) '()))
                              (cons (cons '%#ref (cons _%$obj195030%_ '()))
                                    (cons (cdr _%i195074%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r195075%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp197394
                                        '()
                                        _%initializers195035%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp197395 __tmp197393)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197392
                                          _%stx194966%_))))
                                    (_%__kont196865196866%_
                                     (lambda ()
                                       (let ((__tmp197396
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj195030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object194991%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args194989%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj195030%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197396
                                          _%stx194966%_)))))
                                (let* ((_%g195037195077%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx196859196860%_))
                                              (_%__kont196863196864%_)
                                              (_%__kont196865196866%_))))
                                       (_%__match196896196897%_
                                        (lambda (_%e195044195082%_
                                                 _%hd195045195085%_
                                                 _%tl195046195087%_
                                                 _%e195047195090%_
                                                 _%hd195048195093%_
                                                 _%tl195049195095%_
                                                 _%e195050195098%_
                                                 _%hd195051195101%_
                                                 _%tl195052195103%_
                                                 _%e195053195106%_
                                                 _%hd195054195109%_
                                                 _%tl195055195111%_)
                                          (let ((_%L195114%_
                                                 _%tl195055195111%_)
                                                (_%L195115%_
                                                 _%hd195054195109%_)
                                                (_%L195116%_
                                                 _%hd195051195101%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L195116%_))
                                                (_%__kont196861196862%_
                                                 _%L195114%_
                                                 _%L195115%_
                                                 _%L195116%_)
                                                (_%__kont196865196866%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx196859196860%_))
                                      (let ((_%e195044195082%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx196859196860%_))))
                                        (let ((_%tl195046195087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195044195082%_)))
                                              (_%hd195045195085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195044195082%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd195045195085%_))
                                              (let ((_%e195047195090%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd195045195085%_))))
                                                (let ((_%tl195049195095%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195047195090%_)))
                                                      (_%hd195048195093%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195047195090%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd195048195093%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd195048195093%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl195049195095%_))
                      (let ((_%e195050195098%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl195049195095%_))))
                        (let ((_%tl195052195103%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195050195098%_)))
                              (_%hd195051195101%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195050195098%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195052195103%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195046195087%_))
                                  (let ((_%e195053195106%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195046195087%_))))
                                    (let ((_%tl195055195111%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195053195106%_)))
                                          (_%hd195054195109%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195053195106%_))))
                                      (_%__match196896196897%_
                                       _%e195044195082%_
                                       _%hd195045195085%_
                                       _%tl195046195087%_
                                       _%e195047195090%_
                                       _%hd195048195093%_
                                       _%tl195049195095%_
                                       _%e195050195098%_
                                       _%hd195051195101%_
                                       _%tl195052195103%_
                                       _%e195053195106%_
                                       _%hd195054195109%_
                                       _%tl195055195111%_)))
                                  (_%__kont196865196866%_))
                              (_%__kont196865196866%_))))
                      (_%__kont196865196866%_))
                  (_%__kont196865196866%_))
              (_%__kont196865196866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont196865196866%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g195037195077%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self192587194744%_ _%ctx194746%_ _%stx194747%_ _%args194748%_)
        (let* ((_%self194750%_ _%self192587194744%_)
               (_%self194752%_ _%self194750%_)
               (_%arguments-ok?194762%_
                (let ((__method197340
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self194752%_ 'check-arguments))))
                  (if __method197340
                      (let ()
                        (declare (not safe))
                        (__method197340
                         _%self194752%_
                         _%ctx194746%_
                         _%stx194747%_
                         _%args194748%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self194752%_
                                 'check-arguments))
                        '#!void))))
               (_%g194764194774%_
                (lambda (_%g194765194771%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194765194771%_))))
               (_%g194763194838%_
                (lambda (_%g194765194777%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194765194777%_))
                      (let ((_%e194767194779%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194765194777%_))))
                        (let ((_%hd194768194782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194767194779%_)))
                              (_%tl194769194784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194767194779%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194769194784%_))
                              ((lambda (_%L194787%_)
                                 (let* ((_%klass194800%_
                                         (let ((__tmp197397
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194752%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194747%_
                                            __tmp197397)))
                                        (_%field194802%_
                                         (let ((__tmp197398
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194752%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass194800%_
                                            __tmp197398)))
                                        (_%object194804%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx194746%_
                                            _%L194787%_)))
                                        (_%klass194807%_ _%klass194800%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass194807%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp197399
                                              (cons (if (or _%arguments-ok?194762%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194752%_
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
                                 _%self194752%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field194802%_ '()))
                        (cons _%object194804%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197399
                                          _%stx194747%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass194807%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp197400
                                                  (cons (if (or _%arguments-ok?194762%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194752%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194752%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field194802%_ '()))
                            (cons _%object194804%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197400
                                              _%stx194747%_))
                                           (let ((_%$e194826%_
                                                  (let ((__tmp197401
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self194752%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass194807%_
                                                     __tmp197401))))
                                             (if _%$e194826%_
                                                 ((lambda (_%klass194829%_)
                                                    (let ((__tmp197402
                                                           (cons (if (or _%arguments-ok?194762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194752%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self194752%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field194802%_ '()))
                                     (cons _%object194804%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp197402 _%stx194747%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e194826%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self194752%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp197403
                                                            (let ((_%$obj194835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp197404
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp197404))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj194835%_ '())
                                              (cons _%object194804%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass194807%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj194835%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194752%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194802%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj194835%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?194762%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj194835%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self194752%_
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
                                                             _%self194752%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj194835%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self194752%_
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
               (gxc#xform-wrap-source __tmp197403 _%stx194747%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp197405
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object194804%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194752%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp197405 _%stx194747%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd194768194782%_)
                              (_%g194764194774%_ _%g194765194777%_))))
                      (_%g194764194774%_ _%g194765194777%_)))))
          (_%g194763194838%_ _%args194748%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass196627 __method-table196628)
        (let ((__check-arguments196629
               (let ((__tmp197406
                      (lambda ()
                        (let ((__method196630
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196628
                                  'check-arguments
                                  '#f))))
                          (if __method196630
                              __method196630
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197406)))
              (__slot196631
               (let ((__slot196632
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass196627 'slot))))
                 (if __slot196632
                     __slot196632
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self192587194744%_
                   _%ctx194746%_
                   _%stx194747%_
                   _%args194748%_)
            (let* ((_%self194750%_ _%self192587194744%_)
                   (_%self194752%_ _%self194750%_)
                   (_%arguments-ok?194762%_
                    ((force __check-arguments196629)
                     _%self194752%_
                     _%ctx194746%_
                     _%stx194747%_
                     _%args194748%_))
                   (_%g194764194774%_
                    (lambda (_%g194765194771%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g194765194771%_))))
                   (_%g194763194838%_
                    (lambda (_%g194765194777%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g194765194777%_))
                          (let ((_%e194767194779%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g194765194777%_))))
                            (let ((_%hd194768194782%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194767194779%_)))
                                  (_%tl194769194784%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194767194779%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl194769194784%_))
                                  ((lambda (_%L194787%_)
                                     (let* ((_%klass194800%_
                                             (let ((__tmp197407
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194752%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx194747%_
                                                __tmp197407)))
                                            (_%field194802%_
                                             (let ((__tmp197408
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194752%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass194800%_
                                                __tmp197408)))
                                            (_%object194804%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx194746%_
                                                _%L194787%_)))
                                            (_%klass194807%_ _%klass194800%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass194807%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp197409
                                                  (cons (if (or _%arguments-ok?194762%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194752%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194752%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field194802%_ '()))
                            (cons _%object194804%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197409
                                              _%stx194747%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass194807%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197410
                                                      (cons (if (or _%arguments-ok?194762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self194752%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194752%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field194802%_ '()))
                                (cons _%object194804%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197410
                                                  _%stx194747%_))
                                               (let ((_%$e194826%_
                                                      (let ((__tmp197411
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self194752%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass194807%_ __tmp197411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e194826%_
                                                     ((lambda (_%klass194829%_)
                                                        (let ((__tmp197412
                                                               (cons (if (or _%arguments-ok?194762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194752%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self194752%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field194802%_ '()))
                                         (cons _%object194804%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp197412 _%stx194747%_)))
              _%$e194826%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self194752%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp197413
                                                                (let ((_%$obj194835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp197414
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197414))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj194835%_ '())
                                                  (cons _%object194804%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass194807%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj194835%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194752%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field194802%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj194835%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?194762%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj194835%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194752%_
                               __slot196631
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
                        (##unchecked-structure-ref _%self194752%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj194835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194752%_
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
                   (gxc#xform-wrap-source __tmp197413 _%stx194747%_))
                 (let ((__tmp197415
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object194804%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194752%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp197415 _%stx194747%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd194768194782%_)
                                  (_%g194764194774%_ _%g194765194777%_))))
                          (_%g194764194774%_ _%g194765194777%_)))))
              (_%g194763194838%_ _%args194748%_))))))
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
      (lambda (_%self192588194506%_ _%ctx194508%_ _%stx194509%_ _%args194510%_)
        (let* ((_%self194512%_ _%self192588194506%_)
               (_%self194514%_ _%self194512%_)
               (_%arguments-ok?194524%_
                (let ((__method197341
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self194514%_ 'check-arguments))))
                  (if __method197341
                      (let ()
                        (declare (not safe))
                        (__method197341
                         _%self194514%_
                         _%ctx194508%_
                         _%stx194509%_
                         _%args194510%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self194514%_
                                 'check-arguments))
                        '#!void))))
               (_%g194526194540%_
                (lambda (_%g194527194537%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194527194537%_))))
               (_%g194525194619%_
                (lambda (_%g194527194543%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194527194543%_))
                      (let ((_%e194530194545%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194527194543%_))))
                        (let ((_%hd194531194548%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194530194545%_)))
                              (_%tl194532194550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194530194545%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194532194550%_))
                              (let ((_%e194533194553%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194532194550%_))))
                                (let ((_%hd194534194556%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194533194553%_)))
                                      (_%tl194535194558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194533194553%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl194535194558%_))
                                      ((lambda (_%L194561%_ _%L194562%_)
                                         (let* ((_%klass194578%_
                                                 (let ((__tmp197416
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194514%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx194509%_
                                                    __tmp197416)))
                                                (_%field194580%_
                                                 (let ((__tmp197417
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194514%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass194578%_
                                                    __tmp197417)))
                                                (_%object194582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx194508%_
                                                    _%L194562%_)))
                                                (_%value194584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx194508%_
                                                    _%L194561%_)))
                                                (_%klass194587%_
                                                 _%klass194578%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass194587%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197418
                                                      (cons (if (or _%arguments-ok?194524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self194514%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194514%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field194580%_ '()))
                                (cons _%object194582%_
                                      (cons _%value194584%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197418
                                                  _%stx194509%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass194587%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp197419
                                                          (cons (if (or _%arguments-ok?194524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self194514%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194514%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194580%_ '()))
                                    (cons _%object194582%_
                                          (cons _%value194584%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp197419
                                                      _%stx194509%_))
                                                   (let ((_%$e194607%_
                                                          (let ((__tmp197420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194514%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass194587%_
                     __tmp197420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e194607%_
                                                         ((lambda (_%klass194610%_)
                                                            (let ((__tmp197421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?194524%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194514%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self194514%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field194580%_ '()))
                                             (cons _%object194582%_
                                                   (cons _%value194584%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197421 _%stx194509%_)))
                  _%$e194607%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self194514%_ '4 '#f '#f))
                     (let ((__tmp197422
                            (let ((_%$obj194616%_
                                   (let ((__tmp197423
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp197423))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj194616%_ '())
                                                      (cons _%object194582%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass194587%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj194616%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self194514%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field194580%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj194616%_
                                                              '()))
                                                  (cons _%value194584%_
                                                        '())))))
                          (cons (if _%arguments-ok?194524%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj194616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self194514%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value194584%_ '())))))
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
                             _%self194514%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj194616%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194514%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value194584%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp197422 _%stx194509%_))
                     (let ((__tmp197424
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object194582%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self194514%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value194584%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp197424
                        _%stx194509%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd194534194556%_
                                       _%hd194531194548%_)
                                      (_%g194526194540%_ _%g194527194543%_))))
                              (_%g194526194540%_ _%g194527194543%_))))
                      (_%g194526194540%_ _%g194527194543%_)))))
          (_%g194525194619%_ _%args194510%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass196633 __method-table196634)
        (let ((__check-arguments196635
               (let ((__tmp197425
                      (lambda ()
                        (let ((__method196636
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196634
                                  'check-arguments
                                  '#f))))
                          (if __method196636
                              __method196636
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197425))))
          (lambda (_%self192588194506%_
                   _%ctx194508%_
                   _%stx194509%_
                   _%args194510%_)
            (let* ((_%self194512%_ _%self192588194506%_)
                   (_%self194514%_ _%self194512%_)
                   (_%arguments-ok?194524%_
                    ((force __check-arguments196635)
                     _%self194514%_
                     _%ctx194508%_
                     _%stx194509%_
                     _%args194510%_))
                   (_%g194526194540%_
                    (lambda (_%g194527194537%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g194527194537%_))))
                   (_%g194525194619%_
                    (lambda (_%g194527194543%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g194527194543%_))
                          (let ((_%e194530194545%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g194527194543%_))))
                            (let ((_%hd194531194548%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194530194545%_)))
                                  (_%tl194532194550%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194530194545%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl194532194550%_))
                                  (let ((_%e194533194553%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl194532194550%_))))
                                    (let ((_%hd194534194556%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194533194553%_)))
                                          (_%tl194535194558%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194533194553%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl194535194558%_))
                                          ((lambda (_%L194561%_ _%L194562%_)
                                             (let* ((_%klass194578%_
                                                     (let ((__tmp197426
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194514%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx194509%_
                                                        __tmp197426)))
                                                    (_%field194580%_
                                                     (let ((__tmp197427
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194514%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass194578%_
                                                        __tmp197427)))
                                                    (_%object194582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194508%_
                                                        _%L194562%_)))
                                                    (_%value194584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194508%_
                                                        _%L194561%_)))
                                                    (_%klass194587%_
                                                     _%klass194578%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass194587%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp197428
                                                          (cons (if (or _%arguments-ok?194524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self194514%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194514%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194580%_ '()))
                                    (cons _%object194582%_
                                          (cons _%value194584%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp197428
                                                      _%stx194509%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass194587%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp197429
                                                              (cons (if (or _%arguments-ok?194524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self194514%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194514%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field194580%_ '()))
                                        (cons _%object194582%_
                                              (cons _%value194584%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp197429 _%stx194509%_))
               (let ((_%$e194607%_
                      (let ((__tmp197430
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194514%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass194587%_
                         __tmp197430))))
                 (if _%$e194607%_
                     ((lambda (_%klass194610%_)
                        (let ((__tmp197431
                               (cons (if (or _%arguments-ok?194524%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self194514%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self194514%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field194580%_
                                                             '()))
                                                 (cons _%object194582%_
                                                       (cons _%value194584%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp197431 _%stx194509%_)))
                      _%$e194607%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194514%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp197432
                                (let ((_%$obj194616%_
                                       (let ((__tmp197433
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp197433))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj194616%_
                                                                '())
                                                          (cons _%object194582%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass194587%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj194616%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self194514%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field194580%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj194616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value194584%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?194524%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj194616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self194514%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value194584%_ '())))))
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
                                 _%self194514%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj194616%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194514%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value194584%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp197432 _%stx194509%_))
                         (let ((__tmp197434
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object194582%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194514%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value194584%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp197434
                            _%stx194509%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd194534194556%_
                                           _%hd194531194548%_)
                                          (_%g194526194540%_
                                           _%g194527194543%_))))
                                  (_%g194526194540%_ _%g194527194543%_))))
                          (_%g194526194540%_ _%g194527194543%_)))))
              (_%g194525194619%_ _%args194510%_))))))
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
      (lambda (_%self192589194319%_ _%ctx194321%_ _%stx194322%_ _%args194323%_)
        (let* ((_%self194325%_ _%self192589194319%_)
               (_%self194327%_ _%self194325%_)
               (_%self194336194346%_ _%self194327%_)
               (_%E194338194350%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self194336194346%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K194339194360%_
                (lambda (_%inline194353%_ _%dispatch194354%_ _%arity194355%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self194327%_
                         _%args194323%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx194322%_
                         _%arity194355%_)))
                  (if _%inline194353%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp197435 (_%inline194353%_ _%stx194322%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp197435
                           _%stx194322%_
                           _%ctx194321%_)))
                      (if (and _%dispatch194354%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch194354%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch194354%_))
                            (let ((__tmp197436
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch194354%_
                                                           '()))
                                               _%args194323%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp197436
                               _%stx194322%_
                               _%ctx194321%_)))
                          (gxc#!procedure::optimize-call
                           _%self194327%_
                           _%ctx194321%_
                           _%stx194322%_
                           _%args194323%_)))))
               (_%e194340194363%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194336194346%_ '1 '#f '#f)))
               (_%e194341194366%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194336194346%_ '2 '#f '#f)))
               (_%e194342194369%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194336194346%_ '3 '#f '#f)))
               (_%arity194372%_ _%e194342194369%_)
               (_%e194343194374%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194336194346%_ '4 '#f '#f)))
               (_%dispatch194377%_ _%e194343194374%_)
               (_%e194344194379%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194336194346%_ '5 '#f '#f)))
               (_%inline194382%_ _%e194344194379%_))
          (_%K194339194360%_
           _%inline194382%_
           _%dispatch194377%_
           _%arity194372%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self192590194169%_ _%ctx194171%_ _%stx194172%_ _%args194173%_)
        (let* ((_%self194175%_ _%self192590194169%_)
               (_%self194177%_ _%self194175%_)
               (_%$e194191%_
                (let ((__tmp197438
                       (lambda (_%g194186194188%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g194186194188%_
                            _%args194173%_))))
                      (__tmp197437
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self194177%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp197438 __tmp197437))))
          (if _%$e194191%_
              ((lambda (_%clause194194%_)
                 (let ((__method197342
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause194194%_ 'optimize-call))))
                   (if __method197342
                       (let ()
                         (declare (not safe))
                         (__method197342
                          _%clause194194%_
                          _%ctx194171%_
                          _%stx194172%_
                          _%args194173%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause194194%_
                                  'optimize-call))
                         '#!void))))
               _%$e194191%_)
              (let ((__tmp197439
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self194177%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx194172%_
                 __tmp197439))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self192591193907%_ _%ctx193909%_ _%stx193910%_ _%args193911%_)
        (let* ((_%self193913%_ _%self192591193907%_)
               (_%self193915%_ _%self193913%_)
               (_%self193924193933%_ _%self193915%_)
               (_%E193926193937%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self193924193933%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K193927194028%_
                (lambda (_%dispatch193940%_ _%table193941%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch193940%_))
                      (let* ((_%g193942193952%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch193940%_)))
                             (_%else193944193960%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch193940%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx193909%_
                                   _%stx193910%_))))
                             (_%K193946194009%_
                              (lambda (_%main193963%_ _%keys193964%_)
                                (let ((_g197440_
                                       (gxc#!kw-lambda-split-args
                                        _%stx193910%_
                                        _%args193911%_)))
                                  (begin
                                    (let ((_g197441_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g197440_)
                                                 (##vector-length _g197440_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g197441_ 2)))
                                          (error "Context expects 2 values"
                                                 _g197441_)))
                                    (let ((_%pargs193966%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g197440_ 0)))
                                          (_%kwargs193967%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g197440_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main193963%_))
                                        (if _%table193941%_
                                            (let ((_%xargs193975%_
                                                   (map (lambda (_%key193969%_)
                                                          (let ((_%$e193971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key193969%_ _%kwargs193967%_))))
                    (if _%$e193971%_ _%$e193971%_ '(%#ref absent-value))))
                _%keys193964%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw193977%_)
                                                 (if (memq (car _%kw193977%_)
                                                           _%keys193964%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx193910%_
                                                        _%keys193964%_
                                                        _%kw193977%_))))
                                               _%kwargs193967%_)
                                              (let ((__tmp197442
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main193963%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs193966%_
                                  _%xargs193975%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp197442
                                                 _%stx193910%_
                                                 _%ctx193909%_)))
                                            (let* ((_%kwt193979%_
                                                    (let ((__tmp197443
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp197443)))
                                                   (_%kwvars193983%_
                                                    (map (lambda (_%_193981%_)
                                                           (let ((__tmp197444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp197444)))
                 _%kwargs193967%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind193988%_
                                                    (map (lambda (_%kw193985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar193986%_)
                   (cons (cons _%kwvar193986%_ '())
                         (cons (cdr _%kw193985%_) '())))
                 _%kwargs193967%_
                 _%kwvars193983%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset193993%_
                                                    (map (lambda (_%kw193990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar193991%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt193979%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw193990%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar193991%_
                                                             '()))
                                                 '()))))))
                 _%kwargs193967%_
                 _%kwvars193983%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs193998%_
                                                    (map (lambda (_%kw193995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar193996%_)
                   (cons (car _%kw193995%_)
                         (cons '%#ref (cons _%kwvar193996%_ '()))))
                 _%kwargs193967%_
                 _%kwvars193983%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs194006%_
                                                    (map (lambda (_%key194000%_)
                                                           (let ((_%$e194002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key194000%_ _%xkwargs193998%_))))
                     (if _%$e194002%_ _%$e194002%_ '(%#ref absent-value))))
                 _%keys193964%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp197445
                                                    (cons '%#let-values
                                                          (cons _%kwbind193988%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt193979%_ '())
                                                      (cons (let ((__tmp197446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs193967%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197446 _%stx193910%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp197447
                                                             (cons (let ((__tmp197448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main193963%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt193979%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs193966%_
                                                       _%xargs194006%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp197448 _%stx193910%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp197447 _%kwset193993%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp197445
                                               _%stx193910%_
                                               _%ctx193909%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g193942193952%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e193947194012%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193942193952%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e193948194015%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193942193952%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e193949194018%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193942193952%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys194021%_ _%e193949194018%_)
                                   (_%e193950194023%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193942193952%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main194026%_ _%e193950194023%_))
                              (_%K193946194009%_
                               _%main194026%_
                               _%keys194021%_))
                            (_%else193944193960%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx193909%_ _%stx193910%_)))))
               (_%e193928194031%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193924193933%_ '1 '#f '#f)))
               (_%e193929194034%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193924193933%_ '2 '#f '#f)))
               (_%e193930194037%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193924193933%_ '3 '#f '#f)))
               (_%table194040%_ _%e193930194037%_)
               (_%e193931194042%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193924193933%_ '4 '#f '#f)))
               (_%dispatch194045%_ _%e193931194042%_))
          (_%K193927194028%_ _%dispatch194045%_ _%table194040%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx193520%_ _%args193521%_)
        (let _%lp193523%_ ((_%rest193525%_ _%args193521%_)
                           (_%pargs193526%_ '())
                           (_%kwargs193527%_ '()))
          (let* ((_%__stx196901196902%_ _%rest193525%_)
                 (_%g193533193585%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx196901196902%_)))))
            (let ((_%__kont196903196904%_
                   (lambda (_%L193764%_ _%L193765%_)
                     (_%lp193523%_
                      _%L193764%_
                      (cons _%L193765%_ _%pargs193526%_)
                      _%kwargs193527%_)))
                  (_%__kont196905196906%_
                   (lambda (_%L193710%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L193710%_ _%pargs193526%_))
                             (reverse _%kwargs193527%_))))
                  (_%__kont196907196908%_
                   (lambda (_%L193657%_ _%L193658%_ _%L193659%_)
                     (let ((_%kw193676%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L193659%_))))
                       (if (assq _%kw193676%_ _%kwargs193527%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx193520%_
                              _%kw193676%_))
                           (_%lp193523%_
                            _%L193657%_
                            _%pargs193526%_
                            (cons (cons _%kw193676%_ _%L193658%_)
                                  _%kwargs193527%_))))))
                  (_%__kont196909196910%_
                   (lambda (_%L193605%_ _%L193606%_)
                     (_%lp193523%_
                      _%L193605%_
                      (cons _%L193606%_ _%pargs193526%_)
                      _%kwargs193527%_)))
                  (_%__kont196911196912%_
                   (lambda ()
                     (values (reverse _%pargs193526%_)
                             (reverse _%kwargs193527%_)))))
              (let ((_%__match197008197009%_
                     (lambda (_%e193564193625%_
                              _%hd193565193628%_
                              _%tl193566193630%_
                              _%e193567193633%_
                              _%hd193568193636%_
                              _%tl193569193638%_
                              _%e193570193641%_
                              _%hd193571193644%_
                              _%tl193572193646%_
                              _%e193573193649%_
                              _%hd193574193652%_
                              _%tl193575193654%_)
                       (let ((_%L193657%_ _%tl193575193654%_)
                             (_%L193658%_ _%hd193574193652%_)
                             (_%L193659%_ _%hd193571193644%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L193659%_))
                             (_%__kont196907196908%_
                              _%L193657%_
                              _%L193658%_
                              _%L193659%_)
                             (_%__kont196909196910%_
                              _%tl193566193630%_
                              _%hd193565193628%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx196901196902%_))
                    (let ((_%e193537193729%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx196901196902%_))))
                      (let ((_%tl193539193734%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193537193729%_)))
                            (_%hd193538193732%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193537193729%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd193538193732%_))
                            (let ((_%e193540193737%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd193538193732%_))))
                              (let ((_%tl193542193742%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193540193737%_)))
                                    (_%hd193541193740%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193540193737%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd193541193740%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd193541193740%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193542193742%_))
                                            (let ((_%e193543193745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193542193742%_))))
                                              (let ((_%tl193545193750%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193543193745%_)))
                                                    (_%hd193544193748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193543193745%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd193544193748%_))
                                                    (let ((_%e193546193753%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd193544193748%_))))
                                                      (if (equal? _%e193546193753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193545193750%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193539193734%_))
                          (let ((_%e193547193756%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193539193734%_))))
                            (let ((_%tl193549193761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193547193756%_)))
                                  (_%hd193548193759%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193547193756%_))))
                              (_%__kont196903196904%_
                               _%tl193549193761%_
                               _%hd193548193759%_)))
                          (_%__kont196909196910%_
                           _%tl193539193734%_
                           _%hd193538193732%_))
                      (_%__kont196909196910%_
                       _%tl193539193734%_
                       _%hd193538193732%_))
                  (if (equal? _%e193546193753%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193545193750%_))
                          (_%__kont196905196906%_ _%tl193539193734%_)
                          (_%__kont196909196910%_
                           _%tl193539193734%_
                           _%hd193538193732%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193545193750%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193539193734%_))
                              (let ((_%e193573193649%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193539193734%_))))
                                (let ((_%tl193575193654%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193573193649%_)))
                                      (_%hd193574193652%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193573193649%_))))
                                  (_%__match197008197009%_
                                   _%e193537193729%_
                                   _%hd193538193732%_
                                   _%tl193539193734%_
                                   _%e193540193737%_
                                   _%hd193541193740%_
                                   _%tl193542193742%_
                                   _%e193543193745%_
                                   _%hd193544193748%_
                                   _%tl193545193750%_
                                   _%e193573193649%_
                                   _%hd193574193652%_
                                   _%tl193575193654%_)))
                              (_%__kont196909196910%_
                               _%tl193539193734%_
                               _%hd193538193732%_))
                          (_%__kont196909196910%_
                           _%tl193539193734%_
                           _%hd193538193732%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193545193750%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl193539193734%_))
                                                            (let ((_%e193573193649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193539193734%_))))
                      (let ((_%tl193575193654%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193573193649%_)))
                            (_%hd193574193652%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193573193649%_))))
                        (_%__match197008197009%_
                         _%e193537193729%_
                         _%hd193538193732%_
                         _%tl193539193734%_
                         _%e193540193737%_
                         _%hd193541193740%_
                         _%tl193542193742%_
                         _%e193543193745%_
                         _%hd193544193748%_
                         _%tl193545193750%_
                         _%e193573193649%_
                         _%hd193574193652%_
                         _%tl193575193654%_)))
                    (_%__kont196909196910%_
                     _%tl193539193734%_
                     _%hd193538193732%_))
                (_%__kont196909196910%_
                 _%tl193539193734%_
                 _%hd193538193732%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont196909196910%_
                                             _%tl193539193734%_
                                             _%hd193538193732%_))
                                        (_%__kont196909196910%_
                                         _%tl193539193734%_
                                         _%hd193538193732%_))
                                    (_%__kont196909196910%_
                                     _%tl193539193734%_
                                     _%hd193538193732%_))))
                            (_%__kont196909196910%_
                             _%tl193539193734%_
                             _%hd193538193732%_))))
                    (_%__kont196911196912%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self192592193502%_ _%ctx193504%_ _%stx193505%_ _%args193506%_)
        (let* ((_%self193508%_ _%self192592193502%_)
               (_%self193510%_ _%self193508%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx193504%_ _%stx193505%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self193190%_ _%stx193191%_)
        (let* ((_%__stx197017197018%_ _%stx193191%_)
               (_%g193194193234%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197017197018%_)))))
          (let ((_%__kont197019197020%_
                 (lambda (_%L193340%_ _%L193341%_)
                   (let ((_%$e193368%_
                          (member 'return:
                                  (let ((__tmp197449
                                         (lambda (_%g193360193363%_
                                                  _%g193361193365%_)
                                           (cons _%g193360193363%_
                                                 _%g193361193365%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp197449 '() _%L193341%_))
                                  gx#stx-eq?)))
                     (if _%$e193368%_
                         ((lambda (_%tail193371%_)
                            (let ((_%type193373%_
                                   (let ((__tmp197450
                                          (let ((__tmp197451
                                                 (cadr _%tail193371%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp197451))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx193191%_
                                      __tmp197450))))
                              (gxc#check-return-type!
                               _%stx193191%_
                               _%L193340%_
                               _%type193373%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self193190%_
                                 _%L193340%_))))
                          _%$e193368%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self193190%_ _%L193340%_))))))
                (_%__kont197023197024%_
                 (lambda (_%L193263%_ _%L193264%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self193190%_ _%L193263%_)))))
            (let ((_%__match197054197055%_
                   (lambda (_%e193198193284%_
                            _%hd193199193287%_
                            _%tl193200193289%_
                            _%e193201193292%_
                            _%hd193202193295%_
                            _%tl193203193297%_
                            _%e193204193300%_
                            _%hd193205193303%_
                            _%tl193206193305%_
                            _%__splice197021197022%_
                            _%target193207193308%_
                            _%tl193209193310%_)
                     (letrec ((_%loop193210193313%_
                               (lambda (_%hd193208193316%_
                                        _%signature193214193318%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd193208193316%_))
                                     (let ((_%e193211193321%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd193208193316%_))))
                                       (let ((_%lp-tl193213193326%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e193211193321%_)))
                                             (_%lp-hd193212193324%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e193211193321%_))))
                                         (_%loop193210193313%_
                                          _%lp-tl193213193326%_
                                          (cons _%lp-hd193212193324%_
                                                _%signature193214193318%_))))
                                     (let ((_%signature193215193329%_
                                            (reverse _%signature193214193318%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl193203193297%_))
                                           (let ((_%e193216193332%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl193203193297%_))))
                                             (let ((_%tl193218193337%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e193216193332%_)))
                                                   (_%hd193217193335%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e193216193332%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl193218193337%_))
                                                   (_%__kont197019197020%_
                                                    _%hd193217193335%_
                                                    _%signature193215193329%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g193194193234%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g193194193234%_))))))))
                       (_%loop193210193313%_ _%target193207193308%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197017197018%_))
                  (let ((_%e193198193284%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197017197018%_))))
                    (let ((_%tl193200193289%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193198193284%_)))
                          (_%hd193199193287%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193198193284%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193200193289%_))
                          (let ((_%e193201193292%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193200193289%_))))
                            (let ((_%tl193203193297%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193201193292%_)))
                                  (_%hd193202193295%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193201193292%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193202193295%_))
                                  (let ((_%e193204193300%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193202193295%_))))
                                    (let ((_%tl193206193305%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193204193300%_)))
                                          (_%hd193205193303%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193204193300%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193205193303%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd193205193303%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl193206193305%_))
                                                  (let ((_%__splice197021197022%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl193206193305%_
                                                            '0))))
                                                    (let ((_%tl193209193310%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197021197022%_
                                                              '1)))
                                                          (_%target193207193308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197021197022%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193209193310%_))
                                                          (_%__match197054197055%_
                                                           _%e193198193284%_
                                                           _%hd193199193287%_
                                                           _%tl193200193289%_
                                                           _%e193201193292%_
                                                           _%hd193202193295%_
                                                           _%tl193203193297%_
                                                           _%e193204193300%_
                                                           _%hd193205193303%_
                                                           _%tl193206193305%_
                                                           _%__splice197021197022%_
                                                           _%target193207193308%_
                                                           _%tl193209193310%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193203193297%_))
                      (let ((_%e193227193255%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193203193297%_))))
                        (let ((_%tl193229193260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193227193255%_)))
                              (_%hd193228193258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193227193255%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193229193260%_))
                              (_%__kont197023197024%_
                               _%hd193228193258%_
                               _%hd193202193295%_)
                              (let ()
                                (declare (not safe))
                                (_%g193194193234%_)))))
                      (let () (declare (not safe)) (_%g193194193234%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193203193297%_))
                                                      (let ((_%e193227193255%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193203193297%_))))
                (let ((_%tl193229193260%_
                       (let () (declare (not safe)) (##cdr _%e193227193255%_)))
                      (_%hd193228193258%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193227193255%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193229193260%_))
                      (_%__kont197023197024%_
                       _%hd193228193258%_
                       _%hd193202193295%_)
                      (let () (declare (not safe)) (_%g193194193234%_)))))
              (let () (declare (not safe)) (_%g193194193234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193203193297%_))
                                                  (let ((_%e193227193255%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193203193297%_))))
                                                    (let ((_%tl193229193260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193227193255%_)))
                                                          (_%hd193228193258%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193227193255%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193229193260%_))
                                                          (_%__kont197023197024%_
                                                           _%hd193228193258%_
                                                           _%hd193202193295%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193194193234%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193194193234%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193203193297%_))
                                              (let ((_%e193227193255%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193203193297%_))))
                                                (let ((_%tl193229193260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193227193255%_)))
                                                      (_%hd193228193258%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193227193255%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193229193260%_))
                                                      (_%__kont197023197024%_
                                                       _%hd193228193258%_
                                                       _%hd193202193295%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193194193234%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193194193234%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193203193297%_))
                                      (let ((_%e193227193255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193203193297%_))))
                                        (let ((_%tl193229193260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193227193255%_)))
                                              (_%hd193228193258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193227193255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193229193260%_))
                                              (_%__kont197023197024%_
                                               _%hd193228193258%_
                                               _%hd193202193295%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g193194193234%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193194193234%_))))))
                          (let () (declare (not safe)) (_%g193194193234%_)))))
                  (let () (declare (not safe)) (_%g193194193234%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx193168%_ _%expr193169%_ _%type193170%_)
        (let ((_%$e193172%_ (not _%type193170%_)))
          (if _%$e193172%_
              _%$e193172%_
              (let ((_%$e193175%_
                     (eq? (##structure-ref _%type193170%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e193175%_
                    _%$e193175%_
                    (let ((_%expr-type193179%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr193169%_))))
                      (if (not _%expr-type193179%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx193168%_
                             _%type193170%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type193179%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx193168%_
                                 _%type193170%_
                                 _%expr-type193179%_))
                              (let ((_%$e193183%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type193179%_
                                        'gxc#!abort::t))))
                                (if _%$e193183%_
                                    _%$e193183%_
                                    (let ((_%$e193186%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type193179%_
                                              _%type193170%_))))
                                      (if _%$e193186%_
                                          _%$e193186%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx193168%_
                                             _%type193170%_
                                             _%expr-type193179%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self192594%_ _%stx192595%_)
        (let* ((_%__stx197099197100%_ _%stx192595%_)
               (_%g192600192710%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197099197100%_)))))
          (let ((_%__kont197101197102%_
                 (lambda (_%L193142%_ _%L193143%_ _%L193144%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L193144%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self192594%_ _%L193143%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self192594%_ _%L193142%_)))))
                (_%__kont197103197104%_
                 (lambda (_%L192968%_ _%L192969%_ _%L192970%_ _%L192971%_)
                   (let ((_%$e193003%_
                          (let ((__tmp197452
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L192971%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp197452))))
                     (if _%$e193003%_
                         ((lambda (_%pred-type193006%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type193006%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type193006%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test193011%_
                                        (let ((__tmp197453
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L192971%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L192970%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp197453
                                           _%stx192595%_
                                           _%self192594%_)))
                                       (_%K193015%_
                                        (let ((__tmp197454
                                               (lambda ()
                                                 (let ((__tmp197457
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self192594%_
                                                             _%L192969%_))))
                                                       (__tmp197455
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L192970%_))
                            (let ((__tmp197456
                                   (##structure-ref
                                    _%pred-type193006%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx192595%_
                               __tmp197456)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp197457
                                                    gxc#current-compile-path-type
                                                    __tmp197455)))))
                                          (declare (not safe))
                                          (__make-promise __tmp197454)))
                                       (_%E193018%_
                                        (let ((__tmp197458
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self192594%_
                                                    _%L192968%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp197458)))
                                       (_%__stx197077197078%_ _%test193011%_)
                                       (_%g193022193036%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx197077197078%_)))))
                                  (let ((_%__kont197079197080%_
                                         (lambda (_%L193064%_ _%L193065%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L193064%_))
                                               (force _%K193015%_)
                                               (force _%E193018%_))))
                                        (_%__kont197081197082%_
                                         (lambda ()
                                           (let ((__tmp197459
                                                  (cons '%#if
                                                        (cons _%test193011%_
                                                              (cons (force _%K193015%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E193018%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197459
                                              _%stx192595%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx197077197078%_))
                                        (let ((_%e193026193048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx197077197078%_))))
                                          (let ((_%tl193028193053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193026193048%_)))
                                                (_%hd193027193051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193026193048%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193028193053%_))
                                                (let ((_%e193029193056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193028193053%_))))
                                                  (let ((_%tl193031193061%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193029193056%_)))
                                                        (_%hd193030193059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193029193056%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193031193061%_))
                                                        (_%__kont197079197080%_
                                                         _%hd193030193059%_
                                                         _%hd193027193051%_)
                                                        (_%__kont197081197082%_))))
                                                (_%__kont197081197082%_))))
                                        (_%__kont197081197082%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self192594%_
                                   _%stx192595%_))))
                          _%$e193003%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self192594%_
                            _%stx192595%_))))))
                (_%__kont197105197106%_
                 (lambda (_%L192844%_ _%L192845%_ _%L192846%_ _%L192847%_)
                   (gxc#optimize-if%
                    _%self192594%_
                    (let ((__tmp197460
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L192846%_
                                       (cons _%L192844%_
                                             (cons _%L192845%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197460 _%stx192595%_)))))
                (_%__kont197107197108%_
                 (lambda (_%L192747%_ _%L192748%_ _%L192749%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self192594%_ _%stx192595%_)))))
            (let ((_%__match197306197307%_
                   (lambda (_%e192664192772%_
                            _%hd192665192775%_
                            _%tl192666192777%_
                            _%e192667192780%_
                            _%hd192668192783%_
                            _%tl192669192785%_
                            _%e192670192788%_
                            _%hd192671192791%_
                            _%tl192672192793%_
                            _%e192673192796%_
                            _%hd192674192799%_
                            _%tl192675192801%_
                            _%e192676192804%_
                            _%hd192677192807%_
                            _%tl192678192809%_
                            _%e192679192812%_
                            _%hd192680192815%_
                            _%tl192681192817%_
                            _%e192682192820%_
                            _%hd192683192823%_
                            _%tl192684192825%_
                            _%e192685192828%_
                            _%hd192686192831%_
                            _%tl192687192833%_
                            _%e192688192836%_
                            _%hd192689192839%_
                            _%tl192690192841%_)
                     (let ((_%L192844%_ _%hd192689192839%_)
                           (_%L192845%_ _%hd192686192831%_)
                           (_%L192846%_ _%hd192683192823%_)
                           (_%L192847%_ _%hd192680192815%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L192847%_ 'not))
                           (_%__kont197105197106%_
                            _%L192844%_
                            _%L192845%_
                            _%L192846%_
                            _%L192847%_)
                           (_%__kont197107197108%_
                            _%hd192689192839%_
                            _%hd192686192831%_
                            _%hd192668192783%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197099197100%_))
                  (let ((_%e192605193094%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197099197100%_))))
                    (let ((_%tl192607193099%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192605193094%_)))
                          (_%hd192606193097%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192605193094%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192607193099%_))
                          (let ((_%e192608193102%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192607193099%_))))
                            (let ((_%tl192610193107%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192608193102%_)))
                                  (_%hd192609193105%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192608193102%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192609193105%_))
                                  (let ((_%e192611193110%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192609193105%_))))
                                    (let ((_%tl192613193115%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192611193110%_)))
                                          (_%hd192612193113%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192611193110%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192612193113%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd192612193113%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192613193115%_))
                                                  (let ((_%e192614193118%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192613193115%_))))
                                                    (let ((_%tl192616193123%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192614193118%_)))
                                                          (_%hd192615193121%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192614193118%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192616193123%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192610193107%_))
                      (let ((_%e192617193126%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192610193107%_))))
                        (let ((_%tl192619193131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192617193126%_)))
                              (_%hd192618193129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192617193126%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192619193131%_))
                              (let ((_%e192620193134%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192619193131%_))))
                                (let ((_%tl192622193139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192620193134%_)))
                                      (_%hd192621193137%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192620193134%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192622193139%_))
                                      (_%__kont197101197102%_
                                       _%hd192621193137%_
                                       _%hd192618193129%_
                                       _%hd192615193121%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g192600192710%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g192600192710%_)))))
                      (let () (declare (not safe)) (_%g192600192710%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192610193107%_))
                      (let ((_%e192700192731%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192610193107%_))))
                        (let ((_%tl192702192736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192700192731%_)))
                              (_%hd192701192734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192700192731%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192702192736%_))
                              (let ((_%e192703192739%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192702192736%_))))
                                (let ((_%tl192705192744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192703192739%_)))
                                      (_%hd192704192742%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192703192739%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192705192744%_))
                                      (_%__kont197107197108%_
                                       _%hd192704192742%_
                                       _%hd192701192734%_
                                       _%hd192609193105%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g192600192710%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g192600192710%_)))))
                      (let () (declare (not safe)) (_%g192600192710%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192610193107%_))
                                                      (let ((_%e192700192731%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192610193107%_))))
                (let ((_%tl192702192736%_
                       (let () (declare (not safe)) (##cdr _%e192700192731%_)))
                      (_%hd192701192734%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192700192731%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192702192736%_))
                      (let ((_%e192703192739%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192702192736%_))))
                        (let ((_%tl192705192744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192703192739%_)))
                              (_%hd192704192742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192703192739%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192705192744%_))
                              (_%__kont197107197108%_
                               _%hd192704192742%_
                               _%hd192701192734%_
                               _%hd192609193105%_)
                              (let ()
                                (declare (not safe))
                                (_%g192600192710%_)))))
                      (let () (declare (not safe)) (_%g192600192710%_)))))
              (let () (declare (not safe)) (_%g192600192710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd192612193113%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192613193115%_))
                                                      (let ((_%e192636192904%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192613193115%_))))
                (let ((_%tl192638192909%_
                       (let () (declare (not safe)) (##cdr _%e192636192904%_)))
                      (_%hd192637192907%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192636192904%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd192637192907%_))
                      (let ((_%e192639192912%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd192637192907%_))))
                        (let ((_%tl192641192917%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192639192912%_)))
                              (_%hd192640192915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192639192912%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd192640192915%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192640192915%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192641192917%_))
                                      (let ((_%e192642192920%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192641192917%_))))
                                        (let ((_%tl192644192925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192642192920%_)))
                                              (_%hd192643192923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192642192920%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192644192925%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192638192909%_))
                                                  (let ((_%e192645192928%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192638192909%_))))
                                                    (let ((_%tl192647192933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192645192928%_)))
                                                          (_%hd192646192931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192645192928%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd192646192931%_))
                                                          (let ((_%e192648192936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd192646192931%_))))
                    (let ((_%tl192650192941%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192648192936%_)))
                          (_%hd192649192939%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192648192936%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192649192939%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd192649192939%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192650192941%_))
                                  (let ((_%e192651192944%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192650192941%_))))
                                    (let ((_%tl192653192949%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192651192944%_)))
                                          (_%hd192652192947%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192651192944%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192653192949%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192647192933%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192610193107%_))
                                                  (let ((_%e192654192952%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192610193107%_))))
                                                    (let ((_%tl192656192957%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192654192952%_)))
                                                          (_%hd192655192955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192654192952%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192656192957%_))
                                                          (let ((_%e192657192960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192656192957%_))))
                    (let ((_%tl192659192965%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192657192960%_)))
                          (_%hd192658192963%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192657192960%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192659192965%_))
                          (_%__kont197103197104%_
                           _%hd192658192963%_
                           _%hd192655192955%_
                           _%hd192652192947%_
                           _%hd192643192923%_)
                          (let () (declare (not safe)) (_%g192600192710%_)))))
                  (let () (declare (not safe)) (_%g192600192710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192600192710%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192610193107%_))
                                                  (let ((_%e192700192731%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192610193107%_))))
                                                    (let ((_%tl192702192736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192700192731%_)))
                                                          (_%hd192701192734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192700192731%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192702192736%_))
                                                          (let ((_%e192703192739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192702192736%_))))
                    (let ((_%tl192705192744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192703192739%_)))
                          (_%hd192704192742%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192703192739%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192705192744%_))
                          (_%__kont197107197108%_
                           _%hd192704192742%_
                           _%hd192701192734%_
                           _%hd192609193105%_)
                          (let () (declare (not safe)) (_%g192600192710%_)))))
                  (let () (declare (not safe)) (_%g192600192710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192600192710%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192647192933%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192610193107%_))
                                                  (let ((_%e192685192828%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192610193107%_))))
                                                    (let ((_%tl192687192833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192685192828%_)))
                                                          (_%hd192686192831%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192685192828%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192687192833%_))
                                                          (let ((_%e192688192836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192687192833%_))))
                    (let ((_%tl192690192841%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192688192836%_)))
                          (_%hd192689192839%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192688192836%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192690192841%_))
                          (_%__match197306197307%_
                           _%e192605193094%_
                           _%hd192606193097%_
                           _%tl192607193099%_
                           _%e192608193102%_
                           _%hd192609193105%_
                           _%tl192610193107%_
                           _%e192611193110%_
                           _%hd192612193113%_
                           _%tl192613193115%_
                           _%e192636192904%_
                           _%hd192637192907%_
                           _%tl192638192909%_
                           _%e192639192912%_
                           _%hd192640192915%_
                           _%tl192641192917%_
                           _%e192642192920%_
                           _%hd192643192923%_
                           _%tl192644192925%_
                           _%e192645192928%_
                           _%hd192646192931%_
                           _%tl192647192933%_
                           _%e192685192828%_
                           _%hd192686192831%_
                           _%tl192687192833%_
                           _%e192688192836%_
                           _%hd192689192839%_
                           _%tl192690192841%_)
                          (let () (declare (not safe)) (_%g192600192710%_)))))
                  (let () (declare (not safe)) (_%g192600192710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192600192710%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192610193107%_))
                                                  (let ((_%e192700192731%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192610193107%_))))
                                                    (let ((_%tl192702192736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192700192731%_)))
                                                          (_%hd192701192734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192700192731%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192702192736%_))
                                                          (let ((_%e192703192739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192702192736%_))))
                    (let ((_%tl192705192744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192703192739%_)))
                          (_%hd192704192742%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192703192739%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192705192744%_))
                          (_%__kont197107197108%_
                           _%hd192704192742%_
                           _%hd192701192734%_
                           _%hd192609193105%_)
                          (let () (declare (not safe)) (_%g192600192710%_)))))
                  (let () (declare (not safe)) (_%g192600192710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192600192710%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192647192933%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192610193107%_))
                                          (let ((_%e192685192828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192610193107%_))))
                                            (let ((_%tl192687192833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192685192828%_)))
                                                  (_%hd192686192831%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192685192828%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192687192833%_))
                                                  (let ((_%e192688192836%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192687192833%_))))
                                                    (let ((_%tl192690192841%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192688192836%_)))
                                                          (_%hd192689192839%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192688192836%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192690192841%_))
                                                          (_%__match197306197307%_
                                                           _%e192605193094%_
                                                           _%hd192606193097%_
                                                           _%tl192607193099%_
                                                           _%e192608193102%_
                                                           _%hd192609193105%_
                                                           _%tl192610193107%_
                                                           _%e192611193110%_
                                                           _%hd192612193113%_
                                                           _%tl192613193115%_
                                                           _%e192636192904%_
                                                           _%hd192637192907%_
                                                           _%tl192638192909%_
                                                           _%e192639192912%_
                                                           _%hd192640192915%_
                                                           _%tl192641192917%_
                                                           _%e192642192920%_
                                                           _%hd192643192923%_
                                                           _%tl192644192925%_
                                                           _%e192645192928%_
                                                           _%hd192646192931%_
                                                           _%tl192647192933%_
                                                           _%e192685192828%_
                                                           _%hd192686192831%_
                                                           _%tl192687192833%_
                                                           _%e192688192836%_
                                                           _%hd192689192839%_
                                                           _%tl192690192841%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192600192710%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192600192710%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192600192710%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192610193107%_))
                                          (let ((_%e192700192731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192610193107%_))))
                                            (let ((_%tl192702192736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192700192731%_)))
                                                  (_%hd192701192734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192700192731%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192702192736%_))
                                                  (let ((_%e192703192739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192702192736%_))))
                                                    (let ((_%tl192705192744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192703192739%_)))
                                                          (_%hd192704192742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192703192739%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192705192744%_))
                                                          (_%__kont197107197108%_
                                                           _%hd192704192742%_
                                                           _%hd192701192734%_
                                                           _%hd192609193105%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192600192710%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192600192710%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192600192710%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192647192933%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192610193107%_))
                                      (let ((_%e192685192828%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192610193107%_))))
                                        (let ((_%tl192687192833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192685192828%_)))
                                              (_%hd192686192831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192685192828%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192687192833%_))
                                              (let ((_%e192688192836%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192687192833%_))))
                                                (let ((_%tl192690192841%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192688192836%_)))
                                                      (_%hd192689192839%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192688192836%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192690192841%_))
                                                      (_%__match197306197307%_
                                                       _%e192605193094%_
                                                       _%hd192606193097%_
                                                       _%tl192607193099%_
                                                       _%e192608193102%_
                                                       _%hd192609193105%_
                                                       _%tl192610193107%_
                                                       _%e192611193110%_
                                                       _%hd192612193113%_
                                                       _%tl192613193115%_
                                                       _%e192636192904%_
                                                       _%hd192637192907%_
                                                       _%tl192638192909%_
                                                       _%e192639192912%_
                                                       _%hd192640192915%_
                                                       _%tl192641192917%_
                                                       _%e192642192920%_
                                                       _%hd192643192923%_
                                                       _%tl192644192925%_
                                                       _%e192645192928%_
                                                       _%hd192646192931%_
                                                       _%tl192647192933%_
                                                       _%e192685192828%_
                                                       _%hd192686192831%_
                                                       _%tl192687192833%_
                                                       _%e192688192836%_
                                                       _%hd192689192839%_
                                                       _%tl192690192841%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192600192710%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192600192710%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192600192710%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192610193107%_))
                                      (let ((_%e192700192731%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192610193107%_))))
                                        (let ((_%tl192702192736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192700192731%_)))
                                              (_%hd192701192734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192700192731%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192702192736%_))
                                              (let ((_%e192703192739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192702192736%_))))
                                                (let ((_%tl192705192744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192703192739%_)))
                                                      (_%hd192704192742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192703192739%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192705192744%_))
                                                      (_%__kont197107197108%_
                                                       _%hd192704192742%_
                                                       _%hd192701192734%_
                                                       _%hd192609193105%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192600192710%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192600192710%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192600192710%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192647192933%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192610193107%_))
                                  (let ((_%e192685192828%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192610193107%_))))
                                    (let ((_%tl192687192833%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192685192828%_)))
                                          (_%hd192686192831%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192685192828%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192687192833%_))
                                          (let ((_%e192688192836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192687192833%_))))
                                            (let ((_%tl192690192841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192688192836%_)))
                                                  (_%hd192689192839%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192688192836%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192690192841%_))
                                                  (_%__match197306197307%_
                                                   _%e192605193094%_
                                                   _%hd192606193097%_
                                                   _%tl192607193099%_
                                                   _%e192608193102%_
                                                   _%hd192609193105%_
                                                   _%tl192610193107%_
                                                   _%e192611193110%_
                                                   _%hd192612193113%_
                                                   _%tl192613193115%_
                                                   _%e192636192904%_
                                                   _%hd192637192907%_
                                                   _%tl192638192909%_
                                                   _%e192639192912%_
                                                   _%hd192640192915%_
                                                   _%tl192641192917%_
                                                   _%e192642192920%_
                                                   _%hd192643192923%_
                                                   _%tl192644192925%_
                                                   _%e192645192928%_
                                                   _%hd192646192931%_
                                                   _%tl192647192933%_
                                                   _%e192685192828%_
                                                   _%hd192686192831%_
                                                   _%tl192687192833%_
                                                   _%e192688192836%_
                                                   _%hd192689192839%_
                                                   _%tl192690192841%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192600192710%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192600192710%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192600192710%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192610193107%_))
                                  (let ((_%e192700192731%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192610193107%_))))
                                    (let ((_%tl192702192736%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192700192731%_)))
                                          (_%hd192701192734%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192700192731%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192702192736%_))
                                          (let ((_%e192703192739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192702192736%_))))
                                            (let ((_%tl192705192744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192703192739%_)))
                                                  (_%hd192704192742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192703192739%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192705192744%_))
                                                  (_%__kont197107197108%_
                                                   _%hd192704192742%_
                                                   _%hd192701192734%_
                                                   _%hd192609193105%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192600192710%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192600192710%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192600192710%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192647192933%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192610193107%_))
                          (let ((_%e192685192828%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192610193107%_))))
                            (let ((_%tl192687192833%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192685192828%_)))
                                  (_%hd192686192831%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192685192828%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192687192833%_))
                                  (let ((_%e192688192836%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192687192833%_))))
                                    (let ((_%tl192690192841%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192688192836%_)))
                                          (_%hd192689192839%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192688192836%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192690192841%_))
                                          (_%__match197306197307%_
                                           _%e192605193094%_
                                           _%hd192606193097%_
                                           _%tl192607193099%_
                                           _%e192608193102%_
                                           _%hd192609193105%_
                                           _%tl192610193107%_
                                           _%e192611193110%_
                                           _%hd192612193113%_
                                           _%tl192613193115%_
                                           _%e192636192904%_
                                           _%hd192637192907%_
                                           _%tl192638192909%_
                                           _%e192639192912%_
                                           _%hd192640192915%_
                                           _%tl192641192917%_
                                           _%e192642192920%_
                                           _%hd192643192923%_
                                           _%tl192644192925%_
                                           _%e192645192928%_
                                           _%hd192646192931%_
                                           _%tl192647192933%_
                                           _%e192685192828%_
                                           _%hd192686192831%_
                                           _%tl192687192833%_
                                           _%e192688192836%_
                                           _%hd192689192839%_
                                           _%tl192690192841%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192600192710%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192600192710%_)))))
                          (let () (declare (not safe)) (_%g192600192710%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192610193107%_))
                          (let ((_%e192700192731%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192610193107%_))))
                            (let ((_%tl192702192736%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192700192731%_)))
                                  (_%hd192701192734%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192700192731%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192702192736%_))
                                  (let ((_%e192703192739%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192702192736%_))))
                                    (let ((_%tl192705192744%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192703192739%_)))
                                          (_%hd192704192742%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192703192739%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192705192744%_))
                                          (_%__kont197107197108%_
                                           _%hd192704192742%_
                                           _%hd192701192734%_
                                           _%hd192609193105%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192600192710%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192600192710%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g192600192710%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192610193107%_))
                                                      (let ((_%e192700192731%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192610193107%_))))
                (let ((_%tl192702192736%_
                       (let () (declare (not safe)) (##cdr _%e192700192731%_)))
                      (_%hd192701192734%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192700192731%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192702192736%_))
                      (let ((_%e192703192739%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192702192736%_))))
                        (let ((_%tl192705192744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192703192739%_)))
                              (_%hd192704192742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192703192739%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192705192744%_))
                              (_%__kont197107197108%_
                               _%hd192704192742%_
                               _%hd192701192734%_
                               _%hd192609193105%_)
                              (let ()
                                (declare (not safe))
                                (_%g192600192710%_)))))
                      (let () (declare (not safe)) (_%g192600192710%_)))))
              (let () (declare (not safe)) (_%g192600192710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192610193107%_))
                                                  (let ((_%e192700192731%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192610193107%_))))
                                                    (let ((_%tl192702192736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192700192731%_)))
                                                          (_%hd192701192734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192700192731%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192702192736%_))
                                                          (let ((_%e192703192739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192702192736%_))))
                    (let ((_%tl192705192744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192703192739%_)))
                          (_%hd192704192742%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192703192739%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192705192744%_))
                          (_%__kont197107197108%_
                           _%hd192704192742%_
                           _%hd192701192734%_
                           _%hd192609193105%_)
                          (let () (declare (not safe)) (_%g192600192710%_)))))
                  (let () (declare (not safe)) (_%g192600192710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192600192710%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192610193107%_))
                                          (let ((_%e192700192731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192610193107%_))))
                                            (let ((_%tl192702192736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192700192731%_)))
                                                  (_%hd192701192734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192700192731%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192702192736%_))
                                                  (let ((_%e192703192739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192702192736%_))))
                                                    (let ((_%tl192705192744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192703192739%_)))
                                                          (_%hd192704192742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192703192739%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192705192744%_))
                                                          (_%__kont197107197108%_
                                                           _%hd192704192742%_
                                                           _%hd192701192734%_
                                                           _%hd192609193105%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192600192710%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192600192710%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192600192710%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192610193107%_))
                                      (let ((_%e192700192731%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192610193107%_))))
                                        (let ((_%tl192702192736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192700192731%_)))
                                              (_%hd192701192734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192700192731%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192702192736%_))
                                              (let ((_%e192703192739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192702192736%_))))
                                                (let ((_%tl192705192744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192703192739%_)))
                                                      (_%hd192704192742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192703192739%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192705192744%_))
                                                      (_%__kont197107197108%_
                                                       _%hd192704192742%_
                                                       _%hd192701192734%_
                                                       _%hd192609193105%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192600192710%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192600192710%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192600192710%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192610193107%_))
                                  (let ((_%e192700192731%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192610193107%_))))
                                    (let ((_%tl192702192736%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192700192731%_)))
                                          (_%hd192701192734%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192700192731%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192702192736%_))
                                          (let ((_%e192703192739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192702192736%_))))
                                            (let ((_%tl192705192744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192703192739%_)))
                                                  (_%hd192704192742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192703192739%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192705192744%_))
                                                  (_%__kont197107197108%_
                                                   _%hd192704192742%_
                                                   _%hd192701192734%_
                                                   _%hd192609193105%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192600192710%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192600192710%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192600192710%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192610193107%_))
                          (let ((_%e192700192731%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192610193107%_))))
                            (let ((_%tl192702192736%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192700192731%_)))
                                  (_%hd192701192734%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192700192731%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192702192736%_))
                                  (let ((_%e192703192739%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192702192736%_))))
                                    (let ((_%tl192705192744%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192703192739%_)))
                                          (_%hd192704192742%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192703192739%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192705192744%_))
                                          (_%__kont197107197108%_
                                           _%hd192704192742%_
                                           _%hd192701192734%_
                                           _%hd192609193105%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192600192710%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192600192710%_)))))
                          (let () (declare (not safe)) (_%g192600192710%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl192610193107%_))
                  (let ((_%e192700192731%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192610193107%_))))
                    (let ((_%tl192702192736%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192700192731%_)))
                          (_%hd192701192734%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192700192731%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192702192736%_))
                          (let ((_%e192703192739%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192702192736%_))))
                            (let ((_%tl192705192744%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192703192739%_)))
                                  (_%hd192704192742%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192703192739%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192705192744%_))
                                  (_%__kont197107197108%_
                                   _%hd192704192742%_
                                   _%hd192701192734%_
                                   _%hd192609193105%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g192600192710%_)))))
                          (let () (declare (not safe)) (_%g192600192710%_)))))
                  (let () (declare (not safe)) (_%g192600192710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192610193107%_))
                                                      (let ((_%e192700192731%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192610193107%_))))
                (let ((_%tl192702192736%_
                       (let () (declare (not safe)) (##cdr _%e192700192731%_)))
                      (_%hd192701192734%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192700192731%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192702192736%_))
                      (let ((_%e192703192739%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192702192736%_))))
                        (let ((_%tl192705192744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192703192739%_)))
                              (_%hd192704192742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192703192739%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192705192744%_))
                              (_%__kont197107197108%_
                               _%hd192704192742%_
                               _%hd192701192734%_
                               _%hd192609193105%_)
                              (let ()
                                (declare (not safe))
                                (_%g192600192710%_)))))
                      (let () (declare (not safe)) (_%g192600192710%_)))))
              (let () (declare (not safe)) (_%g192600192710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192610193107%_))
                                              (let ((_%e192700192731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192610193107%_))))
                                                (let ((_%tl192702192736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192700192731%_)))
                                                      (_%hd192701192734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192700192731%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192702192736%_))
                                                      (let ((_%e192703192739%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192702192736%_))))
                (let ((_%tl192705192744%_
                       (let () (declare (not safe)) (##cdr _%e192703192739%_)))
                      (_%hd192704192742%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192703192739%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192705192744%_))
                      (_%__kont197107197108%_
                       _%hd192704192742%_
                       _%hd192701192734%_
                       _%hd192609193105%_)
                      (let () (declare (not safe)) (_%g192600192710%_)))))
              (let () (declare (not safe)) (_%g192600192710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g192600192710%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192610193107%_))
                                      (let ((_%e192700192731%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192610193107%_))))
                                        (let ((_%tl192702192736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192700192731%_)))
                                              (_%hd192701192734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192700192731%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192702192736%_))
                                              (let ((_%e192703192739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192702192736%_))))
                                                (let ((_%tl192705192744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192703192739%_)))
                                                      (_%hd192704192742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192703192739%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192705192744%_))
                                                      (_%__kont197107197108%_
                                                       _%hd192704192742%_
                                                       _%hd192701192734%_
                                                       _%hd192609193105%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192600192710%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192600192710%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192600192710%_))))))
                          (let () (declare (not safe)) (_%g192600192710%_)))))
                  (let () (declare (not safe)) (_%g192600192710%_))))))))))
