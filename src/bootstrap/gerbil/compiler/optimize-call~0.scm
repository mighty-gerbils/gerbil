(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1770243157)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp219433 (list gxc#::basic-xform::t))
            (__tmp219432 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp219433
         '()
         __tmp219432
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args218710%_
        (apply make-instance gxc#::optimize-call::t _%$args218710%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp219434
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
        (__make-atomic-promise __tmp219434)))
    (define gxc#apply-optimize-call
      (lambda (_%stx218702%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self218705%_
                (let ((__obj219424
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj219424))
               (__tmp219435
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self218705%_ _%stx218702%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp219435
           gxc#current-compile-method
           _%self218705%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp219437 (list gxc#::void::t))
            (__tmp219436 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp219437
         '()
         __tmp219436
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args218699%_
        (apply make-instance gxc#::check-return-type::t _%$args218699%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp219438
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
        (__make-atomic-promise __tmp219438)))
    (define gxc#apply-check-return-type
      (lambda (_%stx218691%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self218694%_
                (let ((__obj219426
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj219426))
               (__tmp219439
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self218694%_ _%stx218691%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp219439
           gxc#current-compile-method
           _%self218694%_))))
    (define gxc#optimize-call%
      (lambda (_%self218298%_ _%stx218299%_)
        (let* ((_%__stx218779218780%_ _%stx218299%_)
               (_%g218302218348%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx218779218780%_)))))
          (let ((_%__kont218781218782%_
                 (lambda (_%g218304218487%_ _%g218305218488%_)
                   (let* ((_%rator-id218508%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g218305218488%_)))
                          (_%rator-type218510%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id218508%_))))
                     (if (or (not _%rator-type218510%_)
                             (eq? (##structure-ref
                                   _%rator-type218510%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self218298%_ _%stx218299%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type218510%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp219440
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type218510%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id218508%_
                                  '" => "
                                  _%rator-type218510%_
                                  '" "
                                  __tmp219440))
                               (let* ((_%optimized218525%_
                                       (let ((__method219427
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type218510%_
                                                 'optimize-call))))
                                         (if __method219427
                                             (let ((__tmp219441
                                                    (let ((__tmp219442
                                                           (lambda (_%g218517218520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g218518218522%_)
                     (cons _%g218517218520%_ _%g218518218522%_))))
              (declare (not safe))
              (__foldr1 __tmp219442 '() _%g218304218487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method219427
                                                _%rator-type218510%_
                                                _%self218298%_
                                                _%stx218299%_
                                                __tmp219441))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type218510%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx218727218728%_
                                       _%optimized218525%_)
                                      (_%g218528218557%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx218727218728%_)))))
                                 (let ((_%__kont218729218730%_
                                        (lambda (_%g218530218623%_
                                                 _%g218531218624%_)
                                          (let* ((_%optimized-rator-id218651%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g218531218624%_)))
                                                 (_%rator-type218656%_
                                                  (let ((_%$e218653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id218651%_))))
                                                    (if _%$e218653%_
                                                        _%$e218653%_
                                                        _%rator-type218510%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type218656%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id218651%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type218656%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type218656%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized218525%_
                                                (let ((__tmp219443
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g218531218624%_ '()))
                           (let ((__tmp219444
                                  (lambda (_%g218664218667%_ _%g218665218669%_)
                                    (cons _%g218664218667%_
                                          _%g218665218669%_))))
                             (declare (not safe))
                             (__foldr1 __tmp219444 '() _%g218530218623%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp219443
                                                   _%stx218299%_))))))
                                       (_%__kont218733218734%_
                                        (lambda () _%optimized218525%_)))
                                   (let ((_%__match218776218777%_
                                          (lambda (_%e218532218569%_
                                                   _%hd218533218572%_
                                                   _%tl218534218574%_
                                                   _%e218535218577%_
                                                   _%hd218536218580%_
                                                   _%tl218537218582%_
                                                   _%e218538218585%_
                                                   _%hd218539218588%_
                                                   _%tl218540218590%_
                                                   _%e218541218593%_
                                                   _%hd218542218596%_
                                                   _%tl218543218598%_
                                                   _%__splice218731218732%_
                                                   _%target218544218601%_
                                                   _%tl218546218603%_)
                                            (letrec ((_%loop218547218606%_
                                                      (lambda (_%hd218545218609%_
                                                               _%arg218551218611%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd218545218609%_))
                                                            (let ((_%e218548218613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd218545218609%_))))
                      (let ((_%lp-tl218550218618%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e218548218613%_)))
                            (_%lp-hd218549218616%_
                             (let ()
                               (declare (not safe))
                               (##car _%e218548218613%_))))
                        (_%loop218547218606%_
                         _%lp-tl218550218618%_
                         (cons _%lp-hd218549218616%_ _%arg218551218611%_))))
                    (let ((_%arg218552218621%_ (reverse _%arg218551218611%_)))
                      (_%__kont218729218730%_
                       _%arg218552218621%_
                       _%hd218542218596%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop218547218606%_
                                               _%target218544218601%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx218727218728%_))
                                         (let ((_%e218532218569%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx218727218728%_))))
                                           (let ((_%tl218534218574%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e218532218569%_)))
                                                 (_%hd218533218572%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e218532218569%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd218533218572%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd218533218572%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl218534218574%_))
                                                         (let ((_%e218535218577%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl218534218574%_))))
                   (let ((_%tl218537218582%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e218535218577%_)))
                         (_%hd218536218580%_
                          (let ()
                            (declare (not safe))
                            (##car _%e218535218577%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd218536218580%_))
                         (let ((_%e218538218585%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd218536218580%_))))
                           (let ((_%tl218540218590%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e218538218585%_)))
                                 (_%hd218539218588%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e218538218585%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd218539218588%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd218539218588%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl218540218590%_))
                                         (let ((_%e218541218593%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl218540218590%_))))
                                           (let ((_%tl218543218598%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e218541218593%_)))
                                                 (_%hd218542218596%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e218541218593%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl218543218598%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl218537218582%_))
                                                     (let ((_%__splice218731218732%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl218537218582%_
                                                               '0))))
                                                       (let ((_%tl218546218603%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice218731218732%_ '1)))
                     (_%target218544218601%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice218731218732%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl218546218603%_))
                     (_%__match218776218777%_
                      _%e218532218569%_
                      _%hd218533218572%_
                      _%tl218534218574%_
                      _%e218535218577%_
                      _%hd218536218580%_
                      _%tl218537218582%_
                      _%e218538218585%_
                      _%hd218539218588%_
                      _%tl218540218590%_
                      _%e218541218593%_
                      _%hd218542218596%_
                      _%tl218543218598%_
                      _%__splice218731218732%_
                      _%target218544218601%_
                      _%tl218546218603%_)
                     (_%__kont218733218734%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont218733218734%_))
                                                 (_%__kont218733218734%_))))
                                         (_%__kont218733218734%_))
                                     (_%__kont218733218734%_))
                                 (_%__kont218733218734%_))))
                         (_%__kont218733218734%_))))
                 (_%__kont218733218734%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont218733218734%_))
                                                 (_%__kont218733218734%_))))
                                         (_%__kont218733218734%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type218510%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type218510%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp219445
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g218305218488%_
                                                                '()))
                                                    (map (lambda (_%g218675218677%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self218298%_
                                                              _%g218675218677%_)))
                                                         (let ((__tmp219446
                                                                (lambda (_%g218679218682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g218680218684%_)
                          (cons _%g218679218682%_ _%g218680218684%_))))
                   (declare (not safe))
                   (__foldr1 __tmp219446 '() _%g218304218487%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp219445
                                    _%stx218299%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx218299%_
                                    _%rator-type218510%_))))))))
                (_%__kont218785218786%_
                 (lambda (_%g218327218391%_ _%g218328218392%_)
                   (let ((_%rator-type218409%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g218328218392%_))))
                     (if (and _%rator-type218409%_
                              (eq? (##structure-ref
                                    _%rator-type218409%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type218409%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type218409%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type218409%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp219447
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self218298%_
                                               _%g218328218392%_))
                                            (map (lambda (_%g218411218413%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self218298%_
                                                      _%g218411218413%_)))
                                                 (let ((__tmp219448
                                                        (lambda (_%g218415218418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g218416218420%_)
                  (cons _%g218415218418%_ _%g218416218420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp219448
                                                    '()
                                                    _%g218327218391%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp219447 _%stx218299%_))
                         (if (or (not _%rator-type218409%_)
                                 (let ((__tmp219449
                                        (##structure-ref
                                         _%rator-type218409%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp219449 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self218298%_ _%stx218299%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx218299%_
                                _%rator-type218409%_))))))))
            (let* ((_%__match218846218847%_
                    (lambda (_%e218329218353%_
                             _%hd218330218356%_
                             _%tl218331218358%_
                             _%e218332218361%_
                             _%hd218333218364%_
                             _%tl218334218366%_
                             _%__splice218787218788%_
                             _%target218335218369%_
                             _%tl218337218371%_)
                      (letrec ((_%loop218338218374%_
                                (lambda (_%hd218336218377%_
                                         _%rand218342218379%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd218336218377%_))
                                      (let ((_%e218339218381%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd218336218377%_))))
                                        (let ((_%lp-tl218341218386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218339218381%_)))
                                              (_%lp-hd218340218384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218339218381%_))))
                                          (_%loop218338218374%_
                                           _%lp-tl218341218386%_
                                           (cons _%lp-hd218340218384%_
                                                 _%rand218342218379%_))))
                                      (let ((_%rand218343218389%_
                                             (reverse _%rand218342218379%_)))
                                        (_%__kont218785218786%_
                                         _%rand218343218389%_
                                         _%hd218333218364%_))))))
                        (_%loop218338218374%_ _%target218335218369%_ '()))))
                   (_%__match218826218827%_
                    (lambda (_%e218306218433%_
                             _%hd218307218436%_
                             _%tl218308218438%_
                             _%e218309218441%_
                             _%hd218310218444%_
                             _%tl218311218446%_
                             _%e218312218449%_
                             _%hd218313218452%_
                             _%tl218314218454%_
                             _%e218315218457%_
                             _%hd218316218460%_
                             _%tl218317218462%_
                             _%__splice218783218784%_
                             _%target218318218465%_
                             _%tl218320218467%_)
                      (letrec ((_%loop218321218470%_
                                (lambda (_%hd218319218473%_
                                         _%rand218325218475%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd218319218473%_))
                                      (let ((_%e218322218477%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd218319218473%_))))
                                        (let ((_%lp-tl218324218482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218322218477%_)))
                                              (_%lp-hd218323218480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218322218477%_))))
                                          (_%loop218321218470%_
                                           _%lp-tl218324218482%_
                                           (cons _%lp-hd218323218480%_
                                                 _%rand218325218475%_))))
                                      (let ((_%rand218326218485%_
                                             (reverse _%rand218325218475%_)))
                                        (_%__kont218781218782%_
                                         _%rand218326218485%_
                                         _%hd218316218460%_))))))
                        (_%loop218321218470%_ _%target218318218465%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx218779218780%_))
                  (let ((_%e218306218433%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx218779218780%_))))
                    (let ((_%tl218308218438%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218306218433%_)))
                          (_%hd218307218436%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218306218433%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl218308218438%_))
                          (let ((_%e218309218441%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl218308218438%_))))
                            (let ((_%tl218311218446%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218309218441%_)))
                                  (_%hd218310218444%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218309218441%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd218310218444%_))
                                  (let ((_%e218312218449%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd218310218444%_))))
                                    (let ((_%tl218314218454%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218312218449%_)))
                                          (_%hd218313218452%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218312218449%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd218313218452%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd218313218452%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl218314218454%_))
                                                  (let ((_%e218315218457%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl218314218454%_))))
                                                    (let ((_%tl218317218462%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e218315218457%_)))
                                                          (_%hd218316218460%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e218315218457%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl218317218462%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl218311218446%_))
                      (let ((_%__splice218783218784%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl218311218446%_
                                '0))))
                        (let ((_%tl218320218467%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice218783218784%_ '1)))
                              (_%target218318218465%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice218783218784%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218320218467%_))
                              (_%__match218826218827%_
                               _%e218306218433%_
                               _%hd218307218436%_
                               _%tl218308218438%_
                               _%e218309218441%_
                               _%hd218310218444%_
                               _%tl218311218446%_
                               _%e218312218449%_
                               _%hd218313218452%_
                               _%tl218314218454%_
                               _%e218315218457%_
                               _%hd218316218460%_
                               _%tl218317218462%_
                               _%__splice218783218784%_
                               _%target218318218465%_
                               _%tl218320218467%_)
                              (let ()
                                (declare (not safe))
                                (_%g218302218348%_)))))
                      (let () (declare (not safe)) (_%g218302218348%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl218311218446%_))
                      (let ((_%__splice218787218788%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl218311218446%_
                                '0))))
                        (let ((_%tl218337218371%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice218787218788%_ '1)))
                              (_%target218335218369%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice218787218788%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218337218371%_))
                              (_%__match218846218847%_
                               _%e218306218433%_
                               _%hd218307218436%_
                               _%tl218308218438%_
                               _%e218309218441%_
                               _%hd218310218444%_
                               _%tl218311218446%_
                               _%__splice218787218788%_
                               _%target218335218369%_
                               _%tl218337218371%_)
                              (let ()
                                (declare (not safe))
                                (_%g218302218348%_)))))
                      (let () (declare (not safe)) (_%g218302218348%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl218311218446%_))
                                                      (let ((_%__splice218787218788%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl218311218446%_
                        '0))))
                (let ((_%tl218337218371%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice218787218788%_ '1)))
                      (_%target218335218369%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice218787218788%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl218337218371%_))
                      (_%__match218846218847%_
                       _%e218306218433%_
                       _%hd218307218436%_
                       _%tl218308218438%_
                       _%e218309218441%_
                       _%hd218310218444%_
                       _%tl218311218446%_
                       _%__splice218787218788%_
                       _%target218335218369%_
                       _%tl218337218371%_)
                      (let () (declare (not safe)) (_%g218302218348%_)))))
              (let () (declare (not safe)) (_%g218302218348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl218311218446%_))
                                                  (let ((_%__splice218787218788%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl218311218446%_
                                                            '0))))
                                                    (let ((_%tl218337218371%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice218787218788%_
                                                              '1)))
                                                          (_%target218335218369%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice218787218788%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl218337218371%_))
                                                          (_%__match218846218847%_
                                                           _%e218306218433%_
                                                           _%hd218307218436%_
                                                           _%tl218308218438%_
                                                           _%e218309218441%_
                                                           _%hd218310218444%_
                                                           _%tl218311218446%_
                                                           _%__splice218787218788%_
                                                           _%target218335218369%_
                                                           _%tl218337218371%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g218302218348%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g218302218348%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl218311218446%_))
                                              (let ((_%__splice218787218788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl218311218446%_
                                                        '0))))
                                                (let ((_%tl218337218371%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice218787218788%_
                                                          '1)))
                                                      (_%target218335218369%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice218787218788%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl218337218371%_))
                                                      (_%__match218846218847%_
                                                       _%e218306218433%_
                                                       _%hd218307218436%_
                                                       _%tl218308218438%_
                                                       _%e218309218441%_
                                                       _%hd218310218444%_
                                                       _%tl218311218446%_
                                                       _%__splice218787218788%_
                                                       _%target218335218369%_
                                                       _%tl218337218371%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g218302218348%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g218302218348%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl218311218446%_))
                                      (let ((_%__splice218787218788%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl218311218446%_
                                                '0))))
                                        (let ((_%tl218337218371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice218787218788%_
                                                  '1)))
                                              (_%target218335218369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice218787218788%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218337218371%_))
                                              (_%__match218846218847%_
                                               _%e218306218433%_
                                               _%hd218307218436%_
                                               _%tl218308218438%_
                                               _%e218309218441%_
                                               _%hd218310218444%_
                                               _%tl218311218446%_
                                               _%__splice218787218788%_
                                               _%target218335218369%_
                                               _%tl218337218371%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g218302218348%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g218302218348%_))))))
                          (let () (declare (not safe)) (_%g218302218348%_)))))
                  (let () (declare (not safe)) (_%g218302218348%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self218260%_ _%ctx218261%_ _%stx218262%_ _%args218263%_)
        (let ((_%self218266%_ _%self218260%_))
          (if (let ((__method219428
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self218266%_ 'check-arguments))))
                (if __method219428
                    (let ()
                      (declare (not safe))
                      (__method219428
                       _%self218266%_
                       _%ctx218261%_
                       _%stx218262%_
                       _%args218263%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self218266%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature218276%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self218266%_ '2 '#f '#f)))
                     (_%signature218278%_ _%signature218276%_)
                     (_%$e218288%_
                      (if _%signature218278%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature218278%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e218288%_
                    ((lambda (_%unchecked218291%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked218291%_))
                           (let ((__tmp219450
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked218291%_
                                                          '()))
                                              (map (lambda (_%g218292218294%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx218261%_
                                                        _%g218292218294%_)))
                                                   _%args218263%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp219450
                              _%stx218262%_
                              _%ctx218261%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx218261%_ _%stx218262%_))))
                     _%$e218288%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx218261%_ _%stx218262%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx218261%_ _%stx218262%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass218712 __method-table218713)
        (let ((__check-arguments218714
               (let ((__tmp219451
                      (lambda ()
                        (let ((__method218715
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table218713
                                  'check-arguments
                                  '#f))))
                          (if __method218715
                              __method218715
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp219451))))
          (lambda (_%self218260%_ _%ctx218261%_ _%stx218262%_ _%args218263%_)
            (let ((_%self218266%_ _%self218260%_))
              (if ((force __check-arguments218714)
                   _%self218266%_
                   _%ctx218261%_
                   _%stx218262%_
                   _%args218263%_)
                  (let* ((_%signature218276%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self218266%_
                             '2
                             '#f
                             '#f)))
                         (_%signature218278%_ _%signature218276%_)
                         (_%$e218288%_
                          (if _%signature218278%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature218278%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e218288%_
                        ((lambda (_%unchecked218291%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked218291%_))
                               (let ((__tmp219452
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked218291%_
                                                              '()))
                                                  (map (lambda (_%g218292218294%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx218261%_
                                                            _%g218292218294%_)))
                                                       _%args218263%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp219452
                                  _%stx218262%_
                                  _%ctx218261%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx218261%_
                                  _%stx218262%_))))
                         _%$e218288%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx218261%_ _%stx218262%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx218261%_ _%stx218262%_))))))))
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
      (lambda (_%self218013%_ _%ctx218014%_ _%stx218015%_ _%args218016%_)
        (let* ((_%self218019%_ _%self218013%_)
               (_%signature218028218030%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self218019%_ '2 '#f '#f))))
          (if _%signature218028218030%_
              (let* ((_%signature218032%_ _%signature218028218030%_)
                     (_%argument-types218033218035%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature218032%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types218033218035%_
                    (let* ((_%argument-types218037%_
                            _%argument-types218033218035%_)
                           (_%argument-types218042%_
                            (let ((__tmp219453
                                   (lambda (_%t218040%_)
                                     (if _%t218040%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx218015%_
                                            _%t218040%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp219453
                               _%argument-types218037%_))))
                      (let _%loop218044%_ ((_%rest-args218046%_ _%args218016%_)
                                           (_%rest-types218047%_
                                            _%argument-types218042%_)
                                           (_%result218048%_ '#t))
                        (let* ((_%rest-args218049218057%_ _%rest-args218046%_)
                               (_%else218051218065%_
                                (lambda () _%result218048%_))
                               (_%K218053218126%_
                                (lambda (_%rest-args218068%_ _%arg218069%_)
                                  (let* ((_%rest-types218070218081%_
                                          _%rest-types218047%_)
                                         (_%E218074218085%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types218070218081%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K218077218114%_
                                           (lambda (_%rest-types218111%_
                                                    _%type218112%_)
                                             (_%loop218044%_
                                              _%rest-args218068%_
                                              _%rest-types218111%_
                                              (if (gxc#check-expression-type!
                                                   _%stx218015%_
                                                   _%arg218069%_
                                                   _%type218112%_)
                                                  _%result218048%_
                                                  '#f))))
                                          (_%K218076218105%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx218015%_
                                                _%argument-types218042%_))))
                                          (_%K218075218095%_
                                           (lambda (_%tail-type218089%_)
                                             (if (let ((__tmp219454
                                                        (lambda (_%g218090218092%_)
                                                          (gxc#check-expression-type!
                                                           _%stx218015%_
                                                           _%g218090218092%_
                                                           _%tail-type218089%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp219454
                                                    _%rest-args218068%_))
                                                 _%result218048%_
                                                 '#f))))
                                      (let ((_%try-match218072218108%_
                                             (lambda ()
                                               (if (null? _%rest-types218070218081%_)
                                                   (_%K218076218105%_)
                                                   (let ((_%tail-type218098%_
                                                          _%rest-types218070218081%_))
                                                     (_%K218075218095%_
                                                      _%tail-type218098%_))))))
                                        (if (pair? _%rest-types218070218081%_)
                                            (let ((_%tl218079218119%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types218070218081%_)))
                                                  (_%hd218078218117%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types218070218081%_))))
                                              (let ((_%type218122%_
                                                     _%hd218078218117%_)
                                                    (_%rest-types218124%_
                                                     _%tl218079218119%_))
                                                (_%K218077218114%_
                                                 _%rest-types218124%_
                                                 _%type218122%_)))
                                            (_%try-match218072218108%_))))))))
                          (if (pair? _%rest-args218049218057%_)
                              (let ((_%hd218054218129%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args218049218057%_)))
                                    (_%tl218055218131%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args218049218057%_))))
                                (let* ((_%arg218134%_ _%hd218054218129%_)
                                       (_%rest-args218136%_
                                        _%tl218055218131%_))
                                  (_%K218053218126%_
                                   _%rest-args218136%_
                                   _%arg218134%_)))
                              (_%else218051218065%_)))))
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
      (lambda (_%self217824%_ _%ctx217825%_ _%stx217826%_ _%args217827%_)
        (let* ((_%self217830%_ _%self217824%_)
               (_%g217840217850%_
                (lambda (_%g217841217847%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217841217847%_))))
               (_%g217839217888%_
                (lambda (_%g217841217853%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217841217853%_))
                      (let ((_%e217843217855%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g217841217853%_))))
                        (let ((_%hd217844217858%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217843217855%_)))
                              (_%tl217845217860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217843217855%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl217845217860%_))
                              ((lambda (_%g217842217863%_)
                                 (let* ((_%klass217875%_
                                         (let ((__tmp219455
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self217830%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx217826%_
                                            __tmp219455)))
                                        (_%object217877%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx217825%_
                                            _%g217842217863%_)))
                                        (_%instance?217882%_
                                         (let ((_%$e217879%_
                                                (gxc#expression-type?
                                                 _%object217877%_
                                                 _%klass217875%_)))
                                           (if _%$e217879%_
                                               _%$e217879%_
                                               (gxc#expression-type?
                                                _%g217842217863%_
                                                _%klass217875%_)))))
                                   (if _%instance?217882%_
                                       (let ((__tmp219456
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object217877%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g217842217863%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object217877%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp219456
                                          _%stx217826%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx217825%_
                                          _%stx217826%_)))))
                               _%hd217844217858%_)
                              (_%g217840217850%_ _%g217841217853%_))))
                      (_%g217840217850%_ _%g217841217853%_)))))
          (_%g217839217888%_ _%args217827%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self217620%_ _%ctx217621%_ _%stx217622%_ _%args217623%_)
        (let* ((_%self217626%_ _%self217620%_)
               (_%g217636217646%_
                (lambda (_%g217637217643%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217637217643%_))))
               (_%g217635217699%_
                (lambda (_%g217637217649%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217637217649%_))
                      (let ((_%e217639217651%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g217637217649%_))))
                        (let ((_%hd217640217654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217639217651%_)))
                              (_%tl217641217656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217639217651%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl217641217656%_))
                              ((lambda (_%g217638217659%_)
                                 (let* ((_%klass217671%_
                                         (let ((__tmp219457
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self217626%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx217622%_
                                            __tmp219457)))
                                        (_%object217673%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx217621%_
                                            _%g217638217659%_)))
                                        (_%instance?217678%_
                                         (let ((_%$e217675%_
                                                (gxc#expression-type?
                                                 _%object217673%_
                                                 _%klass217671%_)))
                                           (if _%$e217675%_
                                               _%$e217675%_
                                               (gxc#expression-type?
                                                _%g217638217659%_
                                                _%klass217671%_))))
                                        (_%klass217681%_ _%klass217671%_))
                                   (if _%instance?217678%_
                                       (let ((__tmp219458
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object217673%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g217638217659%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object217673%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp219458
                                          _%stx217622%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass217681%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp219459
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass217681%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object217673%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp219459
                                              _%stx217622%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass217681%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp219460
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass217681%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object217673%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp219460
                                                  _%stx217622%_))
                                               (let ((__tmp219461
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self217626%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object217673%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp219461
                                                  _%stx217622%_)))))))
                               _%hd217640217654%_)
                              (_%g217636217646%_ _%g217637217649%_))))
                      (_%g217636217646%_ _%g217637217649%_)))))
          (_%g217635217699%_ _%args217623%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx217288%_)
        (let* ((_%__stx218856218857%_ _%stx217288%_)
               (_%g217293217334%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx218856218857%_)))))
          (let ((_%__kont218858218859%_ (lambda () '#t))
                (_%__kont218860218861%_ (lambda () '#t))
                (_%__kont218862218863%_
                 (lambda (_%g217307217400%_ _%g217308217401%_)
                   (let ((_%rator-type217422217424%_
                          (let ((__tmp219462
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g217308217401%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp219462))))
                     (if _%rator-type217422217424%_
                         (let* ((_%rator-type217426%_
                                 _%rator-type217422217424%_)
                                (_%rator-signature217427217429%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type217426%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type217426%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature217427217429%_
                               (let* ((_%rator-signature217431%_
                                       _%rator-signature217427217429%_)
                                      (_%rator-effect217432217434%_
                                       (if _%rator-signature217431%_
                                           (##direct-structure-ref
                                            _%rator-signature217431%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect217432217434%_
                                     (let ((_%rator-effect217436%_
                                            _%rator-effect217432217434%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect217436%_)
                                               (equal? '(alloc)
                                                       _%rator-effect217436%_))
                                           (let ((__tmp219463
                                                  (let ((__tmp219464
                                                         (lambda (_%g217441217444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g217442217446%_)
                   (cons _%g217441217444%_ _%g217442217446%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp219464
                                                     '()
                                                     _%g217307217400%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp219463))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont218866218867%_ (lambda () '#f)))
            (let ((_%__match218945218946%_
                   (lambda (_%e217309217346%_
                            _%hd217310217349%_
                            _%tl217311217351%_
                            _%e217312217354%_
                            _%hd217313217357%_
                            _%tl217314217359%_
                            _%e217315217362%_
                            _%hd217316217365%_
                            _%tl217317217367%_
                            _%e217318217370%_
                            _%hd217319217373%_
                            _%tl217320217375%_
                            _%__splice218864218865%_
                            _%target217321217378%_
                            _%tl217323217380%_)
                     (letrec ((_%loop217324217383%_
                               (lambda (_%hd217322217386%_
                                        _%rand217328217388%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd217322217386%_))
                                     (let ((_%e217325217390%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd217322217386%_))))
                                       (let ((_%lp-tl217327217395%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e217325217390%_)))
                                             (_%lp-hd217326217393%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e217325217390%_))))
                                         (_%loop217324217383%_
                                          _%lp-tl217327217395%_
                                          (cons _%lp-hd217326217393%_
                                                _%rand217328217388%_))))
                                     (let ((_%rand217329217398%_
                                            (reverse _%rand217328217388%_)))
                                       (_%__kont218862218863%_
                                        _%rand217329217398%_
                                        _%hd217319217373%_))))))
                       (_%loop217324217383%_ _%target217321217378%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx218856218857%_))
                  (let ((_%e217295217477%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx218856218857%_))))
                    (let ((_%tl217297217482%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217295217477%_)))
                          (_%hd217296217480%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217295217477%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd217296217480%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd217296217480%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl217297217482%_))
                                  (let ((_%e217298217485%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl217297217482%_))))
                                    (let ((_%tl217300217490%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217298217485%_)))
                                          (_%hd217299217488%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217298217485%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl217300217490%_))
                                          (_%__kont218858218859%_)
                                          (_%__kont218866218867%_))))
                                  (_%__kont218866218867%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd217296217480%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl217297217482%_))
                                      (let ((_%e217304217462%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl217297217482%_))))
                                        (let ((_%tl217306217467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217304217462%_)))
                                              (_%hd217305217465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217304217462%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl217306217467%_))
                                              (_%__kont218860218861%_)
                                              (_%__kont218866218867%_))))
                                      (_%__kont218866218867%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd217296217480%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl217297217482%_))
                                          (let ((_%e217312217354%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl217297217482%_))))
                                            (let ((_%tl217314217359%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e217312217354%_)))
                                                  (_%hd217313217357%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e217312217354%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd217313217357%_))
                                                  (let ((_%e217315217362%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd217313217357%_))))
                                                    (let ((_%tl217317217367%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e217315217362%_)))
                                                          (_%hd217316217365%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e217315217362%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd217316217365%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd217316217365%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl217317217367%_))
                          (let ((_%e217318217370%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl217317217367%_))))
                            (let ((_%tl217320217375%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217318217370%_)))
                                  (_%hd217319217373%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217318217370%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl217320217375%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl217314217359%_))
                                      (let ((_%__splice218864218865%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl217314217359%_
                                                '0))))
                                        (let ((_%tl217323217380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice218864218865%_
                                                  '1)))
                                              (_%target217321217378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice218864218865%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl217323217380%_))
                                              (_%__match218945218946%_
                                               _%e217295217477%_
                                               _%hd217296217480%_
                                               _%tl217297217482%_
                                               _%e217312217354%_
                                               _%hd217313217357%_
                                               _%tl217314217359%_
                                               _%e217315217362%_
                                               _%hd217316217365%_
                                               _%tl217317217367%_
                                               _%e217318217370%_
                                               _%hd217319217373%_
                                               _%tl217320217375%_
                                               _%__splice218864218865%_
                                               _%target217321217378%_
                                               _%tl217323217380%_)
                                              (_%__kont218866218867%_))))
                                      (_%__kont218866218867%_))
                                  (_%__kont218866218867%_))))
                          (_%__kont218866218867%_))
                      (_%__kont218866218867%_))
                  (_%__kont218866218867%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont218866218867%_))))
                                          (_%__kont218866218867%_))
                                      (_%__kont218866218867%_))))
                          (_%__kont218866218867%_))))
                  (_%__kont218866218867%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx217283%_ _%klass217284%_)
        (let ((_%expr-type217286%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx217283%_))))
          (if _%expr-type217286%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type217286%_ _%klass217284%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx217261%_ _%expr217262%_ _%type217263%_)
        (if (not _%type217263%_)
            '#f
            (let ((_%$e217266%_
                   (eq? (##structure-ref _%type217263%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e217266%_
                  _%$e217266%_
                  (let ((_%expr-type217270%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr217262%_))))
                    (if (not _%expr-type217270%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type217270%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e217274%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type217270%_
                                      'gxc#!abort::t))))
                              (if _%$e217274%_
                                  _%$e217274%_
                                  (let ((_%$e217277%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type217270%_
                                            _%type217263%_))))
                                    (if _%$e217277%_
                                        _%$e217277%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type217263%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type217263%_
                                                   _%expr-type217270%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx217261%_
                                                   _%expr217262%_
                                                   _%expr-type217270%_
                                                   _%type217263%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self217075%_ _%ctx217076%_ _%stx217077%_ _%args217078%_)
        (let* ((_%self217081%_ _%self217075%_)
               (_%klass217091%_
                (let ((__tmp219465
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self217081%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx217077%_ __tmp219465)))
               (_%fields217093%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass217091%_
                           '5
                           '#f
                           '#f))))
               (_%args217099%_
                (map (lambda (_%g217094217096%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx217076%_ _%g217094217096%_)))
                     _%args217078%_))
               (_%inline-make-object217101%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self217081%_
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
                           _%self217081%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields217093%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass217104%_ _%klass217091%_)
               (_%$e217118%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass217104%_ '6 '#f '#f))))
          (if _%$e217118%_
              ((lambda (_%ctor217121%_)
                 (let ((_%$obj217123%_
                        (let ((__tmp219466
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp219466)))
                       (_%ctor-impl217124%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass217104%_
                           _%ctor217121%_))))
                   (let ((__tmp219467
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj217123%_ '())
                                                  (cons _%inline-make-object217101%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl217124%_
                                                            (let ((__tmp219468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl217124%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj217123%_ '()))
                                             _%args217099%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp219468
                       _%stx217077%_
                       _%ctx217076%_))
                    (let ((_%$ctor217126%_
                           (let ((__tmp219469
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp219469))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor217126%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self217081%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj217123%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor217121%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor217126%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor217126%_ '()))
                              (cons (cons '%#ref (cons _%$obj217123%_ '()))
                                    _%args217099%_)))
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
                             _%self217081%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor217121%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj217123%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp219467 _%stx217077%_))))
               _%$e217118%_)
              (let ((_%$e217128%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass217104%_
                        '10
                        '#f
                        '#f))))
                (if _%$e217128%_
                    ((lambda (_%metaclass217131%_)
                       (let* ((_%$obj217133%_
                               (let ((__tmp219470
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp219470)))
                              (_%metakons217135%_
                               (let ((__tmp219471
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx217077%_
                                         _%metaclass217131%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp219471
                                  'instance-init!)))
                              (__tmp219472
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj217133%_
                                                             '())
                                                       (cons _%inline-make-object217101%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons217135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp219473
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons217135%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self217081%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj217133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args217099%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp219473
                            _%stx217077%_
                            _%ctx217076%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self217081%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj217133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args217099%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj217133%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp219472 _%stx217077%_)))
                     _%$e217128%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass217104%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp219474
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args217099%_))))
                              (declare (not safe))
                              (##fx= __tmp219474 _%fields217093%_))
                            (let ((__tmp219475
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self217081%_
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
                                              _%self217081%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args217099%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp219475
                               _%stx217077%_))
                            (let ((__tmp219477
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self217081%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp219476
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass217104%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx217077%_
                               __tmp219477
                               __tmp219476)))
                        (let ((_%$obj217140%_
                               (let ((__tmp219478
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp219478))))
                          (let _%lp217142%_ ((_%rest217144%_ _%args217099%_)
                                             (_%initializers217145%_ '()))
                            (let* ((_%__stx218948218949%_ _%rest217144%_)
                                   (_%g217149217170%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx218948218949%_)))))
                              (let ((_%__kont218950218951%_
                                     (lambda (_%g217151217224%_
                                              _%g217152217225%_
                                              _%g217153217226%_)
                                       (let* ((_%slot217253%_
                                               (let ((__tmp219479
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g217153217226%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp219479)))
                                              (_%off217255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass217104%_
                                                  _%slot217253%_))))
                                         (if _%off217255%_
                                             (_%lp217142%_
                                              _%g217151217224%_
                                              (cons (cons _%off217255%_
                                                          _%g217152217225%_)
                                                    _%initializers217145%_))
                                             (let ((__tmp219480
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self217081%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx217077%_
                                                __tmp219480
                                                _%slot217253%_))))))
                                    (_%__kont218952218953%_
                                     (lambda ()
                                       (let ((__tmp219481
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj217140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object217101%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp219484
                                     (cons (cons '%#ref
                                                 (cons _%$obj217140%_ '()))
                                           '()))
                                    (__tmp219482
                                     (let ((__tmp219483
                                            (lambda (_%i217184%_ _%r217185%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self217081%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i217184%_) '()))
                              (cons (cons '%#ref (cons _%$obj217140%_ '()))
                                    (cons (cdr _%i217184%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r217185%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp219483
                                        '()
                                        _%initializers217145%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp219484 __tmp219482)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp219481
                                          _%stx217077%_))))
                                    (_%__kont218954218955%_
                                     (lambda ()
                                       (let ((__tmp219485
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj217140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object217101%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj217140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args217099%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj217140%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp219485
                                          _%stx217077%_)))))
                                (let* ((_%g217147217187%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx218948218949%_))
                                              (_%__kont218952218953%_)
                                              (_%__kont218954218955%_))))
                                       (_%__match218985218986%_
                                        (lambda (_%e217154217192%_
                                                 _%hd217155217195%_
                                                 _%tl217156217197%_
                                                 _%e217157217200%_
                                                 _%hd217158217203%_
                                                 _%tl217159217205%_
                                                 _%e217160217208%_
                                                 _%hd217161217211%_
                                                 _%tl217162217213%_
                                                 _%e217163217216%_
                                                 _%hd217164217219%_
                                                 _%tl217165217221%_)
                                          (let ((_%g217151217224%_
                                                 _%tl217165217221%_)
                                                (_%g217152217225%_
                                                 _%hd217164217219%_)
                                                (_%g217153217226%_
                                                 _%hd217161217211%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g217153217226%_))
                                                (_%__kont218950218951%_
                                                 _%g217151217224%_
                                                 _%g217152217225%_
                                                 _%g217153217226%_)
                                                (_%__kont218954218955%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx218948218949%_))
                                      (let ((_%e217154217192%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx218948218949%_))))
                                        (let ((_%tl217156217197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217154217192%_)))
                                              (_%hd217155217195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217154217192%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd217155217195%_))
                                              (let ((_%e217157217200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd217155217195%_))))
                                                (let ((_%tl217159217205%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e217157217200%_)))
                                                      (_%hd217158217203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e217157217200%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd217158217203%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd217158217203%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl217159217205%_))
                      (let ((_%e217160217208%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl217159217205%_))))
                        (let ((_%tl217162217213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217160217208%_)))
                              (_%hd217161217211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217160217208%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl217162217213%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl217156217197%_))
                                  (let ((_%e217163217216%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl217156217197%_))))
                                    (let ((_%tl217165217221%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217163217216%_)))
                                          (_%hd217164217219%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217163217216%_))))
                                      (_%__match218985218986%_
                                       _%e217154217192%_
                                       _%hd217155217195%_
                                       _%tl217156217197%_
                                       _%e217157217200%_
                                       _%hd217158217203%_
                                       _%tl217159217205%_
                                       _%e217160217208%_
                                       _%hd217161217211%_
                                       _%tl217162217213%_
                                       _%e217163217216%_
                                       _%hd217164217219%_
                                       _%tl217165217221%_)))
                                  (_%__kont218954218955%_))
                              (_%__kont218954218955%_))))
                      (_%__kont218954218955%_))
                  (_%__kont218954218955%_))
              (_%__kont218954218955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont218954218955%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g217147217187%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self216858%_ _%ctx216859%_ _%stx216860%_ _%args216861%_)
        (let* ((_%self216864%_ _%self216858%_)
               (_%arguments-ok?216874%_
                (let ((__method219429
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self216864%_ 'check-arguments))))
                  (if __method219429
                      (let ()
                        (declare (not safe))
                        (__method219429
                         _%self216864%_
                         _%ctx216859%_
                         _%stx216860%_
                         _%args216861%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self216864%_
                                 'check-arguments))
                        '#!void))))
               (_%g216876216886%_
                (lambda (_%g216877216883%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216877216883%_))))
               (_%g216875216950%_
                (lambda (_%g216877216889%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216877216889%_))
                      (let ((_%e216879216891%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g216877216889%_))))
                        (let ((_%hd216880216894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216879216891%_)))
                              (_%tl216881216896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216879216891%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216881216896%_))
                              ((lambda (_%g216878216899%_)
                                 (let* ((_%klass216912%_
                                         (let ((__tmp219486
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self216864%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx216860%_
                                            __tmp219486)))
                                        (_%field216914%_
                                         (let ((__tmp219487
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self216864%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass216912%_
                                            __tmp219487)))
                                        (_%object216916%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx216859%_
                                            _%g216878216899%_)))
                                        (_%klass216919%_ _%klass216912%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass216919%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp219488
                                              (cons (if (or _%arguments-ok?216874%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self216864%_
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
                                 _%self216864%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field216914%_ '()))
                        (cons _%object216916%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp219488
                                          _%stx216860%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass216919%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp219489
                                                  (cons (if (or _%arguments-ok?216874%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self216864%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self216864%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field216914%_ '()))
                            (cons _%object216916%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp219489
                                              _%stx216860%_))
                                           (let ((_%$e216938%_
                                                  (let ((__tmp219490
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self216864%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass216919%_
                                                     __tmp219490))))
                                             (if _%$e216938%_
                                                 ((lambda (_%klass216941%_)
                                                    (let ((__tmp219491
                                                           (cons (if (or _%arguments-ok?216874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self216864%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self216864%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field216914%_ '()))
                                     (cons _%object216916%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp219491 _%stx216860%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e216938%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self216864%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp219492
                                                            (let ((_%$obj216947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp219493
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp219493))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj216947%_ '())
                                              (cons _%object216916%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass216919%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj216947%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self216864%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field216914%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj216947%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?216874%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj216947%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self216864%_
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
                                                             _%self216864%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj216947%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self216864%_
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
               (gxc#xform-wrap-source __tmp219492 _%stx216860%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp219494
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object216916%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self216864%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp219494 _%stx216860%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd216880216894%_)
                              (_%g216876216886%_ _%g216877216889%_))))
                      (_%g216876216886%_ _%g216877216889%_)))))
          (_%g216875216950%_ _%args216861%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass218716 __method-table218717)
        (let ((__check-arguments218718
               (let ((__tmp219495
                      (lambda ()
                        (let ((__method218719
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table218717
                                  'check-arguments
                                  '#f))))
                          (if __method218719
                              __method218719
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp219495)))
              (__slot218720
               (let ((__slot218721
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass218716 'slot))))
                 (if __slot218721
                     __slot218721
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self216858%_ _%ctx216859%_ _%stx216860%_ _%args216861%_)
            (let* ((_%self216864%_ _%self216858%_)
                   (_%arguments-ok?216874%_
                    ((force __check-arguments218718)
                     _%self216864%_
                     _%ctx216859%_
                     _%stx216860%_
                     _%args216861%_))
                   (_%g216876216886%_
                    (lambda (_%g216877216883%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g216877216883%_))))
                   (_%g216875216950%_
                    (lambda (_%g216877216889%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g216877216889%_))
                          (let ((_%e216879216891%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g216877216889%_))))
                            (let ((_%hd216880216894%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216879216891%_)))
                                  (_%tl216881216896%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216879216891%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216881216896%_))
                                  ((lambda (_%g216878216899%_)
                                     (let* ((_%klass216912%_
                                             (let ((__tmp219496
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self216864%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx216860%_
                                                __tmp219496)))
                                            (_%field216914%_
                                             (let ((__tmp219497
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self216864%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass216912%_
                                                __tmp219497)))
                                            (_%object216916%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx216859%_
                                                _%g216878216899%_)))
                                            (_%klass216919%_ _%klass216912%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass216919%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp219498
                                                  (cons (if (or _%arguments-ok?216874%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self216864%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self216864%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field216914%_ '()))
                            (cons _%object216916%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp219498
                                              _%stx216860%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass216919%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp219499
                                                      (cons (if (or _%arguments-ok?216874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self216864%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self216864%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field216914%_ '()))
                                (cons _%object216916%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp219499
                                                  _%stx216860%_))
                                               (let ((_%$e216938%_
                                                      (let ((__tmp219500
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self216864%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass216919%_ __tmp219500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e216938%_
                                                     ((lambda (_%klass216941%_)
                                                        (let ((__tmp219501
                                                               (cons (if (or _%arguments-ok?216874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self216864%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self216864%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field216914%_ '()))
                                         (cons _%object216916%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp219501 _%stx216860%_)))
              _%$e216938%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self216864%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp219502
                                                                (let ((_%$obj216947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp219503
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp219503))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj216947%_ '())
                                                  (cons _%object216916%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass216919%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj216947%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self216864%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field216914%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj216947%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?216874%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj216947%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self216864%_
                               __slot218720
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
                        (##unchecked-structure-ref _%self216864%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj216947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self216864%_
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
                   (gxc#xform-wrap-source __tmp219502 _%stx216860%_))
                 (let ((__tmp219504
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object216916%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self216864%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp219504 _%stx216860%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd216880216894%_)
                                  (_%g216876216886%_ _%g216877216889%_))))
                          (_%g216876216886%_ _%g216877216889%_)))))
              (_%g216875216950%_ _%args216861%_))))))
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
      (lambda (_%self216622%_ _%ctx216623%_ _%stx216624%_ _%args216625%_)
        (let* ((_%self216628%_ _%self216622%_)
               (_%arguments-ok?216638%_
                (let ((__method219430
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self216628%_ 'check-arguments))))
                  (if __method219430
                      (let ()
                        (declare (not safe))
                        (__method219430
                         _%self216628%_
                         _%ctx216623%_
                         _%stx216624%_
                         _%args216625%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self216628%_
                                 'check-arguments))
                        '#!void))))
               (_%g216640216654%_
                (lambda (_%g216641216651%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216641216651%_))))
               (_%g216639216733%_
                (lambda (_%g216641216657%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216641216657%_))
                      (let ((_%e216644216659%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g216641216657%_))))
                        (let ((_%hd216645216662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216644216659%_)))
                              (_%tl216646216664%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216644216659%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216646216664%_))
                              (let ((_%e216647216667%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216646216664%_))))
                                (let ((_%hd216648216670%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216647216667%_)))
                                      (_%tl216649216672%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216647216667%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216649216672%_))
                                      ((lambda (_%g216642216675%_
                                                _%g216643216676%_)
                                         (let* ((_%klass216692%_
                                                 (let ((__tmp219505
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self216628%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx216624%_
                                                    __tmp219505)))
                                                (_%field216694%_
                                                 (let ((__tmp219506
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self216628%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass216692%_
                                                    __tmp219506)))
                                                (_%object216696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx216623%_
                                                    _%g216643216676%_)))
                                                (_%value216698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx216623%_
                                                    _%g216642216675%_)))
                                                (_%klass216701%_
                                                 _%klass216692%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass216701%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp219507
                                                      (cons (if (or _%arguments-ok?216638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self216628%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self216628%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field216694%_ '()))
                                (cons _%object216696%_
                                      (cons _%value216698%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp219507
                                                  _%stx216624%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass216701%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp219508
                                                          (cons (if (or _%arguments-ok?216638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self216628%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self216628%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field216694%_ '()))
                                    (cons _%object216696%_
                                          (cons _%value216698%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp219508
                                                      _%stx216624%_))
                                                   (let ((_%$e216721%_
                                                          (let ((__tmp219509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self216628%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass216701%_
                     __tmp219509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e216721%_
                                                         ((lambda (_%klass216724%_)
                                                            (let ((__tmp219510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?216638%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self216628%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self216628%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field216694%_ '()))
                                             (cons _%object216696%_
                                                   (cons _%value216698%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp219510 _%stx216624%_)))
                  _%$e216721%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self216628%_ '4 '#f '#f))
                     (let ((__tmp219511
                            (let ((_%$obj216730%_
                                   (let ((__tmp219512
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp219512))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj216730%_ '())
                                                      (cons _%object216696%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass216701%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj216730%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self216628%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field216694%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj216730%_
                                                              '()))
                                                  (cons _%value216698%_
                                                        '())))))
                          (cons (if _%arguments-ok?216638%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj216730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self216628%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value216698%_ '())))))
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
                             _%self216628%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj216730%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self216628%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value216698%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp219511 _%stx216624%_))
                     (let ((__tmp219513
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object216696%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self216628%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value216698%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp219513
                        _%stx216624%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd216648216670%_
                                       _%hd216645216662%_)
                                      (_%g216640216654%_ _%g216641216657%_))))
                              (_%g216640216654%_ _%g216641216657%_))))
                      (_%g216640216654%_ _%g216641216657%_)))))
          (_%g216639216733%_ _%args216625%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass218722 __method-table218723)
        (let ((__check-arguments218724
               (let ((__tmp219514
                      (lambda ()
                        (let ((__method218725
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table218723
                                  'check-arguments
                                  '#f))))
                          (if __method218725
                              __method218725
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp219514))))
          (lambda (_%self216622%_ _%ctx216623%_ _%stx216624%_ _%args216625%_)
            (let* ((_%self216628%_ _%self216622%_)
                   (_%arguments-ok?216638%_
                    ((force __check-arguments218724)
                     _%self216628%_
                     _%ctx216623%_
                     _%stx216624%_
                     _%args216625%_))
                   (_%g216640216654%_
                    (lambda (_%g216641216651%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g216641216651%_))))
                   (_%g216639216733%_
                    (lambda (_%g216641216657%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g216641216657%_))
                          (let ((_%e216644216659%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g216641216657%_))))
                            (let ((_%hd216645216662%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216644216659%_)))
                                  (_%tl216646216664%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216644216659%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216646216664%_))
                                  (let ((_%e216647216667%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216646216664%_))))
                                    (let ((_%hd216648216670%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216647216667%_)))
                                          (_%tl216649216672%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216647216667%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216649216672%_))
                                          ((lambda (_%g216642216675%_
                                                    _%g216643216676%_)
                                             (let* ((_%klass216692%_
                                                     (let ((__tmp219515
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self216628%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx216624%_
                                                        __tmp219515)))
                                                    (_%field216694%_
                                                     (let ((__tmp219516
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self216628%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass216692%_
                                                        __tmp219516)))
                                                    (_%object216696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx216623%_
                                                        _%g216643216676%_)))
                                                    (_%value216698%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx216623%_
                                                        _%g216642216675%_)))
                                                    (_%klass216701%_
                                                     _%klass216692%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass216701%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp219517
                                                          (cons (if (or _%arguments-ok?216638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self216628%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self216628%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field216694%_ '()))
                                    (cons _%object216696%_
                                          (cons _%value216698%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp219517
                                                      _%stx216624%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass216701%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp219518
                                                              (cons (if (or _%arguments-ok?216638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self216628%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self216628%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field216694%_ '()))
                                        (cons _%object216696%_
                                              (cons _%value216698%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp219518 _%stx216624%_))
               (let ((_%$e216721%_
                      (let ((__tmp219519
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self216628%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass216701%_
                         __tmp219519))))
                 (if _%$e216721%_
                     ((lambda (_%klass216724%_)
                        (let ((__tmp219520
                               (cons (if (or _%arguments-ok?216638%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self216628%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self216628%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field216694%_
                                                             '()))
                                                 (cons _%object216696%_
                                                       (cons _%value216698%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp219520 _%stx216624%_)))
                      _%$e216721%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self216628%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp219521
                                (let ((_%$obj216730%_
                                       (let ((__tmp219522
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp219522))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj216730%_
                                                                '())
                                                          (cons _%object216696%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass216701%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj216730%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self216628%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field216694%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj216730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value216698%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?216638%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj216730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self216628%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value216698%_ '())))))
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
                                 _%self216628%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj216730%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self216628%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value216698%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp219521 _%stx216624%_))
                         (let ((__tmp219523
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object216696%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self216628%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value216698%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp219523
                            _%stx216624%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd216648216670%_
                                           _%hd216645216662%_)
                                          (_%g216640216654%_
                                           _%g216641216657%_))))
                                  (_%g216640216654%_ _%g216641216657%_))))
                          (_%g216640216654%_ _%g216641216657%_)))))
              (_%g216639216733%_ _%args216625%_))))))
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
      (lambda (_%self216438%_ _%ctx216439%_ _%stx216440%_ _%args216441%_)
        (let* ((_%self216444%_ _%self216438%_)
               (_%self216453216463%_ _%self216444%_)
               (_%E216455216466%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self216453216463%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K216456216476%_
                (lambda (_%inline216469%_ _%dispatch216470%_ _%arity216471%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self216444%_
                         _%args216441%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx216440%_
                         _%arity216471%_)))
                  (if _%inline216469%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp219524 (_%inline216469%_ _%stx216440%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp219524
                           _%stx216440%_
                           _%ctx216439%_)))
                      (if (and _%dispatch216470%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch216470%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch216470%_))
                            (let ((__tmp219525
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch216470%_
                                                           '()))
                                               _%args216441%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp219525
                               _%stx216440%_
                               _%ctx216439%_)))
                          (gxc#!procedure::optimize-call
                           _%self216444%_
                           _%ctx216439%_
                           _%stx216440%_
                           _%args216441%_)))))
               (_%e216457216479%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self216453216463%_ '1 '#f '#f)))
               (_%e216458216482%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self216453216463%_ '2 '#f '#f)))
               (_%e216459216485%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self216453216463%_ '3 '#f '#f)))
               (_%arity216488%_ _%e216459216485%_)
               (_%e216460216490%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self216453216463%_ '4 '#f '#f)))
               (_%dispatch216493%_ _%e216460216490%_)
               (_%e216461216495%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self216453216463%_ '5 '#f '#f)))
               (_%inline216498%_ _%e216461216495%_))
          (_%K216456216476%_
           _%inline216498%_
           _%dispatch216493%_
           _%arity216488%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self216290%_ _%ctx216291%_ _%stx216292%_ _%args216293%_)
        (let* ((_%self216296%_ _%self216290%_)
               (_%$e216310%_
                (let ((__tmp219527
                       (lambda (_%g216305216307%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g216305216307%_
                            _%args216293%_))))
                      (__tmp219526
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self216296%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp219527 __tmp219526))))
          (if _%$e216310%_
              ((lambda (_%clause216313%_)
                 (let ((__method219431
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause216313%_ 'optimize-call))))
                   (if __method219431
                       (let ()
                         (declare (not safe))
                         (__method219431
                          _%clause216313%_
                          _%ctx216291%_
                          _%stx216292%_
                          _%args216293%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause216313%_
                                  'optimize-call))
                         '#!void))))
               _%$e216310%_)
              (let ((__tmp219528
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self216296%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx216292%_
                 __tmp219528))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self216031%_ _%ctx216032%_ _%stx216033%_ _%args216034%_)
        (let* ((_%self216037%_ _%self216031%_)
               (_%self216046216055%_ _%self216037%_)
               (_%E216048216058%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self216046216055%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K216049216149%_
                (lambda (_%dispatch216061%_ _%table216062%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch216061%_))
                      (let* ((_%g216063216073%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch216061%_)))
                             (_%else216065216081%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch216061%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx216032%_
                                   _%stx216033%_))))
                             (_%K216067216130%_
                              (lambda (_%main216084%_ _%keys216085%_)
                                (let ((_g219529_
                                       (gxc#!kw-lambda-split-args
                                        _%stx216033%_
                                        _%args216034%_)))
                                  (begin
                                    (let ((_g219530_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g219529_)
                                                 (##values-length _g219529_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g219530_ 2)))
                                          (error "Context expects 2 values"
                                                 _g219530_)))
                                    (let ((_%pargs216087%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g219529_ 0)))
                                          (_%kwargs216088%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g219529_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main216084%_))
                                        (if _%table216062%_
                                            (let ((_%xargs216096%_
                                                   (map (lambda (_%key216090%_)
                                                          (let ((_%$e216092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key216090%_ _%kwargs216088%_))))
                    (if _%$e216092%_ _%$e216092%_ '(%#ref absent-value))))
                _%keys216085%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw216098%_)
                                                 (if (memq (car _%kw216098%_)
                                                           _%keys216085%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx216033%_
                                                        _%keys216085%_
                                                        _%kw216098%_))))
                                               _%kwargs216088%_)
                                              (let ((__tmp219531
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main216084%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs216087%_
                                  _%xargs216096%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp219531
                                                 _%stx216033%_
                                                 _%ctx216032%_)))
                                            (let* ((_%kwt216100%_
                                                    (let ((__tmp219532
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp219532)))
                                                   (_%kwvars216104%_
                                                    (map (lambda (_%_216102%_)
                                                           (let ((__tmp219533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp219533)))
                 _%kwargs216088%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind216109%_
                                                    (map (lambda (_%kw216106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar216107%_)
                   (cons (cons _%kwvar216107%_ '())
                         (cons (cdr _%kw216106%_) '())))
                 _%kwargs216088%_
                 _%kwvars216104%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset216114%_
                                                    (map (lambda (_%kw216111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar216112%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt216100%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw216111%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar216112%_
                                                             '()))
                                                 '()))))))
                 _%kwargs216088%_
                 _%kwvars216104%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs216119%_
                                                    (map (lambda (_%kw216116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar216117%_)
                   (cons (car _%kw216116%_)
                         (cons '%#ref (cons _%kwvar216117%_ '()))))
                 _%kwargs216088%_
                 _%kwvars216104%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs216127%_
                                                    (map (lambda (_%key216121%_)
                                                           (let ((_%$e216123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key216121%_ _%xkwargs216119%_))))
                     (if _%$e216123%_ _%$e216123%_ '(%#ref absent-value))))
                 _%keys216085%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp219534
                                                    (cons '%#let-values
                                                          (cons _%kwbind216109%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt216100%_ '())
                                                      (cons (let ((__tmp219535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs216088%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp219535 _%stx216033%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp219536
                                                             (cons (let ((__tmp219537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main216084%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt216100%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs216087%_
                                                       _%xargs216127%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp219537 _%stx216033%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp219536 _%kwset216114%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp219534
                                               _%stx216033%_
                                               _%ctx216032%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g216063216073%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e216068216133%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g216063216073%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e216069216136%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g216063216073%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e216070216139%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g216063216073%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys216142%_ _%e216070216139%_)
                                   (_%e216071216144%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g216063216073%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main216147%_ _%e216071216144%_))
                              (_%K216067216130%_
                               _%main216147%_
                               _%keys216142%_))
                            (_%else216065216081%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx216032%_ _%stx216033%_)))))
               (_%e216050216152%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self216046216055%_ '1 '#f '#f)))
               (_%e216051216155%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self216046216055%_ '2 '#f '#f)))
               (_%e216052216158%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self216046216055%_ '3 '#f '#f)))
               (_%table216161%_ _%e216052216158%_)
               (_%e216053216163%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self216046216055%_ '4 '#f '#f)))
               (_%dispatch216166%_ _%e216053216163%_))
          (_%K216049216149%_ _%dispatch216166%_ _%table216161%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx215644%_ _%args215645%_)
        (let _%lp215647%_ ((_%rest215649%_ _%args215645%_)
                           (_%pargs215650%_ '())
                           (_%kwargs215651%_ '()))
          (let* ((_%__stx218990218991%_ _%rest215649%_)
                 (_%g215657215709%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx218990218991%_)))))
            (let ((_%__kont218992218993%_
                   (lambda (_%g215659215888%_ _%g215660215889%_)
                     (_%lp215647%_
                      _%g215659215888%_
                      (cons _%g215660215889%_ _%pargs215650%_)
                      _%kwargs215651%_)))
                  (_%__kont218994218995%_
                   (lambda (_%g215674215834%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1
                                cons
                                _%g215674215834%_
                                _%pargs215650%_))
                             (reverse _%kwargs215651%_))))
                  (_%__kont218996218997%_
                   (lambda (_%g215685215781%_
                            _%g215686215782%_
                            _%g215687215783%_)
                     (let ((_%kw215800%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g215687215783%_))))
                       (if (assq _%kw215800%_ _%kwargs215651%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx215644%_
                              _%kw215800%_))
                           (_%lp215647%_
                            _%g215685215781%_
                            _%pargs215650%_
                            (cons (cons _%kw215800%_ _%g215686215782%_)
                                  _%kwargs215651%_))))))
                  (_%__kont218998218999%_
                   (lambda (_%g215700215729%_ _%g215701215730%_)
                     (_%lp215647%_
                      _%g215700215729%_
                      (cons _%g215701215730%_ _%pargs215650%_)
                      _%kwargs215651%_)))
                  (_%__kont219000219001%_
                   (lambda ()
                     (values (reverse _%pargs215650%_)
                             (reverse _%kwargs215651%_)))))
              (let ((_%__match219097219098%_
                     (lambda (_%e215688215749%_
                              _%hd215689215752%_
                              _%tl215690215754%_
                              _%e215691215757%_
                              _%hd215692215760%_
                              _%tl215693215762%_
                              _%e215694215765%_
                              _%hd215695215768%_
                              _%tl215696215770%_
                              _%e215697215773%_
                              _%hd215698215776%_
                              _%tl215699215778%_)
                       (let ((_%g215685215781%_ _%tl215699215778%_)
                             (_%g215686215782%_ _%hd215698215776%_)
                             (_%g215687215783%_ _%hd215695215768%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g215687215783%_))
                             (_%__kont218996218997%_
                              _%g215685215781%_
                              _%g215686215782%_
                              _%g215687215783%_)
                             (_%__kont218998218999%_
                              _%tl215690215754%_
                              _%hd215689215752%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx218990218991%_))
                    (let ((_%e215661215853%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx218990218991%_))))
                      (let ((_%tl215663215858%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e215661215853%_)))
                            (_%hd215662215856%_
                             (let ()
                               (declare (not safe))
                               (##car _%e215661215853%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd215662215856%_))
                            (let ((_%e215664215861%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd215662215856%_))))
                              (let ((_%tl215666215866%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e215664215861%_)))
                                    (_%hd215665215864%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e215664215861%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd215665215864%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd215665215864%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl215666215866%_))
                                            (let ((_%e215667215869%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl215666215866%_))))
                                              (let ((_%tl215669215874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e215667215869%_)))
                                                    (_%hd215668215872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e215667215869%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd215668215872%_))
                                                    (let ((_%e215670215877%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd215668215872%_))))
                                                      (if (equal? _%e215670215877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl215669215874%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl215663215858%_))
                          (let ((_%e215671215880%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl215663215858%_))))
                            (let ((_%tl215673215885%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e215671215880%_)))
                                  (_%hd215672215883%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e215671215880%_))))
                              (_%__kont218992218993%_
                               _%tl215673215885%_
                               _%hd215672215883%_)))
                          (_%__kont218998218999%_
                           _%tl215663215858%_
                           _%hd215662215856%_))
                      (_%__kont218998218999%_
                       _%tl215663215858%_
                       _%hd215662215856%_))
                  (if (equal? _%e215670215877%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl215669215874%_))
                          (_%__kont218994218995%_ _%tl215663215858%_)
                          (_%__kont218998218999%_
                           _%tl215663215858%_
                           _%hd215662215856%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl215669215874%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215663215858%_))
                              (let ((_%e215697215773%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl215663215858%_))))
                                (let ((_%tl215699215778%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215697215773%_)))
                                      (_%hd215698215776%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215697215773%_))))
                                  (_%__match219097219098%_
                                   _%e215661215853%_
                                   _%hd215662215856%_
                                   _%tl215663215858%_
                                   _%e215664215861%_
                                   _%hd215665215864%_
                                   _%tl215666215866%_
                                   _%e215667215869%_
                                   _%hd215668215872%_
                                   _%tl215669215874%_
                                   _%e215697215773%_
                                   _%hd215698215776%_
                                   _%tl215699215778%_)))
                              (_%__kont218998218999%_
                               _%tl215663215858%_
                               _%hd215662215856%_))
                          (_%__kont218998218999%_
                           _%tl215663215858%_
                           _%hd215662215856%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl215669215874%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl215663215858%_))
                                                            (let ((_%e215697215773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl215663215858%_))))
                      (let ((_%tl215699215778%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e215697215773%_)))
                            (_%hd215698215776%_
                             (let ()
                               (declare (not safe))
                               (##car _%e215697215773%_))))
                        (_%__match219097219098%_
                         _%e215661215853%_
                         _%hd215662215856%_
                         _%tl215663215858%_
                         _%e215664215861%_
                         _%hd215665215864%_
                         _%tl215666215866%_
                         _%e215667215869%_
                         _%hd215668215872%_
                         _%tl215669215874%_
                         _%e215697215773%_
                         _%hd215698215776%_
                         _%tl215699215778%_)))
                    (_%__kont218998218999%_
                     _%tl215663215858%_
                     _%hd215662215856%_))
                (_%__kont218998218999%_
                 _%tl215663215858%_
                 _%hd215662215856%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont218998218999%_
                                             _%tl215663215858%_
                                             _%hd215662215856%_))
                                        (_%__kont218998218999%_
                                         _%tl215663215858%_
                                         _%hd215662215856%_))
                                    (_%__kont218998218999%_
                                     _%tl215663215858%_
                                     _%hd215662215856%_))))
                            (_%__kont218998218999%_
                             _%tl215663215858%_
                             _%hd215662215856%_))))
                    (_%__kont219000219001%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self215628%_ _%ctx215629%_ _%stx215630%_ _%args215631%_)
        (let ((_%self215634%_ _%self215628%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx215629%_ _%stx215630%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self215318%_ _%stx215319%_)
        (let* ((_%__stx219106219107%_ _%stx215319%_)
               (_%g215322215362%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx219106219107%_)))))
          (let ((_%__kont219108219109%_
                 (lambda (_%g215324215466%_ _%g215325215467%_)
                   (let ((_%$e215494%_
                          (member 'return:
                                  (let ((__tmp219538
                                         (lambda (_%g215486215489%_
                                                  _%g215487215491%_)
                                           (cons _%g215486215489%_
                                                 _%g215487215491%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp219538
                                     '()
                                     _%g215325215467%_))
                                  gx#stx-eq?)))
                     (if _%$e215494%_
                         ((lambda (_%tail215497%_)
                            (let ((_%type215499%_
                                   (let ((__tmp219539
                                          (let ((__tmp219540
                                                 (cadr _%tail215497%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp219540))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx215319%_
                                      __tmp219539))))
                              (gxc#check-return-type!
                               _%stx215319%_
                               _%g215324215466%_
                               _%type215499%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self215318%_
                                 _%g215324215466%_))))
                          _%$e215494%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self215318%_
                            _%g215324215466%_))))))
                (_%__kont219112219113%_
                 (lambda (_%g215347215391%_ _%g215348215392%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self215318%_ _%g215347215391%_)))))
            (let ((_%__match219143219144%_
                   (lambda (_%e215326215412%_
                            _%hd215327215415%_
                            _%tl215328215417%_
                            _%e215329215420%_
                            _%hd215330215423%_
                            _%tl215331215425%_
                            _%e215332215428%_
                            _%hd215333215431%_
                            _%tl215334215433%_
                            _%__splice219110219111%_
                            _%target215335215436%_
                            _%tl215337215438%_)
                     (letrec ((_%loop215338215441%_
                               (lambda (_%hd215336215444%_
                                        _%signature215342215446%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd215336215444%_))
                                     (let ((_%e215339215448%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd215336215444%_))))
                                       (let ((_%lp-tl215341215453%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e215339215448%_)))
                                             (_%lp-hd215340215451%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e215339215448%_))))
                                         (_%loop215338215441%_
                                          _%lp-tl215341215453%_
                                          (cons _%lp-hd215340215451%_
                                                _%signature215342215446%_))))
                                     (let ((_%signature215343215456%_
                                            (reverse _%signature215342215446%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl215331215425%_))
                                           (let ((_%e215344215458%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl215331215425%_))))
                                             (let ((_%tl215346215463%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e215344215458%_)))
                                                   (_%hd215345215461%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e215344215458%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl215346215463%_))
                                                   (_%__kont219108219109%_
                                                    _%hd215345215461%_
                                                    _%signature215343215456%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g215322215362%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g215322215362%_))))))))
                       (_%loop215338215441%_ _%target215335215436%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx219106219107%_))
                  (let ((_%e215326215412%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx219106219107%_))))
                    (let ((_%tl215328215417%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e215326215412%_)))
                          (_%hd215327215415%_
                           (let ()
                             (declare (not safe))
                             (##car _%e215326215412%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl215328215417%_))
                          (let ((_%e215329215420%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl215328215417%_))))
                            (let ((_%tl215331215425%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e215329215420%_)))
                                  (_%hd215330215423%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e215329215420%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd215330215423%_))
                                  (let ((_%e215332215428%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd215330215423%_))))
                                    (let ((_%tl215334215433%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e215332215428%_)))
                                          (_%hd215333215431%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e215332215428%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd215333215431%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd215333215431%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl215334215433%_))
                                                  (let ((_%__splice219110219111%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl215334215433%_
                                                            '0))))
                                                    (let ((_%tl215337215438%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice219110219111%_
                                                              '1)))
                                                          (_%target215335215436%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice219110219111%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl215337215438%_))
                                                          (_%__match219143219144%_
                                                           _%e215326215412%_
                                                           _%hd215327215415%_
                                                           _%tl215328215417%_
                                                           _%e215329215420%_
                                                           _%hd215330215423%_
                                                           _%tl215331215425%_
                                                           _%e215332215428%_
                                                           _%hd215333215431%_
                                                           _%tl215334215433%_
                                                           _%__splice219110219111%_
                                                           _%target215335215436%_
                                                           _%tl215337215438%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl215331215425%_))
                      (let ((_%e215355215383%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl215331215425%_))))
                        (let ((_%tl215357215388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215355215383%_)))
                              (_%hd215356215386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215355215383%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl215357215388%_))
                              (_%__kont219112219113%_
                               _%hd215356215386%_
                               _%hd215330215423%_)
                              (let ()
                                (declare (not safe))
                                (_%g215322215362%_)))))
                      (let () (declare (not safe)) (_%g215322215362%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl215331215425%_))
                                                      (let ((_%e215355215383%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl215331215425%_))))
                (let ((_%tl215357215388%_
                       (let () (declare (not safe)) (##cdr _%e215355215383%_)))
                      (_%hd215356215386%_
                       (let ()
                         (declare (not safe))
                         (##car _%e215355215383%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl215357215388%_))
                      (_%__kont219112219113%_
                       _%hd215356215386%_
                       _%hd215330215423%_)
                      (let () (declare (not safe)) (_%g215322215362%_)))))
              (let () (declare (not safe)) (_%g215322215362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl215331215425%_))
                                                  (let ((_%e215355215383%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl215331215425%_))))
                                                    (let ((_%tl215357215388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e215355215383%_)))
                                                          (_%hd215356215386%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e215355215383%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl215357215388%_))
                                                          (_%__kont219112219113%_
                                                           _%hd215356215386%_
                                                           _%hd215330215423%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g215322215362%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g215322215362%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215331215425%_))
                                              (let ((_%e215355215383%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl215331215425%_))))
                                                (let ((_%tl215357215388%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215355215383%_)))
                                                      (_%hd215356215386%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215355215383%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl215357215388%_))
                                                      (_%__kont219112219113%_
                                                       _%hd215356215386%_
                                                       _%hd215330215423%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g215322215362%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g215322215362%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215331215425%_))
                                      (let ((_%e215355215383%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl215331215425%_))))
                                        (let ((_%tl215357215388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215355215383%_)))
                                              (_%hd215356215386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215355215383%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl215357215388%_))
                                              (_%__kont219112219113%_
                                               _%hd215356215386%_
                                               _%hd215330215423%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g215322215362%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g215322215362%_))))))
                          (let () (declare (not safe)) (_%g215322215362%_)))))
                  (let () (declare (not safe)) (_%g215322215362%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx215293%_ _%expr215294%_ _%type215295%_)
        (let ((_%$e215297%_ (not _%type215295%_)))
          (if _%$e215297%_
              _%$e215297%_
              (let ((_%$e215300%_
                     (eq? (##structure-ref _%type215295%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e215300%_
                    _%$e215300%_
                    (let ((_%$e215303%_
                           (eq? (##structure-ref
                                 _%type215295%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e215303%_
                          _%$e215303%_
                          (let ((_%expr-type215307%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr215294%_))))
                            (if (not _%expr-type215307%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx215293%_
                                   _%type215295%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type215307%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx215293%_
                                       _%type215295%_
                                       _%expr-type215307%_))
                                    (let ((_%$e215311%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type215307%_
                                              'gxc#!abort::t))))
                                      (if _%$e215311%_
                                          _%$e215311%_
                                          (let ((_%$e215314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type215307%_
                                                    _%type215295%_))))
                                            (if _%$e215314%_
                                                _%$e215314%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx215293%_
                                                   _%type215295%_
                                                   _%expr-type215307%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self214719%_ _%stx214720%_)
        (let* ((_%__stx219188219189%_ _%stx214720%_)
               (_%g214725214835%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx219188219189%_)))))
          (let ((_%__kont219190219191%_
                 (lambda (_%g214727215267%_
                          _%g214728215268%_
                          _%g214729215269%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g214729215269%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self214719%_ _%g214728215268%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self214719%_
                          _%g214727215267%_)))))
                (_%__kont219192219193%_
                 (lambda (_%g214748215093%_
                          _%g214749215094%_
                          _%g214750215095%_
                          _%g214751215096%_)
                   (let ((_%$e215128%_
                          (let ((__tmp219541
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g214751215096%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp219541))))
                     (if _%$e215128%_
                         ((lambda (_%pred-type215131%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type215131%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type215131%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test215136%_
                                        (let ((__tmp219542
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g214751215096%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g214750215095%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp219542
                                           _%stx214720%_
                                           _%self214719%_)))
                                       (_%K215140%_
                                        (let ((__tmp219543
                                               (lambda ()
                                                 (let ((__tmp219546
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self214719%_
                                                             _%g214749215094%_))))
                                                       (__tmp219544
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g214750215095%_))
                            (let ((__tmp219545
                                   (##structure-ref
                                    _%pred-type215131%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx214720%_
                               __tmp219545)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp219546
                                                    gxc#current-compile-path-type
                                                    __tmp219544)))))
                                          (declare (not safe))
                                          (__make-promise __tmp219543)))
                                       (_%E215143%_
                                        (let ((__tmp219547
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self214719%_
                                                    _%g214748215093%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp219547)))
                                       (_%__stx219166219167%_ _%test215136%_)
                                       (_%g215147215161%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx219166219167%_)))))
                                  (let ((_%__kont219168219169%_
                                         (lambda (_%g215149215189%_
                                                  _%g215150215190%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g215149215189%_))
                                               (force _%K215140%_)
                                               (force _%E215143%_))))
                                        (_%__kont219170219171%_
                                         (lambda ()
                                           (let ((__tmp219548
                                                  (cons '%#if
                                                        (cons _%test215136%_
                                                              (cons (force _%K215140%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E215143%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp219548
                                              _%stx214720%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx219166219167%_))
                                        (let ((_%e215151215173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx219166219167%_))))
                                          (let ((_%tl215153215178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e215151215173%_)))
                                                (_%hd215152215176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e215151215173%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl215153215178%_))
                                                (let ((_%e215154215181%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl215153215178%_))))
                                                  (let ((_%tl215156215186%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e215154215181%_)))
                                                        (_%hd215155215184%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e215154215181%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl215156215186%_))
                                                        (_%__kont219168219169%_
                                                         _%hd215155215184%_
                                                         _%hd215152215176%_)
                                                        (_%__kont219170219171%_))))
                                                (_%__kont219170219171%_))))
                                        (_%__kont219170219171%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self214719%_
                                   _%stx214720%_))))
                          _%$e215128%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self214719%_
                            _%stx214720%_))))))
                (_%__kont219194219195%_
                 (lambda (_%g214785214969%_
                          _%g214786214970%_
                          _%g214787214971%_
                          _%g214788214972%_)
                   (gxc#optimize-if%
                    _%self214719%_
                    (let ((__tmp219549
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g214787214971%_
                                       (cons _%g214785214969%_
                                             (cons _%g214786214970%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp219549 _%stx214720%_)))))
                (_%__kont219196219197%_
                 (lambda (_%g214816214872%_
                          _%g214817214873%_
                          _%g214818214874%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self214719%_ _%stx214720%_)))))
            (let ((_%__match219395219396%_
                   (lambda (_%e214789214897%_
                            _%hd214790214900%_
                            _%tl214791214902%_
                            _%e214792214905%_
                            _%hd214793214908%_
                            _%tl214794214910%_
                            _%e214795214913%_
                            _%hd214796214916%_
                            _%tl214797214918%_
                            _%e214798214921%_
                            _%hd214799214924%_
                            _%tl214800214926%_
                            _%e214801214929%_
                            _%hd214802214932%_
                            _%tl214803214934%_
                            _%e214804214937%_
                            _%hd214805214940%_
                            _%tl214806214942%_
                            _%e214807214945%_
                            _%hd214808214948%_
                            _%tl214809214950%_
                            _%e214810214953%_
                            _%hd214811214956%_
                            _%tl214812214958%_
                            _%e214813214961%_
                            _%hd214814214964%_
                            _%tl214815214966%_)
                     (let ((_%g214785214969%_ _%hd214814214964%_)
                           (_%g214786214970%_ _%hd214811214956%_)
                           (_%g214787214971%_ _%hd214808214948%_)
                           (_%g214788214972%_ _%hd214805214940%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g214788214972%_ 'not))
                           (_%__kont219194219195%_
                            _%g214785214969%_
                            _%g214786214970%_
                            _%g214787214971%_
                            _%g214788214972%_)
                           (_%__kont219196219197%_
                            _%hd214814214964%_
                            _%hd214811214956%_
                            _%hd214793214908%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx219188219189%_))
                  (let ((_%e214730215219%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx219188219189%_))))
                    (let ((_%tl214732215224%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214730215219%_)))
                          (_%hd214731215222%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214730215219%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl214732215224%_))
                          (let ((_%e214733215227%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl214732215224%_))))
                            (let ((_%tl214735215232%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e214733215227%_)))
                                  (_%hd214734215230%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e214733215227%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd214734215230%_))
                                  (let ((_%e214736215235%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd214734215230%_))))
                                    (let ((_%tl214738215240%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214736215235%_)))
                                          (_%hd214737215238%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214736215235%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd214737215238%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd214737215238%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214738215240%_))
                                                  (let ((_%e214739215243%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl214738215240%_))))
                                                    (let ((_%tl214741215248%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214739215243%_)))
                                                          (_%hd214740215246%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214739215243%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl214741215248%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl214735215232%_))
                      (let ((_%e214742215251%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl214735215232%_))))
                        (let ((_%tl214744215256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214742215251%_)))
                              (_%hd214743215254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214742215251%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214744215256%_))
                              (let ((_%e214745215259%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl214744215256%_))))
                                (let ((_%tl214747215264%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214745215259%_)))
                                      (_%hd214746215262%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214745215259%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl214747215264%_))
                                      (_%__kont219190219191%_
                                       _%hd214746215262%_
                                       _%hd214743215254%_
                                       _%hd214740215246%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g214725214835%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g214725214835%_)))))
                      (let () (declare (not safe)) (_%g214725214835%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl214735215232%_))
                      (let ((_%e214825214856%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl214735215232%_))))
                        (let ((_%tl214827214861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214825214856%_)))
                              (_%hd214826214859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214825214856%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214827214861%_))
                              (let ((_%e214828214864%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl214827214861%_))))
                                (let ((_%tl214830214869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214828214864%_)))
                                      (_%hd214829214867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214828214864%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl214830214869%_))
                                      (_%__kont219196219197%_
                                       _%hd214829214867%_
                                       _%hd214826214859%_
                                       _%hd214734215230%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g214725214835%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g214725214835%_)))))
                      (let () (declare (not safe)) (_%g214725214835%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl214735215232%_))
                                                      (let ((_%e214825214856%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl214735215232%_))))
                (let ((_%tl214827214861%_
                       (let () (declare (not safe)) (##cdr _%e214825214856%_)))
                      (_%hd214826214859%_
                       (let ()
                         (declare (not safe))
                         (##car _%e214825214856%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl214827214861%_))
                      (let ((_%e214828214864%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl214827214861%_))))
                        (let ((_%tl214830214869%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214828214864%_)))
                              (_%hd214829214867%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214828214864%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl214830214869%_))
                              (_%__kont219196219197%_
                               _%hd214829214867%_
                               _%hd214826214859%_
                               _%hd214734215230%_)
                              (let ()
                                (declare (not safe))
                                (_%g214725214835%_)))))
                      (let () (declare (not safe)) (_%g214725214835%_)))))
              (let () (declare (not safe)) (_%g214725214835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd214737215238%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl214738215240%_))
                                                      (let ((_%e214761215029%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl214738215240%_))))
                (let ((_%tl214763215034%_
                       (let () (declare (not safe)) (##cdr _%e214761215029%_)))
                      (_%hd214762215032%_
                       (let ()
                         (declare (not safe))
                         (##car _%e214761215029%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd214762215032%_))
                      (let ((_%e214764215037%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd214762215032%_))))
                        (let ((_%tl214766215042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214764215037%_)))
                              (_%hd214765215040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214764215037%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd214765215040%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd214765215040%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214766215042%_))
                                      (let ((_%e214767215045%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl214766215042%_))))
                                        (let ((_%tl214769215050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214767215045%_)))
                                              (_%hd214768215048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214767215045%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214769215050%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214763215034%_))
                                                  (let ((_%e214770215053%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl214763215034%_))))
                                                    (let ((_%tl214772215058%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214770215053%_)))
                                                          (_%hd214771215056%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214770215053%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd214771215056%_))
                                                          (let ((_%e214773215061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd214771215056%_))))
                    (let ((_%tl214775215066%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214773215061%_)))
                          (_%hd214774215064%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214773215061%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd214774215064%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd214774215064%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl214775215066%_))
                                  (let ((_%e214776215069%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl214775215066%_))))
                                    (let ((_%tl214778215074%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214776215069%_)))
                                          (_%hd214777215072%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214776215069%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl214778215074%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214772215058%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214735215232%_))
                                                  (let ((_%e214779215077%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl214735215232%_))))
                                                    (let ((_%tl214781215082%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214779215077%_)))
                                                          (_%hd214780215080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214779215077%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl214781215082%_))
                                                          (let ((_%e214782215085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl214781215082%_))))
                    (let ((_%tl214784215090%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214782215085%_)))
                          (_%hd214783215088%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214782215085%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl214784215090%_))
                          (_%__kont219192219193%_
                           _%hd214783215088%_
                           _%hd214780215080%_
                           _%hd214777215072%_
                           _%hd214768215048%_)
                          (let () (declare (not safe)) (_%g214725214835%_)))))
                  (let () (declare (not safe)) (_%g214725214835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214725214835%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214735215232%_))
                                                  (let ((_%e214825214856%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl214735215232%_))))
                                                    (let ((_%tl214827214861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214825214856%_)))
                                                          (_%hd214826214859%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214825214856%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl214827214861%_))
                                                          (let ((_%e214828214864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl214827214861%_))))
                    (let ((_%tl214830214869%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214828214864%_)))
                          (_%hd214829214867%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214828214864%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl214830214869%_))
                          (_%__kont219196219197%_
                           _%hd214829214867%_
                           _%hd214826214859%_
                           _%hd214734215230%_)
                          (let () (declare (not safe)) (_%g214725214835%_)))))
                  (let () (declare (not safe)) (_%g214725214835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214725214835%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214772215058%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214735215232%_))
                                                  (let ((_%e214810214953%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl214735215232%_))))
                                                    (let ((_%tl214812214958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214810214953%_)))
                                                          (_%hd214811214956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214810214953%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl214812214958%_))
                                                          (let ((_%e214813214961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl214812214958%_))))
                    (let ((_%tl214815214966%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214813214961%_)))
                          (_%hd214814214964%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214813214961%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl214815214966%_))
                          (_%__match219395219396%_
                           _%e214730215219%_
                           _%hd214731215222%_
                           _%tl214732215224%_
                           _%e214733215227%_
                           _%hd214734215230%_
                           _%tl214735215232%_
                           _%e214736215235%_
                           _%hd214737215238%_
                           _%tl214738215240%_
                           _%e214761215029%_
                           _%hd214762215032%_
                           _%tl214763215034%_
                           _%e214764215037%_
                           _%hd214765215040%_
                           _%tl214766215042%_
                           _%e214767215045%_
                           _%hd214768215048%_
                           _%tl214769215050%_
                           _%e214770215053%_
                           _%hd214771215056%_
                           _%tl214772215058%_
                           _%e214810214953%_
                           _%hd214811214956%_
                           _%tl214812214958%_
                           _%e214813214961%_
                           _%hd214814214964%_
                           _%tl214815214966%_)
                          (let () (declare (not safe)) (_%g214725214835%_)))))
                  (let () (declare (not safe)) (_%g214725214835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214725214835%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214735215232%_))
                                                  (let ((_%e214825214856%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl214735215232%_))))
                                                    (let ((_%tl214827214861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214825214856%_)))
                                                          (_%hd214826214859%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214825214856%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl214827214861%_))
                                                          (let ((_%e214828214864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl214827214861%_))))
                    (let ((_%tl214830214869%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214828214864%_)))
                          (_%hd214829214867%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214828214864%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl214830214869%_))
                          (_%__kont219196219197%_
                           _%hd214829214867%_
                           _%hd214826214859%_
                           _%hd214734215230%_)
                          (let () (declare (not safe)) (_%g214725214835%_)))))
                  (let () (declare (not safe)) (_%g214725214835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214725214835%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl214772215058%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl214735215232%_))
                                          (let ((_%e214810214953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl214735215232%_))))
                                            (let ((_%tl214812214958%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e214810214953%_)))
                                                  (_%hd214811214956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e214810214953%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214812214958%_))
                                                  (let ((_%e214813214961%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl214812214958%_))))
                                                    (let ((_%tl214815214966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214813214961%_)))
                                                          (_%hd214814214964%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214813214961%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl214815214966%_))
                                                          (_%__match219395219396%_
                                                           _%e214730215219%_
                                                           _%hd214731215222%_
                                                           _%tl214732215224%_
                                                           _%e214733215227%_
                                                           _%hd214734215230%_
                                                           _%tl214735215232%_
                                                           _%e214736215235%_
                                                           _%hd214737215238%_
                                                           _%tl214738215240%_
                                                           _%e214761215029%_
                                                           _%hd214762215032%_
                                                           _%tl214763215034%_
                                                           _%e214764215037%_
                                                           _%hd214765215040%_
                                                           _%tl214766215042%_
                                                           _%e214767215045%_
                                                           _%hd214768215048%_
                                                           _%tl214769215050%_
                                                           _%e214770215053%_
                                                           _%hd214771215056%_
                                                           _%tl214772215058%_
                                                           _%e214810214953%_
                                                           _%hd214811214956%_
                                                           _%tl214812214958%_
                                                           _%e214813214961%_
                                                           _%hd214814214964%_
                                                           _%tl214815214966%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g214725214835%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214725214835%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g214725214835%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl214735215232%_))
                                          (let ((_%e214825214856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl214735215232%_))))
                                            (let ((_%tl214827214861%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e214825214856%_)))
                                                  (_%hd214826214859%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e214825214856%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214827214861%_))
                                                  (let ((_%e214828214864%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl214827214861%_))))
                                                    (let ((_%tl214830214869%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214828214864%_)))
                                                          (_%hd214829214867%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214828214864%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl214830214869%_))
                                                          (_%__kont219196219197%_
                                                           _%hd214829214867%_
                                                           _%hd214826214859%_
                                                           _%hd214734215230%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g214725214835%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214725214835%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g214725214835%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl214772215058%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214735215232%_))
                                      (let ((_%e214810214953%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl214735215232%_))))
                                        (let ((_%tl214812214958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214810214953%_)))
                                              (_%hd214811214956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214810214953%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl214812214958%_))
                                              (let ((_%e214813214961%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl214812214958%_))))
                                                (let ((_%tl214815214966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e214813214961%_)))
                                                      (_%hd214814214964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e214813214961%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl214815214966%_))
                                                      (_%__match219395219396%_
                                                       _%e214730215219%_
                                                       _%hd214731215222%_
                                                       _%tl214732215224%_
                                                       _%e214733215227%_
                                                       _%hd214734215230%_
                                                       _%tl214735215232%_
                                                       _%e214736215235%_
                                                       _%hd214737215238%_
                                                       _%tl214738215240%_
                                                       _%e214761215029%_
                                                       _%hd214762215032%_
                                                       _%tl214763215034%_
                                                       _%e214764215037%_
                                                       _%hd214765215040%_
                                                       _%tl214766215042%_
                                                       _%e214767215045%_
                                                       _%hd214768215048%_
                                                       _%tl214769215050%_
                                                       _%e214770215053%_
                                                       _%hd214771215056%_
                                                       _%tl214772215058%_
                                                       _%e214810214953%_
                                                       _%hd214811214956%_
                                                       _%tl214812214958%_
                                                       _%e214813214961%_
                                                       _%hd214814214964%_
                                                       _%tl214815214966%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g214725214835%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g214725214835%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g214725214835%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214735215232%_))
                                      (let ((_%e214825214856%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl214735215232%_))))
                                        (let ((_%tl214827214861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214825214856%_)))
                                              (_%hd214826214859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214825214856%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl214827214861%_))
                                              (let ((_%e214828214864%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl214827214861%_))))
                                                (let ((_%tl214830214869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e214828214864%_)))
                                                      (_%hd214829214867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e214828214864%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl214830214869%_))
                                                      (_%__kont219196219197%_
                                                       _%hd214829214867%_
                                                       _%hd214826214859%_
                                                       _%hd214734215230%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g214725214835%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g214725214835%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g214725214835%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl214772215058%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl214735215232%_))
                                  (let ((_%e214810214953%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl214735215232%_))))
                                    (let ((_%tl214812214958%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214810214953%_)))
                                          (_%hd214811214956%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214810214953%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl214812214958%_))
                                          (let ((_%e214813214961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl214812214958%_))))
                                            (let ((_%tl214815214966%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e214813214961%_)))
                                                  (_%hd214814214964%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e214813214961%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl214815214966%_))
                                                  (_%__match219395219396%_
                                                   _%e214730215219%_
                                                   _%hd214731215222%_
                                                   _%tl214732215224%_
                                                   _%e214733215227%_
                                                   _%hd214734215230%_
                                                   _%tl214735215232%_
                                                   _%e214736215235%_
                                                   _%hd214737215238%_
                                                   _%tl214738215240%_
                                                   _%e214761215029%_
                                                   _%hd214762215032%_
                                                   _%tl214763215034%_
                                                   _%e214764215037%_
                                                   _%hd214765215040%_
                                                   _%tl214766215042%_
                                                   _%e214767215045%_
                                                   _%hd214768215048%_
                                                   _%tl214769215050%_
                                                   _%e214770215053%_
                                                   _%hd214771215056%_
                                                   _%tl214772215058%_
                                                   _%e214810214953%_
                                                   _%hd214811214956%_
                                                   _%tl214812214958%_
                                                   _%e214813214961%_
                                                   _%hd214814214964%_
                                                   _%tl214815214966%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214725214835%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g214725214835%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g214725214835%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl214735215232%_))
                                  (let ((_%e214825214856%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl214735215232%_))))
                                    (let ((_%tl214827214861%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214825214856%_)))
                                          (_%hd214826214859%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214825214856%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl214827214861%_))
                                          (let ((_%e214828214864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl214827214861%_))))
                                            (let ((_%tl214830214869%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e214828214864%_)))
                                                  (_%hd214829214867%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e214828214864%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl214830214869%_))
                                                  (_%__kont219196219197%_
                                                   _%hd214829214867%_
                                                   _%hd214826214859%_
                                                   _%hd214734215230%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214725214835%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g214725214835%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g214725214835%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl214772215058%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl214735215232%_))
                          (let ((_%e214810214953%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl214735215232%_))))
                            (let ((_%tl214812214958%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e214810214953%_)))
                                  (_%hd214811214956%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e214810214953%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl214812214958%_))
                                  (let ((_%e214813214961%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl214812214958%_))))
                                    (let ((_%tl214815214966%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214813214961%_)))
                                          (_%hd214814214964%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214813214961%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl214815214966%_))
                                          (_%__match219395219396%_
                                           _%e214730215219%_
                                           _%hd214731215222%_
                                           _%tl214732215224%_
                                           _%e214733215227%_
                                           _%hd214734215230%_
                                           _%tl214735215232%_
                                           _%e214736215235%_
                                           _%hd214737215238%_
                                           _%tl214738215240%_
                                           _%e214761215029%_
                                           _%hd214762215032%_
                                           _%tl214763215034%_
                                           _%e214764215037%_
                                           _%hd214765215040%_
                                           _%tl214766215042%_
                                           _%e214767215045%_
                                           _%hd214768215048%_
                                           _%tl214769215050%_
                                           _%e214770215053%_
                                           _%hd214771215056%_
                                           _%tl214772215058%_
                                           _%e214810214953%_
                                           _%hd214811214956%_
                                           _%tl214812214958%_
                                           _%e214813214961%_
                                           _%hd214814214964%_
                                           _%tl214815214966%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g214725214835%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g214725214835%_)))))
                          (let () (declare (not safe)) (_%g214725214835%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl214735215232%_))
                          (let ((_%e214825214856%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl214735215232%_))))
                            (let ((_%tl214827214861%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e214825214856%_)))
                                  (_%hd214826214859%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e214825214856%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl214827214861%_))
                                  (let ((_%e214828214864%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl214827214861%_))))
                                    (let ((_%tl214830214869%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214828214864%_)))
                                          (_%hd214829214867%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214828214864%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl214830214869%_))
                                          (_%__kont219196219197%_
                                           _%hd214829214867%_
                                           _%hd214826214859%_
                                           _%hd214734215230%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g214725214835%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g214725214835%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g214725214835%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl214735215232%_))
                                                      (let ((_%e214825214856%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl214735215232%_))))
                (let ((_%tl214827214861%_
                       (let () (declare (not safe)) (##cdr _%e214825214856%_)))
                      (_%hd214826214859%_
                       (let ()
                         (declare (not safe))
                         (##car _%e214825214856%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl214827214861%_))
                      (let ((_%e214828214864%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl214827214861%_))))
                        (let ((_%tl214830214869%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214828214864%_)))
                              (_%hd214829214867%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214828214864%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl214830214869%_))
                              (_%__kont219196219197%_
                               _%hd214829214867%_
                               _%hd214826214859%_
                               _%hd214734215230%_)
                              (let ()
                                (declare (not safe))
                                (_%g214725214835%_)))))
                      (let () (declare (not safe)) (_%g214725214835%_)))))
              (let () (declare (not safe)) (_%g214725214835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214735215232%_))
                                                  (let ((_%e214825214856%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl214735215232%_))))
                                                    (let ((_%tl214827214861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214825214856%_)))
                                                          (_%hd214826214859%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214825214856%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl214827214861%_))
                                                          (let ((_%e214828214864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl214827214861%_))))
                    (let ((_%tl214830214869%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214828214864%_)))
                          (_%hd214829214867%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214828214864%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl214830214869%_))
                          (_%__kont219196219197%_
                           _%hd214829214867%_
                           _%hd214826214859%_
                           _%hd214734215230%_)
                          (let () (declare (not safe)) (_%g214725214835%_)))))
                  (let () (declare (not safe)) (_%g214725214835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214725214835%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl214735215232%_))
                                          (let ((_%e214825214856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl214735215232%_))))
                                            (let ((_%tl214827214861%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e214825214856%_)))
                                                  (_%hd214826214859%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e214825214856%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214827214861%_))
                                                  (let ((_%e214828214864%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl214827214861%_))))
                                                    (let ((_%tl214830214869%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214828214864%_)))
                                                          (_%hd214829214867%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214828214864%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl214830214869%_))
                                                          (_%__kont219196219197%_
                                                           _%hd214829214867%_
                                                           _%hd214826214859%_
                                                           _%hd214734215230%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g214725214835%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214725214835%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g214725214835%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214735215232%_))
                                      (let ((_%e214825214856%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl214735215232%_))))
                                        (let ((_%tl214827214861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214825214856%_)))
                                              (_%hd214826214859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214825214856%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl214827214861%_))
                                              (let ((_%e214828214864%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl214827214861%_))))
                                                (let ((_%tl214830214869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e214828214864%_)))
                                                      (_%hd214829214867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e214828214864%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl214830214869%_))
                                                      (_%__kont219196219197%_
                                                       _%hd214829214867%_
                                                       _%hd214826214859%_
                                                       _%hd214734215230%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g214725214835%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g214725214835%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g214725214835%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl214735215232%_))
                                  (let ((_%e214825214856%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl214735215232%_))))
                                    (let ((_%tl214827214861%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214825214856%_)))
                                          (_%hd214826214859%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214825214856%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl214827214861%_))
                                          (let ((_%e214828214864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl214827214861%_))))
                                            (let ((_%tl214830214869%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e214828214864%_)))
                                                  (_%hd214829214867%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e214828214864%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl214830214869%_))
                                                  (_%__kont219196219197%_
                                                   _%hd214829214867%_
                                                   _%hd214826214859%_
                                                   _%hd214734215230%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214725214835%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g214725214835%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g214725214835%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl214735215232%_))
                          (let ((_%e214825214856%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl214735215232%_))))
                            (let ((_%tl214827214861%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e214825214856%_)))
                                  (_%hd214826214859%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e214825214856%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl214827214861%_))
                                  (let ((_%e214828214864%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl214827214861%_))))
                                    (let ((_%tl214830214869%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214828214864%_)))
                                          (_%hd214829214867%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214828214864%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl214830214869%_))
                                          (_%__kont219196219197%_
                                           _%hd214829214867%_
                                           _%hd214826214859%_
                                           _%hd214734215230%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g214725214835%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g214725214835%_)))))
                          (let () (declare (not safe)) (_%g214725214835%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl214735215232%_))
                  (let ((_%e214825214856%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl214735215232%_))))
                    (let ((_%tl214827214861%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214825214856%_)))
                          (_%hd214826214859%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214825214856%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl214827214861%_))
                          (let ((_%e214828214864%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl214827214861%_))))
                            (let ((_%tl214830214869%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e214828214864%_)))
                                  (_%hd214829214867%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e214828214864%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl214830214869%_))
                                  (_%__kont219196219197%_
                                   _%hd214829214867%_
                                   _%hd214826214859%_
                                   _%hd214734215230%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g214725214835%_)))))
                          (let () (declare (not safe)) (_%g214725214835%_)))))
                  (let () (declare (not safe)) (_%g214725214835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl214735215232%_))
                                                      (let ((_%e214825214856%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl214735215232%_))))
                (let ((_%tl214827214861%_
                       (let () (declare (not safe)) (##cdr _%e214825214856%_)))
                      (_%hd214826214859%_
                       (let ()
                         (declare (not safe))
                         (##car _%e214825214856%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl214827214861%_))
                      (let ((_%e214828214864%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl214827214861%_))))
                        (let ((_%tl214830214869%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214828214864%_)))
                              (_%hd214829214867%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214828214864%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl214830214869%_))
                              (_%__kont219196219197%_
                               _%hd214829214867%_
                               _%hd214826214859%_
                               _%hd214734215230%_)
                              (let ()
                                (declare (not safe))
                                (_%g214725214835%_)))))
                      (let () (declare (not safe)) (_%g214725214835%_)))))
              (let () (declare (not safe)) (_%g214725214835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl214735215232%_))
                                              (let ((_%e214825214856%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl214735215232%_))))
                                                (let ((_%tl214827214861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e214825214856%_)))
                                                      (_%hd214826214859%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e214825214856%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl214827214861%_))
                                                      (let ((_%e214828214864%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl214827214861%_))))
                (let ((_%tl214830214869%_
                       (let () (declare (not safe)) (##cdr _%e214828214864%_)))
                      (_%hd214829214867%_
                       (let ()
                         (declare (not safe))
                         (##car _%e214828214864%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl214830214869%_))
                      (_%__kont219196219197%_
                       _%hd214829214867%_
                       _%hd214826214859%_
                       _%hd214734215230%_)
                      (let () (declare (not safe)) (_%g214725214835%_)))))
              (let () (declare (not safe)) (_%g214725214835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g214725214835%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214735215232%_))
                                      (let ((_%e214825214856%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl214735215232%_))))
                                        (let ((_%tl214827214861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214825214856%_)))
                                              (_%hd214826214859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214825214856%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl214827214861%_))
                                              (let ((_%e214828214864%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl214827214861%_))))
                                                (let ((_%tl214830214869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e214828214864%_)))
                                                      (_%hd214829214867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e214828214864%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl214830214869%_))
                                                      (_%__kont219196219197%_
                                                       _%hd214829214867%_
                                                       _%hd214826214859%_
                                                       _%hd214734215230%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g214725214835%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g214725214835%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g214725214835%_))))))
                          (let () (declare (not safe)) (_%g214725214835%_)))))
                  (let () (declare (not safe)) (_%g214725214835%_))))))))))
