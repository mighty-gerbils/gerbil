(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1770313942)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp220980 (list gxc#::basic-xform::t))
            (__tmp220979 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp220980
         '()
         __tmp220979
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args220257%_
        (apply make-instance gxc#::optimize-call::t _%$args220257%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp220981
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
        (__make-atomic-promise __tmp220981)))
    (define gxc#apply-optimize-call
      (lambda (_%stx220249%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self220252%_
                (let ((__obj220971
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj220971))
               (__tmp220982
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220252%_ _%stx220249%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220982
           gxc#current-compile-method
           _%self220252%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp220984 (list gxc#::void::t))
            (__tmp220983 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp220984
         '()
         __tmp220983
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args220246%_
        (apply make-instance gxc#::check-return-type::t _%$args220246%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp220985
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
        (__make-atomic-promise __tmp220985)))
    (define gxc#apply-check-return-type
      (lambda (_%stx220238%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self220241%_
                (let ((__obj220973
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj220973))
               (__tmp220986
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220241%_ _%stx220238%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220986
           gxc#current-compile-method
           _%self220241%_))))
    (define gxc#optimize-call%
      (lambda (_%self219845%_ _%stx219846%_)
        (let* ((_%__stx220326220327%_ _%stx219846%_)
               (_%g219849219895%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220326220327%_)))))
          (let ((_%__kont220328220329%_
                 (lambda (_%g219851220034%_ _%g219852220035%_)
                   (let* ((_%rator-id220055%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g219852220035%_)))
                          (_%rator-type220057%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id220055%_))))
                     (if (or (not _%rator-type220057%_)
                             (eq? (##structure-ref
                                   _%rator-type220057%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self219845%_ _%stx219846%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type220057%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp220987
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type220057%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id220055%_
                                  '" => "
                                  _%rator-type220057%_
                                  '" "
                                  __tmp220987))
                               (let* ((_%optimized220072%_
                                       (let ((__method220974
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type220057%_
                                                 'optimize-call))))
                                         (if __method220974
                                             (let ((__tmp220988
                                                    (let ((__tmp220989
                                                           (lambda (_%g220064220067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g220065220069%_)
                     (cons _%g220064220067%_ _%g220065220069%_))))
              (declare (not safe))
              (__foldr1 __tmp220989 '() _%g219851220034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method220974
                                                _%rator-type220057%_
                                                _%self219845%_
                                                _%stx219846%_
                                                __tmp220988))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type220057%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx220274220275%_
                                       _%optimized220072%_)
                                      (_%g220075220104%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx220274220275%_)))))
                                 (let ((_%__kont220276220277%_
                                        (lambda (_%g220077220170%_
                                                 _%g220078220171%_)
                                          (let* ((_%optimized-rator-id220198%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g220078220171%_)))
                                                 (_%rator-type220203%_
                                                  (let ((_%$e220200%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id220198%_))))
                                                    (if _%$e220200%_
                                                        _%$e220200%_
                                                        _%rator-type220057%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type220203%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id220198%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type220203%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type220203%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized220072%_
                                                (let ((__tmp220990
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g220078220171%_ '()))
                           (let ((__tmp220991
                                  (lambda (_%g220211220214%_ _%g220212220216%_)
                                    (cons _%g220211220214%_
                                          _%g220212220216%_))))
                             (declare (not safe))
                             (__foldr1 __tmp220991 '() _%g220077220170%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp220990
                                                   _%stx219846%_))))))
                                       (_%__kont220280220281%_
                                        (lambda () _%optimized220072%_)))
                                   (let ((_%__match220323220324%_
                                          (lambda (_%e220079220116%_
                                                   _%hd220080220119%_
                                                   _%tl220081220121%_
                                                   _%e220082220124%_
                                                   _%hd220083220127%_
                                                   _%tl220084220129%_
                                                   _%e220085220132%_
                                                   _%hd220086220135%_
                                                   _%tl220087220137%_
                                                   _%e220088220140%_
                                                   _%hd220089220143%_
                                                   _%tl220090220145%_
                                                   _%__splice220278220279%_
                                                   _%target220091220148%_
                                                   _%tl220093220150%_)
                                            (letrec ((_%loop220094220153%_
                                                      (lambda (_%hd220092220156%_
                                                               _%arg220098220158%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd220092220156%_))
                                                            (let ((_%e220095220160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd220092220156%_))))
                      (let ((_%lp-tl220097220165%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e220095220160%_)))
                            (_%lp-hd220096220163%_
                             (let ()
                               (declare (not safe))
                               (##car _%e220095220160%_))))
                        (_%loop220094220153%_
                         _%lp-tl220097220165%_
                         (cons _%lp-hd220096220163%_ _%arg220098220158%_))))
                    (let ((_%arg220099220168%_ (reverse _%arg220098220158%_)))
                      (_%__kont220276220277%_
                       _%arg220099220168%_
                       _%hd220089220143%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop220094220153%_
                                               _%target220091220148%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx220274220275%_))
                                         (let ((_%e220079220116%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx220274220275%_))))
                                           (let ((_%tl220081220121%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e220079220116%_)))
                                                 (_%hd220080220119%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e220079220116%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd220080220119%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd220080220119%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl220081220121%_))
                                                         (let ((_%e220082220124%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl220081220121%_))))
                   (let ((_%tl220084220129%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e220082220124%_)))
                         (_%hd220083220127%_
                          (let ()
                            (declare (not safe))
                            (##car _%e220082220124%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd220083220127%_))
                         (let ((_%e220085220132%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd220083220127%_))))
                           (let ((_%tl220087220137%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e220085220132%_)))
                                 (_%hd220086220135%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e220085220132%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd220086220135%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd220086220135%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl220087220137%_))
                                         (let ((_%e220088220140%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl220087220137%_))))
                                           (let ((_%tl220090220145%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e220088220140%_)))
                                                 (_%hd220089220143%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e220088220140%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl220090220145%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl220084220129%_))
                                                     (let ((_%__splice220278220279%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl220084220129%_
                                                               '0))))
                                                       (let ((_%tl220093220150%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice220278220279%_ '1)))
                     (_%target220091220148%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice220278220279%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl220093220150%_))
                     (_%__match220323220324%_
                      _%e220079220116%_
                      _%hd220080220119%_
                      _%tl220081220121%_
                      _%e220082220124%_
                      _%hd220083220127%_
                      _%tl220084220129%_
                      _%e220085220132%_
                      _%hd220086220135%_
                      _%tl220087220137%_
                      _%e220088220140%_
                      _%hd220089220143%_
                      _%tl220090220145%_
                      _%__splice220278220279%_
                      _%target220091220148%_
                      _%tl220093220150%_)
                     (_%__kont220280220281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont220280220281%_))
                                                 (_%__kont220280220281%_))))
                                         (_%__kont220280220281%_))
                                     (_%__kont220280220281%_))
                                 (_%__kont220280220281%_))))
                         (_%__kont220280220281%_))))
                 (_%__kont220280220281%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont220280220281%_))
                                                 (_%__kont220280220281%_))))
                                         (_%__kont220280220281%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type220057%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type220057%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp220992
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g219852220035%_
                                                                '()))
                                                    (map (lambda (_%g220222220224%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self219845%_
                                                              _%g220222220224%_)))
                                                         (let ((__tmp220993
                                                                (lambda (_%g220226220229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g220227220231%_)
                          (cons _%g220226220229%_ _%g220227220231%_))))
                   (declare (not safe))
                   (__foldr1 __tmp220993 '() _%g219851220034%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp220992
                                    _%stx219846%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx219846%_
                                    _%rator-type220057%_))))))))
                (_%__kont220332220333%_
                 (lambda (_%g219874219938%_ _%g219875219939%_)
                   (let ((_%rator-type219956%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g219875219939%_))))
                     (if (and _%rator-type219956%_
                              (eq? (##structure-ref
                                    _%rator-type219956%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type219956%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type219956%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type219956%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp220994
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self219845%_
                                               _%g219875219939%_))
                                            (map (lambda (_%g219958219960%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self219845%_
                                                      _%g219958219960%_)))
                                                 (let ((__tmp220995
                                                        (lambda (_%g219962219965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g219963219967%_)
                  (cons _%g219962219965%_ _%g219963219967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp220995
                                                    '()
                                                    _%g219874219938%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp220994 _%stx219846%_))
                         (if (or (not _%rator-type219956%_)
                                 (let ((__tmp220996
                                        (##structure-ref
                                         _%rator-type219956%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp220996 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self219845%_ _%stx219846%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx219846%_
                                _%rator-type219956%_))))))))
            (let* ((_%__match220393220394%_
                    (lambda (_%e219876219900%_
                             _%hd219877219903%_
                             _%tl219878219905%_
                             _%e219879219908%_
                             _%hd219880219911%_
                             _%tl219881219913%_
                             _%__splice220334220335%_
                             _%target219882219916%_
                             _%tl219884219918%_)
                      (letrec ((_%loop219885219921%_
                                (lambda (_%hd219883219924%_
                                         _%rand219889219926%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219883219924%_))
                                      (let ((_%e219886219928%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219883219924%_))))
                                        (let ((_%lp-tl219888219933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219886219928%_)))
                                              (_%lp-hd219887219931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219886219928%_))))
                                          (_%loop219885219921%_
                                           _%lp-tl219888219933%_
                                           (cons _%lp-hd219887219931%_
                                                 _%rand219889219926%_))))
                                      (let ((_%rand219890219936%_
                                             (reverse _%rand219889219926%_)))
                                        (_%__kont220332220333%_
                                         _%rand219890219936%_
                                         _%hd219880219911%_))))))
                        (_%loop219885219921%_ _%target219882219916%_ '()))))
                   (_%__match220373220374%_
                    (lambda (_%e219853219980%_
                             _%hd219854219983%_
                             _%tl219855219985%_
                             _%e219856219988%_
                             _%hd219857219991%_
                             _%tl219858219993%_
                             _%e219859219996%_
                             _%hd219860219999%_
                             _%tl219861220001%_
                             _%e219862220004%_
                             _%hd219863220007%_
                             _%tl219864220009%_
                             _%__splice220330220331%_
                             _%target219865220012%_
                             _%tl219867220014%_)
                      (letrec ((_%loop219868220017%_
                                (lambda (_%hd219866220020%_
                                         _%rand219872220022%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219866220020%_))
                                      (let ((_%e219869220024%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219866220020%_))))
                                        (let ((_%lp-tl219871220029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219869220024%_)))
                                              (_%lp-hd219870220027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219869220024%_))))
                                          (_%loop219868220017%_
                                           _%lp-tl219871220029%_
                                           (cons _%lp-hd219870220027%_
                                                 _%rand219872220022%_))))
                                      (let ((_%rand219873220032%_
                                             (reverse _%rand219872220022%_)))
                                        (_%__kont220328220329%_
                                         _%rand219873220032%_
                                         _%hd219863220007%_))))))
                        (_%loop219868220017%_ _%target219865220012%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220326220327%_))
                  (let ((_%e219853219980%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220326220327%_))))
                    (let ((_%tl219855219985%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e219853219980%_)))
                          (_%hd219854219983%_
                           (let ()
                             (declare (not safe))
                             (##car _%e219853219980%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl219855219985%_))
                          (let ((_%e219856219988%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl219855219985%_))))
                            (let ((_%tl219858219993%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e219856219988%_)))
                                  (_%hd219857219991%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e219856219988%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd219857219991%_))
                                  (let ((_%e219859219996%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd219857219991%_))))
                                    (let ((_%tl219861220001%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e219859219996%_)))
                                          (_%hd219860219999%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e219859219996%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd219860219999%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd219860219999%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl219861220001%_))
                                                  (let ((_%e219862220004%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl219861220001%_))))
                                                    (let ((_%tl219864220009%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e219862220004%_)))
                                                          (_%hd219863220007%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e219862220004%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219864220009%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl219858219993%_))
                      (let ((_%__splice220330220331%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl219858219993%_
                                '0))))
                        (let ((_%tl219867220014%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220330220331%_ '1)))
                              (_%target219865220012%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220330220331%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219867220014%_))
                              (_%__match220373220374%_
                               _%e219853219980%_
                               _%hd219854219983%_
                               _%tl219855219985%_
                               _%e219856219988%_
                               _%hd219857219991%_
                               _%tl219858219993%_
                               _%e219859219996%_
                               _%hd219860219999%_
                               _%tl219861220001%_
                               _%e219862220004%_
                               _%hd219863220007%_
                               _%tl219864220009%_
                               _%__splice220330220331%_
                               _%target219865220012%_
                               _%tl219867220014%_)
                              (let ()
                                (declare (not safe))
                                (_%g219849219895%_)))))
                      (let () (declare (not safe)) (_%g219849219895%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl219858219993%_))
                      (let ((_%__splice220334220335%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl219858219993%_
                                '0))))
                        (let ((_%tl219884219918%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220334220335%_ '1)))
                              (_%target219882219916%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220334220335%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219884219918%_))
                              (_%__match220393220394%_
                               _%e219853219980%_
                               _%hd219854219983%_
                               _%tl219855219985%_
                               _%e219856219988%_
                               _%hd219857219991%_
                               _%tl219858219993%_
                               _%__splice220334220335%_
                               _%target219882219916%_
                               _%tl219884219918%_)
                              (let ()
                                (declare (not safe))
                                (_%g219849219895%_)))))
                      (let () (declare (not safe)) (_%g219849219895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl219858219993%_))
                                                      (let ((_%__splice220334220335%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl219858219993%_
                        '0))))
                (let ((_%tl219884219918%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220334220335%_ '1)))
                      (_%target219882219916%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220334220335%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl219884219918%_))
                      (_%__match220393220394%_
                       _%e219853219980%_
                       _%hd219854219983%_
                       _%tl219855219985%_
                       _%e219856219988%_
                       _%hd219857219991%_
                       _%tl219858219993%_
                       _%__splice220334220335%_
                       _%target219882219916%_
                       _%tl219884219918%_)
                      (let () (declare (not safe)) (_%g219849219895%_)))))
              (let () (declare (not safe)) (_%g219849219895%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl219858219993%_))
                                                  (let ((_%__splice220334220335%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl219858219993%_
                                                            '0))))
                                                    (let ((_%tl219884219918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220334220335%_
                                                              '1)))
                                                          (_%target219882219916%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220334220335%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219884219918%_))
                                                          (_%__match220393220394%_
                                                           _%e219853219980%_
                                                           _%hd219854219983%_
                                                           _%tl219855219985%_
                                                           _%e219856219988%_
                                                           _%hd219857219991%_
                                                           _%tl219858219993%_
                                                           _%__splice220334220335%_
                                                           _%target219882219916%_
                                                           _%tl219884219918%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g219849219895%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g219849219895%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl219858219993%_))
                                              (let ((_%__splice220334220335%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl219858219993%_
                                                        '0))))
                                                (let ((_%tl219884219918%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220334220335%_
                                                          '1)))
                                                      (_%target219882219916%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220334220335%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl219884219918%_))
                                                      (_%__match220393220394%_
                                                       _%e219853219980%_
                                                       _%hd219854219983%_
                                                       _%tl219855219985%_
                                                       _%e219856219988%_
                                                       _%hd219857219991%_
                                                       _%tl219858219993%_
                                                       _%__splice220334220335%_
                                                       _%target219882219916%_
                                                       _%tl219884219918%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g219849219895%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g219849219895%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl219858219993%_))
                                      (let ((_%__splice220334220335%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl219858219993%_
                                                '0))))
                                        (let ((_%tl219884219918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220334220335%_
                                                  '1)))
                                              (_%target219882219916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220334220335%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl219884219918%_))
                                              (_%__match220393220394%_
                                               _%e219853219980%_
                                               _%hd219854219983%_
                                               _%tl219855219985%_
                                               _%e219856219988%_
                                               _%hd219857219991%_
                                               _%tl219858219993%_
                                               _%__splice220334220335%_
                                               _%target219882219916%_
                                               _%tl219884219918%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g219849219895%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g219849219895%_))))))
                          (let () (declare (not safe)) (_%g219849219895%_)))))
                  (let () (declare (not safe)) (_%g219849219895%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self219807%_ _%ctx219808%_ _%stx219809%_ _%args219810%_)
        (let ((_%self219813%_ _%self219807%_))
          (if (let ((__method220975
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self219813%_ 'check-arguments))))
                (if __method220975
                    (let ()
                      (declare (not safe))
                      (__method220975
                       _%self219813%_
                       _%ctx219808%_
                       _%stx219809%_
                       _%args219810%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self219813%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature219823%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self219813%_ '2 '#f '#f)))
                     (_%signature219825%_ _%signature219823%_)
                     (_%$e219835%_
                      (if _%signature219825%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature219825%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e219835%_
                    ((lambda (_%unchecked219838%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked219838%_))
                           (let ((__tmp220997
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked219838%_
                                                          '()))
                                              (map (lambda (_%g219839219841%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx219808%_
                                                        _%g219839219841%_)))
                                                   _%args219810%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp220997
                              _%stx219809%_
                              _%ctx219808%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx219808%_ _%stx219809%_))))
                     _%$e219835%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx219808%_ _%stx219809%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx219808%_ _%stx219809%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass220259 __method-table220260)
        (let ((__check-arguments220261
               (let ((__tmp220998
                      (lambda ()
                        (let ((__method220262
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220260
                                  'check-arguments
                                  '#f))))
                          (if __method220262
                              __method220262
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp220998))))
          (lambda (_%self219807%_ _%ctx219808%_ _%stx219809%_ _%args219810%_)
            (let ((_%self219813%_ _%self219807%_))
              (if ((force __check-arguments220261)
                   _%self219813%_
                   _%ctx219808%_
                   _%stx219809%_
                   _%args219810%_)
                  (let* ((_%signature219823%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self219813%_
                             '2
                             '#f
                             '#f)))
                         (_%signature219825%_ _%signature219823%_)
                         (_%$e219835%_
                          (if _%signature219825%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature219825%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e219835%_
                        ((lambda (_%unchecked219838%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked219838%_))
                               (let ((__tmp220999
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked219838%_
                                                              '()))
                                                  (map (lambda (_%g219839219841%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx219808%_
                                                            _%g219839219841%_)))
                                                       _%args219810%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp220999
                                  _%stx219809%_
                                  _%ctx219808%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx219808%_
                                  _%stx219809%_))))
                         _%$e219835%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx219808%_ _%stx219809%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx219808%_ _%stx219809%_))))))))
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
      (lambda (_%self219560%_ _%ctx219561%_ _%stx219562%_ _%args219563%_)
        (let* ((_%self219566%_ _%self219560%_)
               (_%signature219575219577%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self219566%_ '2 '#f '#f))))
          (if _%signature219575219577%_
              (let* ((_%signature219579%_ _%signature219575219577%_)
                     (_%argument-types219580219582%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature219579%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types219580219582%_
                    (let* ((_%argument-types219584%_
                            _%argument-types219580219582%_)
                           (_%argument-types219589%_
                            (let ((__tmp221000
                                   (lambda (_%t219587%_)
                                     (if _%t219587%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219562%_
                                            _%t219587%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp221000
                               _%argument-types219584%_))))
                      (let _%loop219591%_ ((_%rest-args219593%_ _%args219563%_)
                                           (_%rest-types219594%_
                                            _%argument-types219589%_)
                                           (_%result219595%_ '#t))
                        (let* ((_%rest-args219596219604%_ _%rest-args219593%_)
                               (_%else219598219612%_
                                (lambda () _%result219595%_))
                               (_%K219600219673%_
                                (lambda (_%rest-args219615%_ _%arg219616%_)
                                  (let* ((_%rest-types219617219628%_
                                          _%rest-types219594%_)
                                         (_%E219621219632%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types219617219628%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K219624219661%_
                                           (lambda (_%rest-types219658%_
                                                    _%type219659%_)
                                             (_%loop219591%_
                                              _%rest-args219615%_
                                              _%rest-types219658%_
                                              (if (gxc#check-expression-type!
                                                   _%stx219562%_
                                                   _%arg219616%_
                                                   _%type219659%_)
                                                  _%result219595%_
                                                  '#f))))
                                          (_%K219623219652%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx219562%_
                                                _%argument-types219589%_))))
                                          (_%K219622219642%_
                                           (lambda (_%tail-type219636%_)
                                             (if (let ((__tmp221001
                                                        (lambda (_%g219637219639%_)
                                                          (gxc#check-expression-type!
                                                           _%stx219562%_
                                                           _%g219637219639%_
                                                           _%tail-type219636%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp221001
                                                    _%rest-args219615%_))
                                                 _%result219595%_
                                                 '#f))))
                                      (let ((_%try-match219619219655%_
                                             (lambda ()
                                               (if (null? _%rest-types219617219628%_)
                                                   (_%K219623219652%_)
                                                   (let ((_%tail-type219645%_
                                                          _%rest-types219617219628%_))
                                                     (_%K219622219642%_
                                                      _%tail-type219645%_))))))
                                        (if (pair? _%rest-types219617219628%_)
                                            (let ((_%tl219626219666%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types219617219628%_)))
                                                  (_%hd219625219664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types219617219628%_))))
                                              (let ((_%type219669%_
                                                     _%hd219625219664%_)
                                                    (_%rest-types219671%_
                                                     _%tl219626219666%_))
                                                (_%K219624219661%_
                                                 _%rest-types219671%_
                                                 _%type219669%_)))
                                            (_%try-match219619219655%_))))))))
                          (if (pair? _%rest-args219596219604%_)
                              (let ((_%hd219601219676%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args219596219604%_)))
                                    (_%tl219602219678%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args219596219604%_))))
                                (let* ((_%arg219681%_ _%hd219601219676%_)
                                       (_%rest-args219683%_
                                        _%tl219602219678%_))
                                  (_%K219600219673%_
                                   _%rest-args219683%_
                                   _%arg219681%_)))
                              (_%else219598219612%_)))))
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
      (lambda (_%self219371%_ _%ctx219372%_ _%stx219373%_ _%args219374%_)
        (let* ((_%self219377%_ _%self219371%_)
               (_%g219387219397%_
                (lambda (_%g219388219394%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219388219394%_))))
               (_%g219386219435%_
                (lambda (_%g219388219400%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219388219400%_))
                      (let ((_%e219390219402%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219388219400%_))))
                        (let ((_%hd219391219405%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219390219402%_)))
                              (_%tl219392219407%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219390219402%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219392219407%_))
                              ((lambda (_%g219389219410%_)
                                 (let* ((_%klass219422%_
                                         (let ((__tmp221002
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self219377%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219373%_
                                            __tmp221002)))
                                        (_%object219424%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx219372%_
                                            _%g219389219410%_)))
                                        (_%instance?219429%_
                                         (let ((_%$e219426%_
                                                (gxc#expression-type?
                                                 _%object219424%_
                                                 _%klass219422%_)))
                                           (if _%$e219426%_
                                               _%$e219426%_
                                               (gxc#expression-type?
                                                _%g219389219410%_
                                                _%klass219422%_)))))
                                   (if _%instance?219429%_
                                       (let ((__tmp221003
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object219424%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g219389219410%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object219424%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221003
                                          _%stx219373%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx219372%_
                                          _%stx219373%_)))))
                               _%hd219391219405%_)
                              (_%g219387219397%_ _%g219388219400%_))))
                      (_%g219387219397%_ _%g219388219400%_)))))
          (_%g219386219435%_ _%args219374%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self219167%_ _%ctx219168%_ _%stx219169%_ _%args219170%_)
        (let* ((_%self219173%_ _%self219167%_)
               (_%g219183219193%_
                (lambda (_%g219184219190%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219184219190%_))))
               (_%g219182219246%_
                (lambda (_%g219184219196%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219184219196%_))
                      (let ((_%e219186219198%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219184219196%_))))
                        (let ((_%hd219187219201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219186219198%_)))
                              (_%tl219188219203%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219186219198%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219188219203%_))
                              ((lambda (_%g219185219206%_)
                                 (let* ((_%klass219218%_
                                         (let ((__tmp221004
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self219173%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219169%_
                                            __tmp221004)))
                                        (_%object219220%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx219168%_
                                            _%g219185219206%_)))
                                        (_%instance?219225%_
                                         (let ((_%$e219222%_
                                                (gxc#expression-type?
                                                 _%object219220%_
                                                 _%klass219218%_)))
                                           (if _%$e219222%_
                                               _%$e219222%_
                                               (gxc#expression-type?
                                                _%g219185219206%_
                                                _%klass219218%_))))
                                        (_%klass219228%_ _%klass219218%_))
                                   (if _%instance?219225%_
                                       (let ((__tmp221005
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object219220%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g219185219206%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object219220%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221005
                                          _%stx219169%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass219228%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp221006
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass219228%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object219220%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221006
                                              _%stx219169%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass219228%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp221007
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass219228%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object219220%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp221007
                                                  _%stx219169%_))
                                               (let ((__tmp221008
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self219173%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object219220%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp221008
                                                  _%stx219169%_)))))))
                               _%hd219187219201%_)
                              (_%g219183219193%_ _%g219184219196%_))))
                      (_%g219183219193%_ _%g219184219196%_)))))
          (_%g219182219246%_ _%args219170%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx218835%_)
        (let* ((_%__stx220403220404%_ _%stx218835%_)
               (_%g218840218881%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220403220404%_)))))
          (let ((_%__kont220405220406%_ (lambda () '#t))
                (_%__kont220407220408%_ (lambda () '#t))
                (_%__kont220409220410%_
                 (lambda (_%g218854218947%_ _%g218855218948%_)
                   (let ((_%rator-type218969218971%_
                          (let ((__tmp221009
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g218855218948%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp221009))))
                     (if _%rator-type218969218971%_
                         (let* ((_%rator-type218973%_
                                 _%rator-type218969218971%_)
                                (_%rator-signature218974218976%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type218973%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type218973%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature218974218976%_
                               (let* ((_%rator-signature218978%_
                                       _%rator-signature218974218976%_)
                                      (_%rator-effect218979218981%_
                                       (if _%rator-signature218978%_
                                           (##direct-structure-ref
                                            _%rator-signature218978%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect218979218981%_
                                     (let ((_%rator-effect218983%_
                                            _%rator-effect218979218981%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect218983%_)
                                               (equal? '(alloc)
                                                       _%rator-effect218983%_))
                                           (let ((__tmp221010
                                                  (let ((__tmp221011
                                                         (lambda (_%g218988218991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g218989218993%_)
                   (cons _%g218988218991%_ _%g218989218993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp221011
                                                     '()
                                                     _%g218854218947%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp221010))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont220413220414%_ (lambda () '#f)))
            (let ((_%__match220492220493%_
                   (lambda (_%e218856218893%_
                            _%hd218857218896%_
                            _%tl218858218898%_
                            _%e218859218901%_
                            _%hd218860218904%_
                            _%tl218861218906%_
                            _%e218862218909%_
                            _%hd218863218912%_
                            _%tl218864218914%_
                            _%e218865218917%_
                            _%hd218866218920%_
                            _%tl218867218922%_
                            _%__splice220411220412%_
                            _%target218868218925%_
                            _%tl218870218927%_)
                     (letrec ((_%loop218871218930%_
                               (lambda (_%hd218869218933%_
                                        _%rand218875218935%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd218869218933%_))
                                     (let ((_%e218872218937%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd218869218933%_))))
                                       (let ((_%lp-tl218874218942%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e218872218937%_)))
                                             (_%lp-hd218873218940%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e218872218937%_))))
                                         (_%loop218871218930%_
                                          _%lp-tl218874218942%_
                                          (cons _%lp-hd218873218940%_
                                                _%rand218875218935%_))))
                                     (let ((_%rand218876218945%_
                                            (reverse _%rand218875218935%_)))
                                       (_%__kont220409220410%_
                                        _%rand218876218945%_
                                        _%hd218866218920%_))))))
                       (_%loop218871218930%_ _%target218868218925%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220403220404%_))
                  (let ((_%e218842219024%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220403220404%_))))
                    (let ((_%tl218844219029%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218842219024%_)))
                          (_%hd218843219027%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218842219024%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd218843219027%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd218843219027%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218844219029%_))
                                  (let ((_%e218845219032%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218844219029%_))))
                                    (let ((_%tl218847219037%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218845219032%_)))
                                          (_%hd218846219035%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218845219032%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl218847219037%_))
                                          (_%__kont220405220406%_)
                                          (_%__kont220413220414%_))))
                                  (_%__kont220413220414%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd218843219027%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218844219029%_))
                                      (let ((_%e218851219009%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl218844219029%_))))
                                        (let ((_%tl218853219014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218851219009%_)))
                                              (_%hd218852219012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218851219009%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218853219014%_))
                                              (_%__kont220407220408%_)
                                              (_%__kont220413220414%_))))
                                      (_%__kont220413220414%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd218843219027%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl218844219029%_))
                                          (let ((_%e218859218901%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl218844219029%_))))
                                            (let ((_%tl218861218906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e218859218901%_)))
                                                  (_%hd218860218904%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e218859218901%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd218860218904%_))
                                                  (let ((_%e218862218909%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd218860218904%_))))
                                                    (let ((_%tl218864218914%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e218862218909%_)))
                                                          (_%hd218863218912%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e218862218909%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd218863218912%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd218863218912%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl218864218914%_))
                          (let ((_%e218865218917%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl218864218914%_))))
                            (let ((_%tl218867218922%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218865218917%_)))
                                  (_%hd218866218920%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218865218917%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218867218922%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl218861218906%_))
                                      (let ((_%__splice220411220412%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl218861218906%_
                                                '0))))
                                        (let ((_%tl218870218927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220411220412%_
                                                  '1)))
                                              (_%target218868218925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220411220412%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218870218927%_))
                                              (_%__match220492220493%_
                                               _%e218842219024%_
                                               _%hd218843219027%_
                                               _%tl218844219029%_
                                               _%e218859218901%_
                                               _%hd218860218904%_
                                               _%tl218861218906%_
                                               _%e218862218909%_
                                               _%hd218863218912%_
                                               _%tl218864218914%_
                                               _%e218865218917%_
                                               _%hd218866218920%_
                                               _%tl218867218922%_
                                               _%__splice220411220412%_
                                               _%target218868218925%_
                                               _%tl218870218927%_)
                                              (_%__kont220413220414%_))))
                                      (_%__kont220413220414%_))
                                  (_%__kont220413220414%_))))
                          (_%__kont220413220414%_))
                      (_%__kont220413220414%_))
                  (_%__kont220413220414%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont220413220414%_))))
                                          (_%__kont220413220414%_))
                                      (_%__kont220413220414%_))))
                          (_%__kont220413220414%_))))
                  (_%__kont220413220414%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx218830%_ _%klass218831%_)
        (let ((_%expr-type218833%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx218830%_))))
          (if _%expr-type218833%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type218833%_ _%klass218831%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx218808%_ _%expr218809%_ _%type218810%_)
        (if (not _%type218810%_)
            '#f
            (let ((_%$e218813%_
                   (eq? (##structure-ref _%type218810%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e218813%_
                  _%$e218813%_
                  (let ((_%expr-type218817%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr218809%_))))
                    (if (not _%expr-type218817%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type218817%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e218821%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type218817%_
                                      'gxc#!abort::t))))
                              (if _%$e218821%_
                                  _%$e218821%_
                                  (let ((_%$e218824%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type218817%_
                                            _%type218810%_))))
                                    (if _%$e218824%_
                                        _%$e218824%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type218810%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type218810%_
                                                   _%expr-type218817%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx218808%_
                                                   _%expr218809%_
                                                   _%expr-type218817%_
                                                   _%type218810%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self218622%_ _%ctx218623%_ _%stx218624%_ _%args218625%_)
        (let* ((_%self218628%_ _%self218622%_)
               (_%klass218638%_
                (let ((__tmp221012
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self218628%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx218624%_ __tmp221012)))
               (_%fields218640%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass218638%_
                           '5
                           '#f
                           '#f))))
               (_%args218646%_
                (map (lambda (_%g218641218643%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx218623%_ _%g218641218643%_)))
                     _%args218625%_))
               (_%inline-make-object218648%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self218628%_
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
                           _%self218628%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields218640%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass218651%_ _%klass218638%_)
               (_%$e218665%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass218651%_ '6 '#f '#f))))
          (if _%$e218665%_
              ((lambda (_%ctor218668%_)
                 (let ((_%$obj218670%_
                        (let ((__tmp221013
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp221013)))
                       (_%ctor-impl218671%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass218651%_
                           _%ctor218668%_))))
                   (let ((__tmp221014
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj218670%_ '())
                                                  (cons _%inline-make-object218648%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl218671%_
                                                            (let ((__tmp221015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl218671%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj218670%_ '()))
                                             _%args218646%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp221015
                       _%stx218624%_
                       _%ctx218623%_))
                    (let ((_%$ctor218673%_
                           (let ((__tmp221016
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp221016))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor218673%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218628%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj218670%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor218668%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor218673%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor218673%_ '()))
                              (cons (cons '%#ref (cons _%$obj218670%_ '()))
                                    _%args218646%_)))
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
                             _%self218628%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor218668%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj218670%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp221014 _%stx218624%_))))
               _%$e218665%_)
              (let ((_%$e218675%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass218651%_
                        '10
                        '#f
                        '#f))))
                (if _%$e218675%_
                    ((lambda (_%metaclass218678%_)
                       (let* ((_%$obj218680%_
                               (let ((__tmp221017
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp221017)))
                              (_%metakons218682%_
                               (let ((__tmp221018
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx218624%_
                                         _%metaclass218678%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp221018
                                  'instance-init!)))
                              (__tmp221019
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj218680%_
                                                             '())
                                                       (cons _%inline-make-object218648%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons218682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp221020
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons218682%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self218628%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj218680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args218646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp221020
                            _%stx218624%_
                            _%ctx218623%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self218628%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj218680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args218646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj218680%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp221019 _%stx218624%_)))
                     _%$e218675%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass218651%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp221021
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args218646%_))))
                              (declare (not safe))
                              (##fx= __tmp221021 _%fields218640%_))
                            (let ((__tmp221022
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self218628%_
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
                                              _%self218628%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args218646%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp221022
                               _%stx218624%_))
                            (let ((__tmp221024
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self218628%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp221023
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass218651%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx218624%_
                               __tmp221024
                               __tmp221023)))
                        (let ((_%$obj218687%_
                               (let ((__tmp221025
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp221025))))
                          (let _%lp218689%_ ((_%rest218691%_ _%args218646%_)
                                             (_%initializers218692%_ '()))
                            (let* ((_%__stx220495220496%_ _%rest218691%_)
                                   (_%g218696218717%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx220495220496%_)))))
                              (let ((_%__kont220497220498%_
                                     (lambda (_%g218698218771%_
                                              _%g218699218772%_
                                              _%g218700218773%_)
                                       (let* ((_%slot218800%_
                                               (let ((__tmp221026
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g218700218773%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp221026)))
                                              (_%off218802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass218651%_
                                                  _%slot218800%_))))
                                         (if _%off218802%_
                                             (_%lp218689%_
                                              _%g218698218771%_
                                              (cons (cons _%off218802%_
                                                          _%g218699218772%_)
                                                    _%initializers218692%_))
                                             (let ((__tmp221027
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218628%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx218624%_
                                                __tmp221027
                                                _%slot218800%_))))))
                                    (_%__kont220499220500%_
                                     (lambda ()
                                       (let ((__tmp221028
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj218687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object218648%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp221031
                                     (cons (cons '%#ref
                                                 (cons _%$obj218687%_ '()))
                                           '()))
                                    (__tmp221029
                                     (let ((__tmp221030
                                            (lambda (_%i218731%_ _%r218732%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self218628%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i218731%_) '()))
                              (cons (cons '%#ref (cons _%$obj218687%_ '()))
                                    (cons (cdr _%i218731%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r218732%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp221030
                                        '()
                                        _%initializers218692%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp221031 __tmp221029)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221028
                                          _%stx218624%_))))
                                    (_%__kont220501220502%_
                                     (lambda ()
                                       (let ((__tmp221032
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj218687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object218648%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args218646%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj218687%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221032
                                          _%stx218624%_)))))
                                (let* ((_%g218694218734%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx220495220496%_))
                                              (_%__kont220499220500%_)
                                              (_%__kont220501220502%_))))
                                       (_%__match220532220533%_
                                        (lambda (_%e218701218739%_
                                                 _%hd218702218742%_
                                                 _%tl218703218744%_
                                                 _%e218704218747%_
                                                 _%hd218705218750%_
                                                 _%tl218706218752%_
                                                 _%e218707218755%_
                                                 _%hd218708218758%_
                                                 _%tl218709218760%_
                                                 _%e218710218763%_
                                                 _%hd218711218766%_
                                                 _%tl218712218768%_)
                                          (let ((_%g218698218771%_
                                                 _%tl218712218768%_)
                                                (_%g218699218772%_
                                                 _%hd218711218766%_)
                                                (_%g218700218773%_
                                                 _%hd218708218758%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g218700218773%_))
                                                (_%__kont220497220498%_
                                                 _%g218698218771%_
                                                 _%g218699218772%_
                                                 _%g218700218773%_)
                                                (_%__kont220501220502%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx220495220496%_))
                                      (let ((_%e218701218739%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx220495220496%_))))
                                        (let ((_%tl218703218744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218701218739%_)))
                                              (_%hd218702218742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218701218739%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd218702218742%_))
                                              (let ((_%e218704218747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd218702218742%_))))
                                                (let ((_%tl218706218752%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e218704218747%_)))
                                                      (_%hd218705218750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e218704218747%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd218705218750%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd218705218750%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl218706218752%_))
                      (let ((_%e218707218755%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl218706218752%_))))
                        (let ((_%tl218709218760%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218707218755%_)))
                              (_%hd218708218758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218707218755%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218709218760%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218703218744%_))
                                  (let ((_%e218710218763%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218703218744%_))))
                                    (let ((_%tl218712218768%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218710218763%_)))
                                          (_%hd218711218766%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218710218763%_))))
                                      (_%__match220532220533%_
                                       _%e218701218739%_
                                       _%hd218702218742%_
                                       _%tl218703218744%_
                                       _%e218704218747%_
                                       _%hd218705218750%_
                                       _%tl218706218752%_
                                       _%e218707218755%_
                                       _%hd218708218758%_
                                       _%tl218709218760%_
                                       _%e218710218763%_
                                       _%hd218711218766%_
                                       _%tl218712218768%_)))
                                  (_%__kont220501220502%_))
                              (_%__kont220501220502%_))))
                      (_%__kont220501220502%_))
                  (_%__kont220501220502%_))
              (_%__kont220501220502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont220501220502%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g218694218734%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self218405%_ _%ctx218406%_ _%stx218407%_ _%args218408%_)
        (let* ((_%self218411%_ _%self218405%_)
               (_%arguments-ok?218421%_
                (let ((__method220976
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self218411%_ 'check-arguments))))
                  (if __method220976
                      (let ()
                        (declare (not safe))
                        (__method220976
                         _%self218411%_
                         _%ctx218406%_
                         _%stx218407%_
                         _%args218408%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self218411%_
                                 'check-arguments))
                        '#!void))))
               (_%g218423218433%_
                (lambda (_%g218424218430%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218424218430%_))))
               (_%g218422218497%_
                (lambda (_%g218424218436%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218424218436%_))
                      (let ((_%e218426218438%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g218424218436%_))))
                        (let ((_%hd218427218441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218426218438%_)))
                              (_%tl218428218443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218426218438%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218428218443%_))
                              ((lambda (_%g218425218446%_)
                                 (let* ((_%klass218459%_
                                         (let ((__tmp221033
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218411%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx218407%_
                                            __tmp221033)))
                                        (_%field218461%_
                                         (let ((__tmp221034
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218411%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass218459%_
                                            __tmp221034)))
                                        (_%object218463%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx218406%_
                                            _%g218425218446%_)))
                                        (_%klass218466%_ _%klass218459%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass218466%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp221035
                                              (cons (if (or _%arguments-ok?218421%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218411%_
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
                                 _%self218411%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field218461%_ '()))
                        (cons _%object218463%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221035
                                          _%stx218407%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass218466%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp221036
                                                  (cons (if (or _%arguments-ok?218421%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218411%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218411%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field218461%_ '()))
                            (cons _%object218463%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221036
                                              _%stx218407%_))
                                           (let ((_%$e218485%_
                                                  (let ((__tmp221037
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self218411%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass218466%_
                                                     __tmp221037))))
                                             (if _%$e218485%_
                                                 ((lambda (_%klass218488%_)
                                                    (let ((__tmp221038
                                                           (cons (if (or _%arguments-ok?218421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218411%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self218411%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field218461%_ '()))
                                     (cons _%object218463%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp221038 _%stx218407%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e218485%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self218411%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp221039
                                                            (let ((_%$obj218494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp221040
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp221040))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj218494%_ '())
                                              (cons _%object218463%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass218466%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj218494%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218411%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218461%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj218494%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?218421%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj218494%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self218411%_
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
                                                             _%self218411%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj218494%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self218411%_
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
               (gxc#xform-wrap-source __tmp221039 _%stx218407%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp221041
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object218463%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218411%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp221041 _%stx218407%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd218427218441%_)
                              (_%g218423218433%_ _%g218424218436%_))))
                      (_%g218423218433%_ _%g218424218436%_)))))
          (_%g218422218497%_ _%args218408%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass220263 __method-table220264)
        (let ((__check-arguments220265
               (let ((__tmp221042
                      (lambda ()
                        (let ((__method220266
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220264
                                  'check-arguments
                                  '#f))))
                          (if __method220266
                              __method220266
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp221042)))
              (__slot220267
               (let ((__slot220268
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass220263 'slot))))
                 (if __slot220268
                     __slot220268
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self218405%_ _%ctx218406%_ _%stx218407%_ _%args218408%_)
            (let* ((_%self218411%_ _%self218405%_)
                   (_%arguments-ok?218421%_
                    ((force __check-arguments220265)
                     _%self218411%_
                     _%ctx218406%_
                     _%stx218407%_
                     _%args218408%_))
                   (_%g218423218433%_
                    (lambda (_%g218424218430%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g218424218430%_))))
                   (_%g218422218497%_
                    (lambda (_%g218424218436%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g218424218436%_))
                          (let ((_%e218426218438%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g218424218436%_))))
                            (let ((_%hd218427218441%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218426218438%_)))
                                  (_%tl218428218443%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218426218438%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218428218443%_))
                                  ((lambda (_%g218425218446%_)
                                     (let* ((_%klass218459%_
                                             (let ((__tmp221043
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218411%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx218407%_
                                                __tmp221043)))
                                            (_%field218461%_
                                             (let ((__tmp221044
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218411%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass218459%_
                                                __tmp221044)))
                                            (_%object218463%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx218406%_
                                                _%g218425218446%_)))
                                            (_%klass218466%_ _%klass218459%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass218466%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp221045
                                                  (cons (if (or _%arguments-ok?218421%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218411%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218411%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field218461%_ '()))
                            (cons _%object218463%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221045
                                              _%stx218407%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass218466%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp221046
                                                      (cons (if (or _%arguments-ok?218421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self218411%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218411%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field218461%_ '()))
                                (cons _%object218463%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp221046
                                                  _%stx218407%_))
                                               (let ((_%$e218485%_
                                                      (let ((__tmp221047
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self218411%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass218466%_ __tmp221047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e218485%_
                                                     ((lambda (_%klass218488%_)
                                                        (let ((__tmp221048
                                                               (cons (if (or _%arguments-ok?218421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218411%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self218411%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field218461%_ '()))
                                         (cons _%object218463%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp221048 _%stx218407%_)))
              _%$e218485%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self218411%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp221049
                                                                (let ((_%$obj218494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp221050
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp221050))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj218494%_ '())
                                                  (cons _%object218463%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass218466%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj218494%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218411%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field218461%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj218494%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?218421%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj218494%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self218411%_
                               __slot220267
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
                        (##unchecked-structure-ref _%self218411%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj218494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218411%_
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
                   (gxc#xform-wrap-source __tmp221049 _%stx218407%_))
                 (let ((__tmp221051
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object218463%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218411%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp221051 _%stx218407%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd218427218441%_)
                                  (_%g218423218433%_ _%g218424218436%_))))
                          (_%g218423218433%_ _%g218424218436%_)))))
              (_%g218422218497%_ _%args218408%_))))))
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
      (lambda (_%self218169%_ _%ctx218170%_ _%stx218171%_ _%args218172%_)
        (let* ((_%self218175%_ _%self218169%_)
               (_%arguments-ok?218185%_
                (let ((__method220977
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self218175%_ 'check-arguments))))
                  (if __method220977
                      (let ()
                        (declare (not safe))
                        (__method220977
                         _%self218175%_
                         _%ctx218170%_
                         _%stx218171%_
                         _%args218172%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self218175%_
                                 'check-arguments))
                        '#!void))))
               (_%g218187218201%_
                (lambda (_%g218188218198%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218188218198%_))))
               (_%g218186218280%_
                (lambda (_%g218188218204%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218188218204%_))
                      (let ((_%e218191218206%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g218188218204%_))))
                        (let ((_%hd218192218209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218191218206%_)))
                              (_%tl218193218211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218191218206%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218193218211%_))
                              (let ((_%e218194218214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl218193218211%_))))
                                (let ((_%hd218195218217%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218194218214%_)))
                                      (_%tl218196218219%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218194218214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl218196218219%_))
                                      ((lambda (_%g218189218222%_
                                                _%g218190218223%_)
                                         (let* ((_%klass218239%_
                                                 (let ((__tmp221052
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218175%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx218171%_
                                                    __tmp221052)))
                                                (_%field218241%_
                                                 (let ((__tmp221053
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218175%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass218239%_
                                                    __tmp221053)))
                                                (_%object218243%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx218170%_
                                                    _%g218190218223%_)))
                                                (_%value218245%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx218170%_
                                                    _%g218189218222%_)))
                                                (_%klass218248%_
                                                 _%klass218239%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass218248%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp221054
                                                      (cons (if (or _%arguments-ok?218185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self218175%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218175%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field218241%_ '()))
                                (cons _%object218243%_
                                      (cons _%value218245%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp221054
                                                  _%stx218171%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass218248%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp221055
                                                          (cons (if (or _%arguments-ok?218185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self218175%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218175%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218241%_ '()))
                                    (cons _%object218243%_
                                          (cons _%value218245%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp221055
                                                      _%stx218171%_))
                                                   (let ((_%$e218268%_
                                                          (let ((__tmp221056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218175%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass218248%_
                     __tmp221056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e218268%_
                                                         ((lambda (_%klass218271%_)
                                                            (let ((__tmp221057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?218185%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218175%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self218175%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field218241%_ '()))
                                             (cons _%object218243%_
                                                   (cons _%value218245%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221057 _%stx218171%_)))
                  _%$e218268%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self218175%_ '4 '#f '#f))
                     (let ((__tmp221058
                            (let ((_%$obj218277%_
                                   (let ((__tmp221059
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp221059))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj218277%_ '())
                                                      (cons _%object218243%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass218248%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj218277%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self218175%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field218241%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj218277%_
                                                              '()))
                                                  (cons _%value218245%_
                                                        '())))))
                          (cons (if _%arguments-ok?218185%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self218175%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value218245%_ '())))))
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
                             _%self218175%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj218277%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218175%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value218245%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp221058 _%stx218171%_))
                     (let ((__tmp221060
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object218243%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self218175%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value218245%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp221060
                        _%stx218171%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd218195218217%_
                                       _%hd218192218209%_)
                                      (_%g218187218201%_ _%g218188218204%_))))
                              (_%g218187218201%_ _%g218188218204%_))))
                      (_%g218187218201%_ _%g218188218204%_)))))
          (_%g218186218280%_ _%args218172%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass220269 __method-table220270)
        (let ((__check-arguments220271
               (let ((__tmp221061
                      (lambda ()
                        (let ((__method220272
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220270
                                  'check-arguments
                                  '#f))))
                          (if __method220272
                              __method220272
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp221061))))
          (lambda (_%self218169%_ _%ctx218170%_ _%stx218171%_ _%args218172%_)
            (let* ((_%self218175%_ _%self218169%_)
                   (_%arguments-ok?218185%_
                    ((force __check-arguments220271)
                     _%self218175%_
                     _%ctx218170%_
                     _%stx218171%_
                     _%args218172%_))
                   (_%g218187218201%_
                    (lambda (_%g218188218198%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g218188218198%_))))
                   (_%g218186218280%_
                    (lambda (_%g218188218204%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g218188218204%_))
                          (let ((_%e218191218206%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g218188218204%_))))
                            (let ((_%hd218192218209%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218191218206%_)))
                                  (_%tl218193218211%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218191218206%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218193218211%_))
                                  (let ((_%e218194218214%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218193218211%_))))
                                    (let ((_%hd218195218217%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218194218214%_)))
                                          (_%tl218196218219%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218194218214%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl218196218219%_))
                                          ((lambda (_%g218189218222%_
                                                    _%g218190218223%_)
                                             (let* ((_%klass218239%_
                                                     (let ((__tmp221062
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218175%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx218171%_
                                                        __tmp221062)))
                                                    (_%field218241%_
                                                     (let ((__tmp221063
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218175%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass218239%_
                                                        __tmp221063)))
                                                    (_%object218243%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx218170%_
                                                        _%g218190218223%_)))
                                                    (_%value218245%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx218170%_
                                                        _%g218189218222%_)))
                                                    (_%klass218248%_
                                                     _%klass218239%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass218248%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp221064
                                                          (cons (if (or _%arguments-ok?218185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self218175%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218175%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218241%_ '()))
                                    (cons _%object218243%_
                                          (cons _%value218245%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp221064
                                                      _%stx218171%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass218248%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp221065
                                                              (cons (if (or _%arguments-ok?218185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self218175%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218175%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field218241%_ '()))
                                        (cons _%object218243%_
                                              (cons _%value218245%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp221065 _%stx218171%_))
               (let ((_%$e218268%_
                      (let ((__tmp221066
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218175%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass218248%_
                         __tmp221066))))
                 (if _%$e218268%_
                     ((lambda (_%klass218271%_)
                        (let ((__tmp221067
                               (cons (if (or _%arguments-ok?218185%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self218175%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self218175%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field218241%_
                                                             '()))
                                                 (cons _%object218243%_
                                                       (cons _%value218245%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp221067 _%stx218171%_)))
                      _%$e218268%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218175%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp221068
                                (let ((_%$obj218277%_
                                       (let ((__tmp221069
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp221069))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj218277%_
                                                                '())
                                                          (cons _%object218243%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass218248%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj218277%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self218175%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field218241%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value218245%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?218185%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj218277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self218175%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value218245%_ '())))))
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
                                 _%self218175%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj218277%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218175%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value218245%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp221068 _%stx218171%_))
                         (let ((__tmp221070
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object218243%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self218175%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value218245%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp221070
                            _%stx218171%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd218195218217%_
                                           _%hd218192218209%_)
                                          (_%g218187218201%_
                                           _%g218188218204%_))))
                                  (_%g218187218201%_ _%g218188218204%_))))
                          (_%g218187218201%_ _%g218188218204%_)))))
              (_%g218186218280%_ _%args218172%_))))))
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
      (lambda (_%self217985%_ _%ctx217986%_ _%stx217987%_ _%args217988%_)
        (let* ((_%self217991%_ _%self217985%_)
               (_%self218000218010%_ _%self217991%_)
               (_%E218002218013%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self218000218010%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K218003218023%_
                (lambda (_%inline218016%_ _%dispatch218017%_ _%arity218018%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self217991%_
                         _%args217988%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx217987%_
                         _%arity218018%_)))
                  (if _%inline218016%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp221071 (_%inline218016%_ _%stx217987%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp221071
                           _%stx217987%_
                           _%ctx217986%_)))
                      (if (and _%dispatch218017%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch218017%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch218017%_))
                            (let ((__tmp221072
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch218017%_
                                                           '()))
                                               _%args217988%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp221072
                               _%stx217987%_
                               _%ctx217986%_)))
                          (gxc#!procedure::optimize-call
                           _%self217991%_
                           _%ctx217986%_
                           _%stx217987%_
                           _%args217988%_)))))
               (_%e218004218026%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self218000218010%_ '1 '#f '#f)))
               (_%e218005218029%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self218000218010%_ '2 '#f '#f)))
               (_%e218006218032%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self218000218010%_ '3 '#f '#f)))
               (_%arity218035%_ _%e218006218032%_)
               (_%e218007218037%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self218000218010%_ '4 '#f '#f)))
               (_%dispatch218040%_ _%e218007218037%_)
               (_%e218008218042%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self218000218010%_ '5 '#f '#f)))
               (_%inline218045%_ _%e218008218042%_))
          (_%K218003218023%_
           _%inline218045%_
           _%dispatch218040%_
           _%arity218035%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self217837%_ _%ctx217838%_ _%stx217839%_ _%args217840%_)
        (let* ((_%self217843%_ _%self217837%_)
               (_%$e217857%_
                (let ((__tmp221074
                       (lambda (_%g217852217854%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g217852217854%_
                            _%args217840%_))))
                      (__tmp221073
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self217843%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp221074 __tmp221073))))
          (if _%$e217857%_
              ((lambda (_%clause217860%_)
                 (let ((__method220978
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause217860%_ 'optimize-call))))
                   (if __method220978
                       (let ()
                         (declare (not safe))
                         (__method220978
                          _%clause217860%_
                          _%ctx217838%_
                          _%stx217839%_
                          _%args217840%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause217860%_
                                  'optimize-call))
                         '#!void))))
               _%$e217857%_)
              (let ((__tmp221075
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self217843%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx217839%_
                 __tmp221075))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self217578%_ _%ctx217579%_ _%stx217580%_ _%args217581%_)
        (let* ((_%self217584%_ _%self217578%_)
               (_%self217593217602%_ _%self217584%_)
               (_%E217595217605%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self217593217602%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K217596217696%_
                (lambda (_%dispatch217608%_ _%table217609%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch217608%_))
                      (let* ((_%g217610217620%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch217608%_)))
                             (_%else217612217628%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch217608%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx217579%_
                                   _%stx217580%_))))
                             (_%K217614217677%_
                              (lambda (_%main217631%_ _%keys217632%_)
                                (let ((_g221076_
                                       (gxc#!kw-lambda-split-args
                                        _%stx217580%_
                                        _%args217581%_)))
                                  (begin
                                    (let ((_g221077_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g221076_)
                                                 (##values-length _g221076_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g221077_ 2)))
                                          (error "Context expects 2 values"
                                                 _g221077_)))
                                    (let ((_%pargs217634%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g221076_ 0)))
                                          (_%kwargs217635%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g221076_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main217631%_))
                                        (if _%table217609%_
                                            (let ((_%xargs217643%_
                                                   (map (lambda (_%key217637%_)
                                                          (let ((_%$e217639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key217637%_ _%kwargs217635%_))))
                    (if _%$e217639%_ _%$e217639%_ '(%#ref absent-value))))
                _%keys217632%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw217645%_)
                                                 (if (memq (car _%kw217645%_)
                                                           _%keys217632%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx217580%_
                                                        _%keys217632%_
                                                        _%kw217645%_))))
                                               _%kwargs217635%_)
                                              (let ((__tmp221078
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main217631%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs217634%_
                                  _%xargs217643%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp221078
                                                 _%stx217580%_
                                                 _%ctx217579%_)))
                                            (let* ((_%kwt217647%_
                                                    (let ((__tmp221079
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp221079)))
                                                   (_%kwvars217651%_
                                                    (map (lambda (_%_217649%_)
                                                           (let ((__tmp221080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp221080)))
                 _%kwargs217635%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind217656%_
                                                    (map (lambda (_%kw217653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217654%_)
                   (cons (cons _%kwvar217654%_ '())
                         (cons (cdr _%kw217653%_) '())))
                 _%kwargs217635%_
                 _%kwvars217651%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset217661%_
                                                    (map (lambda (_%kw217658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217659%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt217647%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw217658%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar217659%_
                                                             '()))
                                                 '()))))))
                 _%kwargs217635%_
                 _%kwvars217651%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs217666%_
                                                    (map (lambda (_%kw217663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217664%_)
                   (cons (car _%kw217663%_)
                         (cons '%#ref (cons _%kwvar217664%_ '()))))
                 _%kwargs217635%_
                 _%kwvars217651%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs217674%_
                                                    (map (lambda (_%key217668%_)
                                                           (let ((_%$e217670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key217668%_ _%xkwargs217666%_))))
                     (if _%$e217670%_ _%$e217670%_ '(%#ref absent-value))))
                 _%keys217632%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp221081
                                                    (cons '%#let-values
                                                          (cons _%kwbind217656%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt217647%_ '())
                                                      (cons (let ((__tmp221082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs217635%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221082 _%stx217580%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp221083
                                                             (cons (let ((__tmp221084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main217631%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt217647%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs217634%_
                                                       _%xargs217674%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp221084 _%stx217580%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp221083 _%kwset217661%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp221081
                                               _%stx217580%_
                                               _%ctx217579%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g217610217620%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e217615217680%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217610217620%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e217616217683%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217610217620%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e217617217686%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217610217620%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys217689%_ _%e217617217686%_)
                                   (_%e217618217691%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217610217620%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main217694%_ _%e217618217691%_))
                              (_%K217614217677%_
                               _%main217694%_
                               _%keys217689%_))
                            (_%else217612217628%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx217579%_ _%stx217580%_)))))
               (_%e217597217699%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217593217602%_ '1 '#f '#f)))
               (_%e217598217702%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217593217602%_ '2 '#f '#f)))
               (_%e217599217705%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217593217602%_ '3 '#f '#f)))
               (_%table217708%_ _%e217599217705%_)
               (_%e217600217710%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217593217602%_ '4 '#f '#f)))
               (_%dispatch217713%_ _%e217600217710%_))
          (_%K217596217696%_ _%dispatch217713%_ _%table217708%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx217191%_ _%args217192%_)
        (let _%lp217194%_ ((_%rest217196%_ _%args217192%_)
                           (_%pargs217197%_ '())
                           (_%kwargs217198%_ '()))
          (let* ((_%__stx220537220538%_ _%rest217196%_)
                 (_%g217204217256%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx220537220538%_)))))
            (let ((_%__kont220539220540%_
                   (lambda (_%g217206217435%_ _%g217207217436%_)
                     (_%lp217194%_
                      _%g217206217435%_
                      (cons _%g217207217436%_ _%pargs217197%_)
                      _%kwargs217198%_)))
                  (_%__kont220541220542%_
                   (lambda (_%g217221217381%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1
                                cons
                                _%g217221217381%_
                                _%pargs217197%_))
                             (reverse _%kwargs217198%_))))
                  (_%__kont220543220544%_
                   (lambda (_%g217232217328%_
                            _%g217233217329%_
                            _%g217234217330%_)
                     (let ((_%kw217347%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g217234217330%_))))
                       (if (assq _%kw217347%_ _%kwargs217198%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx217191%_
                              _%kw217347%_))
                           (_%lp217194%_
                            _%g217232217328%_
                            _%pargs217197%_
                            (cons (cons _%kw217347%_ _%g217233217329%_)
                                  _%kwargs217198%_))))))
                  (_%__kont220545220546%_
                   (lambda (_%g217247217276%_ _%g217248217277%_)
                     (_%lp217194%_
                      _%g217247217276%_
                      (cons _%g217248217277%_ _%pargs217197%_)
                      _%kwargs217198%_)))
                  (_%__kont220547220548%_
                   (lambda ()
                     (values (reverse _%pargs217197%_)
                             (reverse _%kwargs217198%_)))))
              (let ((_%__match220644220645%_
                     (lambda (_%e217235217296%_
                              _%hd217236217299%_
                              _%tl217237217301%_
                              _%e217238217304%_
                              _%hd217239217307%_
                              _%tl217240217309%_
                              _%e217241217312%_
                              _%hd217242217315%_
                              _%tl217243217317%_
                              _%e217244217320%_
                              _%hd217245217323%_
                              _%tl217246217325%_)
                       (let ((_%g217232217328%_ _%tl217246217325%_)
                             (_%g217233217329%_ _%hd217245217323%_)
                             (_%g217234217330%_ _%hd217242217315%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g217234217330%_))
                             (_%__kont220543220544%_
                              _%g217232217328%_
                              _%g217233217329%_
                              _%g217234217330%_)
                             (_%__kont220545220546%_
                              _%tl217237217301%_
                              _%hd217236217299%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx220537220538%_))
                    (let ((_%e217208217400%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx220537220538%_))))
                      (let ((_%tl217210217405%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217208217400%_)))
                            (_%hd217209217403%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217208217400%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd217209217403%_))
                            (let ((_%e217211217408%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd217209217403%_))))
                              (let ((_%tl217213217413%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e217211217408%_)))
                                    (_%hd217212217411%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e217211217408%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd217212217411%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd217212217411%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217213217413%_))
                                            (let ((_%e217214217416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl217213217413%_))))
                                              (let ((_%tl217216217421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217214217416%_)))
                                                    (_%hd217215217419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217214217416%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd217215217419%_))
                                                    (let ((_%e217217217424%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd217215217419%_))))
                                                      (if (equal? _%e217217217424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl217216217421%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl217210217405%_))
                          (let ((_%e217218217427%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl217210217405%_))))
                            (let ((_%tl217220217432%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217218217427%_)))
                                  (_%hd217219217430%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217218217427%_))))
                              (_%__kont220539220540%_
                               _%tl217220217432%_
                               _%hd217219217430%_)))
                          (_%__kont220545220546%_
                           _%tl217210217405%_
                           _%hd217209217403%_))
                      (_%__kont220545220546%_
                       _%tl217210217405%_
                       _%hd217209217403%_))
                  (if (equal? _%e217217217424%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217216217421%_))
                          (_%__kont220541220542%_ _%tl217210217405%_)
                          (_%__kont220545220546%_
                           _%tl217210217405%_
                           _%hd217209217403%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217216217421%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217210217405%_))
                              (let ((_%e217244217320%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl217210217405%_))))
                                (let ((_%tl217246217325%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217244217320%_)))
                                      (_%hd217245217323%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217244217320%_))))
                                  (_%__match220644220645%_
                                   _%e217208217400%_
                                   _%hd217209217403%_
                                   _%tl217210217405%_
                                   _%e217211217408%_
                                   _%hd217212217411%_
                                   _%tl217213217413%_
                                   _%e217214217416%_
                                   _%hd217215217419%_
                                   _%tl217216217421%_
                                   _%e217244217320%_
                                   _%hd217245217323%_
                                   _%tl217246217325%_)))
                              (_%__kont220545220546%_
                               _%tl217210217405%_
                               _%hd217209217403%_))
                          (_%__kont220545220546%_
                           _%tl217210217405%_
                           _%hd217209217403%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl217216217421%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl217210217405%_))
                                                            (let ((_%e217244217320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl217210217405%_))))
                      (let ((_%tl217246217325%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217244217320%_)))
                            (_%hd217245217323%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217244217320%_))))
                        (_%__match220644220645%_
                         _%e217208217400%_
                         _%hd217209217403%_
                         _%tl217210217405%_
                         _%e217211217408%_
                         _%hd217212217411%_
                         _%tl217213217413%_
                         _%e217214217416%_
                         _%hd217215217419%_
                         _%tl217216217421%_
                         _%e217244217320%_
                         _%hd217245217323%_
                         _%tl217246217325%_)))
                    (_%__kont220545220546%_
                     _%tl217210217405%_
                     _%hd217209217403%_))
                (_%__kont220545220546%_
                 _%tl217210217405%_
                 _%hd217209217403%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont220545220546%_
                                             _%tl217210217405%_
                                             _%hd217209217403%_))
                                        (_%__kont220545220546%_
                                         _%tl217210217405%_
                                         _%hd217209217403%_))
                                    (_%__kont220545220546%_
                                     _%tl217210217405%_
                                     _%hd217209217403%_))))
                            (_%__kont220545220546%_
                             _%tl217210217405%_
                             _%hd217209217403%_))))
                    (_%__kont220547220548%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self217175%_ _%ctx217176%_ _%stx217177%_ _%args217178%_)
        (let ((_%self217181%_ _%self217175%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx217176%_ _%stx217177%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self216865%_ _%stx216866%_)
        (let* ((_%__stx220653220654%_ _%stx216866%_)
               (_%g216869216909%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220653220654%_)))))
          (let ((_%__kont220655220656%_
                 (lambda (_%g216871217013%_ _%g216872217014%_)
                   (let ((_%$e217041%_
                          (member 'return:
                                  (let ((__tmp221085
                                         (lambda (_%g217033217036%_
                                                  _%g217034217038%_)
                                           (cons _%g217033217036%_
                                                 _%g217034217038%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp221085
                                     '()
                                     _%g216872217014%_))
                                  gx#stx-eq?)))
                     (if _%$e217041%_
                         ((lambda (_%tail217044%_)
                            (let ((_%type217046%_
                                   (let ((__tmp221086
                                          (let ((__tmp221087
                                                 (cadr _%tail217044%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp221087))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx216866%_
                                      __tmp221086))))
                              (gxc#check-return-type!
                               _%stx216866%_
                               _%g216871217013%_
                               _%type217046%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self216865%_
                                 _%g216871217013%_))))
                          _%$e217041%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self216865%_
                            _%g216871217013%_))))))
                (_%__kont220659220660%_
                 (lambda (_%g216894216938%_ _%g216895216939%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self216865%_ _%g216894216938%_)))))
            (let ((_%__match220690220691%_
                   (lambda (_%e216873216959%_
                            _%hd216874216962%_
                            _%tl216875216964%_
                            _%e216876216967%_
                            _%hd216877216970%_
                            _%tl216878216972%_
                            _%e216879216975%_
                            _%hd216880216978%_
                            _%tl216881216980%_
                            _%__splice220657220658%_
                            _%target216882216983%_
                            _%tl216884216985%_)
                     (letrec ((_%loop216885216988%_
                               (lambda (_%hd216883216991%_
                                        _%signature216889216993%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd216883216991%_))
                                     (let ((_%e216886216995%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd216883216991%_))))
                                       (let ((_%lp-tl216888217000%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e216886216995%_)))
                                             (_%lp-hd216887216998%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e216886216995%_))))
                                         (_%loop216885216988%_
                                          _%lp-tl216888217000%_
                                          (cons _%lp-hd216887216998%_
                                                _%signature216889216993%_))))
                                     (let ((_%signature216890217003%_
                                            (reverse _%signature216889216993%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl216878216972%_))
                                           (let ((_%e216891217005%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl216878216972%_))))
                                             (let ((_%tl216893217010%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e216891217005%_)))
                                                   (_%hd216892217008%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e216891217005%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl216893217010%_))
                                                   (_%__kont220655220656%_
                                                    _%hd216892217008%_
                                                    _%signature216890217003%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g216869216909%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g216869216909%_))))))))
                       (_%loop216885216988%_ _%target216882216983%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220653220654%_))
                  (let ((_%e216873216959%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220653220654%_))))
                    (let ((_%tl216875216964%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216873216959%_)))
                          (_%hd216874216962%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216873216959%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216875216964%_))
                          (let ((_%e216876216967%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216875216964%_))))
                            (let ((_%tl216878216972%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216876216967%_)))
                                  (_%hd216877216970%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216876216967%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd216877216970%_))
                                  (let ((_%e216879216975%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216877216970%_))))
                                    (let ((_%tl216881216980%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216879216975%_)))
                                          (_%hd216880216978%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216879216975%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd216880216978%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd216880216978%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl216881216980%_))
                                                  (let ((_%__splice220657220658%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl216881216980%_
                                                            '0))))
                                                    (let ((_%tl216884216985%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220657220658%_
                                                              '1)))
                                                          (_%target216882216983%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220657220658%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216884216985%_))
                                                          (_%__match220690220691%_
                                                           _%e216873216959%_
                                                           _%hd216874216962%_
                                                           _%tl216875216964%_
                                                           _%e216876216967%_
                                                           _%hd216877216970%_
                                                           _%tl216878216972%_
                                                           _%e216879216975%_
                                                           _%hd216880216978%_
                                                           _%tl216881216980%_
                                                           _%__splice220657220658%_
                                                           _%target216882216983%_
                                                           _%tl216884216985%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl216878216972%_))
                      (let ((_%e216902216930%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216878216972%_))))
                        (let ((_%tl216904216935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216902216930%_)))
                              (_%hd216903216933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216902216930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216904216935%_))
                              (_%__kont220659220660%_
                               _%hd216903216933%_
                               _%hd216877216970%_)
                              (let ()
                                (declare (not safe))
                                (_%g216869216909%_)))))
                      (let () (declare (not safe)) (_%g216869216909%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216878216972%_))
                                                      (let ((_%e216902216930%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216878216972%_))))
                (let ((_%tl216904216935%_
                       (let () (declare (not safe)) (##cdr _%e216902216930%_)))
                      (_%hd216903216933%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216902216930%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216904216935%_))
                      (_%__kont220659220660%_
                       _%hd216903216933%_
                       _%hd216877216970%_)
                      (let () (declare (not safe)) (_%g216869216909%_)))))
              (let () (declare (not safe)) (_%g216869216909%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216878216972%_))
                                                  (let ((_%e216902216930%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216878216972%_))))
                                                    (let ((_%tl216904216935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216902216930%_)))
                                                          (_%hd216903216933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216902216930%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216904216935%_))
                                                          (_%__kont220659220660%_
                                                           _%hd216903216933%_
                                                           _%hd216877216970%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216869216909%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216869216909%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216878216972%_))
                                              (let ((_%e216902216930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216878216972%_))))
                                                (let ((_%tl216904216935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216902216930%_)))
                                                      (_%hd216903216933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216902216930%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216904216935%_))
                                                      (_%__kont220659220660%_
                                                       _%hd216903216933%_
                                                       _%hd216877216970%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216869216909%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216869216909%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216878216972%_))
                                      (let ((_%e216902216930%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216878216972%_))))
                                        (let ((_%tl216904216935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216902216930%_)))
                                              (_%hd216903216933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216902216930%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216904216935%_))
                                              (_%__kont220659220660%_
                                               _%hd216903216933%_
                                               _%hd216877216970%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g216869216909%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216869216909%_))))))
                          (let () (declare (not safe)) (_%g216869216909%_)))))
                  (let () (declare (not safe)) (_%g216869216909%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx216840%_ _%expr216841%_ _%type216842%_)
        (let ((_%$e216844%_ (not _%type216842%_)))
          (if _%$e216844%_
              _%$e216844%_
              (let ((_%$e216847%_
                     (eq? (##structure-ref _%type216842%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e216847%_
                    _%$e216847%_
                    (let ((_%$e216850%_
                           (eq? (##structure-ref
                                 _%type216842%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e216850%_
                          _%$e216850%_
                          (let ((_%expr-type216854%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr216841%_))))
                            (if (not _%expr-type216854%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx216840%_
                                   _%type216842%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type216854%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx216840%_
                                       _%type216842%_
                                       _%expr-type216854%_))
                                    (let ((_%$e216858%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type216854%_
                                              'gxc#!abort::t))))
                                      (if _%$e216858%_
                                          _%$e216858%_
                                          (let ((_%$e216861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type216854%_
                                                    _%type216842%_))))
                                            (if _%$e216861%_
                                                _%$e216861%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx216840%_
                                                   _%type216842%_
                                                   _%expr-type216854%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self216266%_ _%stx216267%_)
        (let* ((_%__stx220735220736%_ _%stx216267%_)
               (_%g216272216382%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220735220736%_)))))
          (let ((_%__kont220737220738%_
                 (lambda (_%g216274216814%_
                          _%g216275216815%_
                          _%g216276216816%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g216276216816%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self216266%_ _%g216275216815%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self216266%_
                          _%g216274216814%_)))))
                (_%__kont220739220740%_
                 (lambda (_%g216295216640%_
                          _%g216296216641%_
                          _%g216297216642%_
                          _%g216298216643%_)
                   (let ((_%$e216675%_
                          (let ((__tmp221088
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g216298216643%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp221088))))
                     (if _%$e216675%_
                         ((lambda (_%pred-type216678%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type216678%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type216678%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test216683%_
                                        (let ((__tmp221089
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g216298216643%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g216297216642%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp221089
                                           _%stx216267%_
                                           _%self216266%_)))
                                       (_%K216687%_
                                        (let ((__tmp221090
                                               (lambda ()
                                                 (let ((__tmp221093
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self216266%_
                                                             _%g216296216641%_))))
                                                       (__tmp221091
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g216297216642%_))
                            (let ((__tmp221092
                                   (##structure-ref
                                    _%pred-type216678%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx216267%_
                               __tmp221092)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp221093
                                                    gxc#current-compile-path-type
                                                    __tmp221091)))))
                                          (declare (not safe))
                                          (__make-promise __tmp221090)))
                                       (_%E216690%_
                                        (let ((__tmp221094
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self216266%_
                                                    _%g216295216640%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp221094)))
                                       (_%__stx220713220714%_ _%test216683%_)
                                       (_%g216694216708%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx220713220714%_)))))
                                  (let ((_%__kont220715220716%_
                                         (lambda (_%g216696216736%_
                                                  _%g216697216737%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g216696216736%_))
                                               (force _%K216687%_)
                                               (force _%E216690%_))))
                                        (_%__kont220717220718%_
                                         (lambda ()
                                           (let ((__tmp221095
                                                  (cons '%#if
                                                        (cons _%test216683%_
                                                              (cons (force _%K216687%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E216690%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221095
                                              _%stx216267%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx220713220714%_))
                                        (let ((_%e216698216720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx220713220714%_))))
                                          (let ((_%tl216700216725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e216698216720%_)))
                                                (_%hd216699216723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e216698216720%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl216700216725%_))
                                                (let ((_%e216701216728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl216700216725%_))))
                                                  (let ((_%tl216703216733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e216701216728%_)))
                                                        (_%hd216702216731%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e216701216728%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl216703216733%_))
                                                        (_%__kont220715220716%_
                                                         _%hd216702216731%_
                                                         _%hd216699216723%_)
                                                        (_%__kont220717220718%_))))
                                                (_%__kont220717220718%_))))
                                        (_%__kont220717220718%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self216266%_
                                   _%stx216267%_))))
                          _%$e216675%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self216266%_
                            _%stx216267%_))))))
                (_%__kont220741220742%_
                 (lambda (_%g216332216516%_
                          _%g216333216517%_
                          _%g216334216518%_
                          _%g216335216519%_)
                   (gxc#optimize-if%
                    _%self216266%_
                    (let ((__tmp221096
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g216334216518%_
                                       (cons _%g216332216516%_
                                             (cons _%g216333216517%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221096 _%stx216267%_)))))
                (_%__kont220743220744%_
                 (lambda (_%g216363216419%_
                          _%g216364216420%_
                          _%g216365216421%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self216266%_ _%stx216267%_)))))
            (let ((_%__match220942220943%_
                   (lambda (_%e216336216444%_
                            _%hd216337216447%_
                            _%tl216338216449%_
                            _%e216339216452%_
                            _%hd216340216455%_
                            _%tl216341216457%_
                            _%e216342216460%_
                            _%hd216343216463%_
                            _%tl216344216465%_
                            _%e216345216468%_
                            _%hd216346216471%_
                            _%tl216347216473%_
                            _%e216348216476%_
                            _%hd216349216479%_
                            _%tl216350216481%_
                            _%e216351216484%_
                            _%hd216352216487%_
                            _%tl216353216489%_
                            _%e216354216492%_
                            _%hd216355216495%_
                            _%tl216356216497%_
                            _%e216357216500%_
                            _%hd216358216503%_
                            _%tl216359216505%_
                            _%e216360216508%_
                            _%hd216361216511%_
                            _%tl216362216513%_)
                     (let ((_%g216332216516%_ _%hd216361216511%_)
                           (_%g216333216517%_ _%hd216358216503%_)
                           (_%g216334216518%_ _%hd216355216495%_)
                           (_%g216335216519%_ _%hd216352216487%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g216335216519%_ 'not))
                           (_%__kont220741220742%_
                            _%g216332216516%_
                            _%g216333216517%_
                            _%g216334216518%_
                            _%g216335216519%_)
                           (_%__kont220743220744%_
                            _%hd216361216511%_
                            _%hd216358216503%_
                            _%hd216340216455%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220735220736%_))
                  (let ((_%e216277216766%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220735220736%_))))
                    (let ((_%tl216279216771%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216277216766%_)))
                          (_%hd216278216769%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216277216766%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216279216771%_))
                          (let ((_%e216280216774%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216279216771%_))))
                            (let ((_%tl216282216779%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216280216774%_)))
                                  (_%hd216281216777%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216280216774%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd216281216777%_))
                                  (let ((_%e216283216782%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216281216777%_))))
                                    (let ((_%tl216285216787%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216283216782%_)))
                                          (_%hd216284216785%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216283216782%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd216284216785%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd216284216785%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216285216787%_))
                                                  (let ((_%e216286216790%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216285216787%_))))
                                                    (let ((_%tl216288216795%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216286216790%_)))
                                                          (_%hd216287216793%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216286216790%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216288216795%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl216282216779%_))
                      (let ((_%e216289216798%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216282216779%_))))
                        (let ((_%tl216291216803%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216289216798%_)))
                              (_%hd216290216801%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216289216798%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216291216803%_))
                              (let ((_%e216292216806%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216291216803%_))))
                                (let ((_%tl216294216811%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216292216806%_)))
                                      (_%hd216293216809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216292216806%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216294216811%_))
                                      (_%__kont220737220738%_
                                       _%hd216293216809%_
                                       _%hd216290216801%_
                                       _%hd216287216793%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g216272216382%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g216272216382%_)))))
                      (let () (declare (not safe)) (_%g216272216382%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216282216779%_))
                      (let ((_%e216372216403%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216282216779%_))))
                        (let ((_%tl216374216408%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216372216403%_)))
                              (_%hd216373216406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216372216403%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216374216408%_))
                              (let ((_%e216375216411%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216374216408%_))))
                                (let ((_%tl216377216416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216375216411%_)))
                                      (_%hd216376216414%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216375216411%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216377216416%_))
                                      (_%__kont220743220744%_
                                       _%hd216376216414%_
                                       _%hd216373216406%_
                                       _%hd216281216777%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g216272216382%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g216272216382%_)))))
                      (let () (declare (not safe)) (_%g216272216382%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216282216779%_))
                                                      (let ((_%e216372216403%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216282216779%_))))
                (let ((_%tl216374216408%_
                       (let () (declare (not safe)) (##cdr _%e216372216403%_)))
                      (_%hd216373216406%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216372216403%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216374216408%_))
                      (let ((_%e216375216411%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216374216408%_))))
                        (let ((_%tl216377216416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216375216411%_)))
                              (_%hd216376216414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216375216411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216377216416%_))
                              (_%__kont220743220744%_
                               _%hd216376216414%_
                               _%hd216373216406%_
                               _%hd216281216777%_)
                              (let ()
                                (declare (not safe))
                                (_%g216272216382%_)))))
                      (let () (declare (not safe)) (_%g216272216382%_)))))
              (let () (declare (not safe)) (_%g216272216382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd216284216785%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216285216787%_))
                                                      (let ((_%e216308216576%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216285216787%_))))
                (let ((_%tl216310216581%_
                       (let () (declare (not safe)) (##cdr _%e216308216576%_)))
                      (_%hd216309216579%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216308216576%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd216309216579%_))
                      (let ((_%e216311216584%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd216309216579%_))))
                        (let ((_%tl216313216589%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216311216584%_)))
                              (_%hd216312216587%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216311216584%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd216312216587%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd216312216587%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216313216589%_))
                                      (let ((_%e216314216592%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216313216589%_))))
                                        (let ((_%tl216316216597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216314216592%_)))
                                              (_%hd216315216595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216314216592%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216316216597%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216310216581%_))
                                                  (let ((_%e216317216600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216310216581%_))))
                                                    (let ((_%tl216319216605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216317216600%_)))
                                                          (_%hd216318216603%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216317216600%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd216318216603%_))
                                                          (let ((_%e216320216608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd216318216603%_))))
                    (let ((_%tl216322216613%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216320216608%_)))
                          (_%hd216321216611%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216320216608%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd216321216611%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd216321216611%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216322216613%_))
                                  (let ((_%e216323216616%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216322216613%_))))
                                    (let ((_%tl216325216621%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216323216616%_)))
                                          (_%hd216324216619%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216323216616%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216325216621%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216319216605%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216282216779%_))
                                                  (let ((_%e216326216624%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216282216779%_))))
                                                    (let ((_%tl216328216629%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216326216624%_)))
                                                          (_%hd216327216627%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216326216624%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216328216629%_))
                                                          (let ((_%e216329216632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216328216629%_))))
                    (let ((_%tl216331216637%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216329216632%_)))
                          (_%hd216330216635%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216329216632%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216331216637%_))
                          (_%__kont220739220740%_
                           _%hd216330216635%_
                           _%hd216327216627%_
                           _%hd216324216619%_
                           _%hd216315216595%_)
                          (let () (declare (not safe)) (_%g216272216382%_)))))
                  (let () (declare (not safe)) (_%g216272216382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216272216382%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216282216779%_))
                                                  (let ((_%e216372216403%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216282216779%_))))
                                                    (let ((_%tl216374216408%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216372216403%_)))
                                                          (_%hd216373216406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216372216403%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216374216408%_))
                                                          (let ((_%e216375216411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216374216408%_))))
                    (let ((_%tl216377216416%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216375216411%_)))
                          (_%hd216376216414%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216375216411%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216377216416%_))
                          (_%__kont220743220744%_
                           _%hd216376216414%_
                           _%hd216373216406%_
                           _%hd216281216777%_)
                          (let () (declare (not safe)) (_%g216272216382%_)))))
                  (let () (declare (not safe)) (_%g216272216382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216272216382%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216319216605%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216282216779%_))
                                                  (let ((_%e216357216500%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216282216779%_))))
                                                    (let ((_%tl216359216505%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216357216500%_)))
                                                          (_%hd216358216503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216357216500%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216359216505%_))
                                                          (let ((_%e216360216508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216359216505%_))))
                    (let ((_%tl216362216513%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216360216508%_)))
                          (_%hd216361216511%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216360216508%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216362216513%_))
                          (_%__match220942220943%_
                           _%e216277216766%_
                           _%hd216278216769%_
                           _%tl216279216771%_
                           _%e216280216774%_
                           _%hd216281216777%_
                           _%tl216282216779%_
                           _%e216283216782%_
                           _%hd216284216785%_
                           _%tl216285216787%_
                           _%e216308216576%_
                           _%hd216309216579%_
                           _%tl216310216581%_
                           _%e216311216584%_
                           _%hd216312216587%_
                           _%tl216313216589%_
                           _%e216314216592%_
                           _%hd216315216595%_
                           _%tl216316216597%_
                           _%e216317216600%_
                           _%hd216318216603%_
                           _%tl216319216605%_
                           _%e216357216500%_
                           _%hd216358216503%_
                           _%tl216359216505%_
                           _%e216360216508%_
                           _%hd216361216511%_
                           _%tl216362216513%_)
                          (let () (declare (not safe)) (_%g216272216382%_)))))
                  (let () (declare (not safe)) (_%g216272216382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216272216382%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216282216779%_))
                                                  (let ((_%e216372216403%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216282216779%_))))
                                                    (let ((_%tl216374216408%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216372216403%_)))
                                                          (_%hd216373216406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216372216403%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216374216408%_))
                                                          (let ((_%e216375216411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216374216408%_))))
                    (let ((_%tl216377216416%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216375216411%_)))
                          (_%hd216376216414%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216375216411%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216377216416%_))
                          (_%__kont220743220744%_
                           _%hd216376216414%_
                           _%hd216373216406%_
                           _%hd216281216777%_)
                          (let () (declare (not safe)) (_%g216272216382%_)))))
                  (let () (declare (not safe)) (_%g216272216382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216272216382%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216319216605%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216282216779%_))
                                          (let ((_%e216357216500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216282216779%_))))
                                            (let ((_%tl216359216505%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216357216500%_)))
                                                  (_%hd216358216503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216357216500%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216359216505%_))
                                                  (let ((_%e216360216508%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216359216505%_))))
                                                    (let ((_%tl216362216513%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216360216508%_)))
                                                          (_%hd216361216511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216360216508%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216362216513%_))
                                                          (_%__match220942220943%_
                                                           _%e216277216766%_
                                                           _%hd216278216769%_
                                                           _%tl216279216771%_
                                                           _%e216280216774%_
                                                           _%hd216281216777%_
                                                           _%tl216282216779%_
                                                           _%e216283216782%_
                                                           _%hd216284216785%_
                                                           _%tl216285216787%_
                                                           _%e216308216576%_
                                                           _%hd216309216579%_
                                                           _%tl216310216581%_
                                                           _%e216311216584%_
                                                           _%hd216312216587%_
                                                           _%tl216313216589%_
                                                           _%e216314216592%_
                                                           _%hd216315216595%_
                                                           _%tl216316216597%_
                                                           _%e216317216600%_
                                                           _%hd216318216603%_
                                                           _%tl216319216605%_
                                                           _%e216357216500%_
                                                           _%hd216358216503%_
                                                           _%tl216359216505%_
                                                           _%e216360216508%_
                                                           _%hd216361216511%_
                                                           _%tl216362216513%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216272216382%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216272216382%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216272216382%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216282216779%_))
                                          (let ((_%e216372216403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216282216779%_))))
                                            (let ((_%tl216374216408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216372216403%_)))
                                                  (_%hd216373216406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216372216403%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216374216408%_))
                                                  (let ((_%e216375216411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216374216408%_))))
                                                    (let ((_%tl216377216416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216375216411%_)))
                                                          (_%hd216376216414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216375216411%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216377216416%_))
                                                          (_%__kont220743220744%_
                                                           _%hd216376216414%_
                                                           _%hd216373216406%_
                                                           _%hd216281216777%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216272216382%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216272216382%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216272216382%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216319216605%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216282216779%_))
                                      (let ((_%e216357216500%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216282216779%_))))
                                        (let ((_%tl216359216505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216357216500%_)))
                                              (_%hd216358216503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216357216500%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216359216505%_))
                                              (let ((_%e216360216508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216359216505%_))))
                                                (let ((_%tl216362216513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216360216508%_)))
                                                      (_%hd216361216511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216360216508%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216362216513%_))
                                                      (_%__match220942220943%_
                                                       _%e216277216766%_
                                                       _%hd216278216769%_
                                                       _%tl216279216771%_
                                                       _%e216280216774%_
                                                       _%hd216281216777%_
                                                       _%tl216282216779%_
                                                       _%e216283216782%_
                                                       _%hd216284216785%_
                                                       _%tl216285216787%_
                                                       _%e216308216576%_
                                                       _%hd216309216579%_
                                                       _%tl216310216581%_
                                                       _%e216311216584%_
                                                       _%hd216312216587%_
                                                       _%tl216313216589%_
                                                       _%e216314216592%_
                                                       _%hd216315216595%_
                                                       _%tl216316216597%_
                                                       _%e216317216600%_
                                                       _%hd216318216603%_
                                                       _%tl216319216605%_
                                                       _%e216357216500%_
                                                       _%hd216358216503%_
                                                       _%tl216359216505%_
                                                       _%e216360216508%_
                                                       _%hd216361216511%_
                                                       _%tl216362216513%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216272216382%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216272216382%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216272216382%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216282216779%_))
                                      (let ((_%e216372216403%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216282216779%_))))
                                        (let ((_%tl216374216408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216372216403%_)))
                                              (_%hd216373216406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216372216403%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216374216408%_))
                                              (let ((_%e216375216411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216374216408%_))))
                                                (let ((_%tl216377216416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216375216411%_)))
                                                      (_%hd216376216414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216375216411%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216377216416%_))
                                                      (_%__kont220743220744%_
                                                       _%hd216376216414%_
                                                       _%hd216373216406%_
                                                       _%hd216281216777%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216272216382%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216272216382%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216272216382%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216319216605%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216282216779%_))
                                  (let ((_%e216357216500%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216282216779%_))))
                                    (let ((_%tl216359216505%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216357216500%_)))
                                          (_%hd216358216503%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216357216500%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216359216505%_))
                                          (let ((_%e216360216508%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216359216505%_))))
                                            (let ((_%tl216362216513%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216360216508%_)))
                                                  (_%hd216361216511%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216360216508%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216362216513%_))
                                                  (_%__match220942220943%_
                                                   _%e216277216766%_
                                                   _%hd216278216769%_
                                                   _%tl216279216771%_
                                                   _%e216280216774%_
                                                   _%hd216281216777%_
                                                   _%tl216282216779%_
                                                   _%e216283216782%_
                                                   _%hd216284216785%_
                                                   _%tl216285216787%_
                                                   _%e216308216576%_
                                                   _%hd216309216579%_
                                                   _%tl216310216581%_
                                                   _%e216311216584%_
                                                   _%hd216312216587%_
                                                   _%tl216313216589%_
                                                   _%e216314216592%_
                                                   _%hd216315216595%_
                                                   _%tl216316216597%_
                                                   _%e216317216600%_
                                                   _%hd216318216603%_
                                                   _%tl216319216605%_
                                                   _%e216357216500%_
                                                   _%hd216358216503%_
                                                   _%tl216359216505%_
                                                   _%e216360216508%_
                                                   _%hd216361216511%_
                                                   _%tl216362216513%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216272216382%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216272216382%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216272216382%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216282216779%_))
                                  (let ((_%e216372216403%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216282216779%_))))
                                    (let ((_%tl216374216408%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216372216403%_)))
                                          (_%hd216373216406%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216372216403%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216374216408%_))
                                          (let ((_%e216375216411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216374216408%_))))
                                            (let ((_%tl216377216416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216375216411%_)))
                                                  (_%hd216376216414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216375216411%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216377216416%_))
                                                  (_%__kont220743220744%_
                                                   _%hd216376216414%_
                                                   _%hd216373216406%_
                                                   _%hd216281216777%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216272216382%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216272216382%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216272216382%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216319216605%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216282216779%_))
                          (let ((_%e216357216500%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216282216779%_))))
                            (let ((_%tl216359216505%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216357216500%_)))
                                  (_%hd216358216503%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216357216500%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216359216505%_))
                                  (let ((_%e216360216508%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216359216505%_))))
                                    (let ((_%tl216362216513%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216360216508%_)))
                                          (_%hd216361216511%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216360216508%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216362216513%_))
                                          (_%__match220942220943%_
                                           _%e216277216766%_
                                           _%hd216278216769%_
                                           _%tl216279216771%_
                                           _%e216280216774%_
                                           _%hd216281216777%_
                                           _%tl216282216779%_
                                           _%e216283216782%_
                                           _%hd216284216785%_
                                           _%tl216285216787%_
                                           _%e216308216576%_
                                           _%hd216309216579%_
                                           _%tl216310216581%_
                                           _%e216311216584%_
                                           _%hd216312216587%_
                                           _%tl216313216589%_
                                           _%e216314216592%_
                                           _%hd216315216595%_
                                           _%tl216316216597%_
                                           _%e216317216600%_
                                           _%hd216318216603%_
                                           _%tl216319216605%_
                                           _%e216357216500%_
                                           _%hd216358216503%_
                                           _%tl216359216505%_
                                           _%e216360216508%_
                                           _%hd216361216511%_
                                           _%tl216362216513%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216272216382%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216272216382%_)))))
                          (let () (declare (not safe)) (_%g216272216382%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216282216779%_))
                          (let ((_%e216372216403%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216282216779%_))))
                            (let ((_%tl216374216408%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216372216403%_)))
                                  (_%hd216373216406%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216372216403%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216374216408%_))
                                  (let ((_%e216375216411%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216374216408%_))))
                                    (let ((_%tl216377216416%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216375216411%_)))
                                          (_%hd216376216414%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216375216411%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216377216416%_))
                                          (_%__kont220743220744%_
                                           _%hd216376216414%_
                                           _%hd216373216406%_
                                           _%hd216281216777%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216272216382%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216272216382%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g216272216382%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216282216779%_))
                                                      (let ((_%e216372216403%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216282216779%_))))
                (let ((_%tl216374216408%_
                       (let () (declare (not safe)) (##cdr _%e216372216403%_)))
                      (_%hd216373216406%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216372216403%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216374216408%_))
                      (let ((_%e216375216411%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216374216408%_))))
                        (let ((_%tl216377216416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216375216411%_)))
                              (_%hd216376216414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216375216411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216377216416%_))
                              (_%__kont220743220744%_
                               _%hd216376216414%_
                               _%hd216373216406%_
                               _%hd216281216777%_)
                              (let ()
                                (declare (not safe))
                                (_%g216272216382%_)))))
                      (let () (declare (not safe)) (_%g216272216382%_)))))
              (let () (declare (not safe)) (_%g216272216382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216282216779%_))
                                                  (let ((_%e216372216403%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216282216779%_))))
                                                    (let ((_%tl216374216408%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216372216403%_)))
                                                          (_%hd216373216406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216372216403%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216374216408%_))
                                                          (let ((_%e216375216411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216374216408%_))))
                    (let ((_%tl216377216416%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216375216411%_)))
                          (_%hd216376216414%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216375216411%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216377216416%_))
                          (_%__kont220743220744%_
                           _%hd216376216414%_
                           _%hd216373216406%_
                           _%hd216281216777%_)
                          (let () (declare (not safe)) (_%g216272216382%_)))))
                  (let () (declare (not safe)) (_%g216272216382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216272216382%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216282216779%_))
                                          (let ((_%e216372216403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216282216779%_))))
                                            (let ((_%tl216374216408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216372216403%_)))
                                                  (_%hd216373216406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216372216403%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216374216408%_))
                                                  (let ((_%e216375216411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216374216408%_))))
                                                    (let ((_%tl216377216416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216375216411%_)))
                                                          (_%hd216376216414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216375216411%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216377216416%_))
                                                          (_%__kont220743220744%_
                                                           _%hd216376216414%_
                                                           _%hd216373216406%_
                                                           _%hd216281216777%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216272216382%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216272216382%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216272216382%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216282216779%_))
                                      (let ((_%e216372216403%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216282216779%_))))
                                        (let ((_%tl216374216408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216372216403%_)))
                                              (_%hd216373216406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216372216403%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216374216408%_))
                                              (let ((_%e216375216411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216374216408%_))))
                                                (let ((_%tl216377216416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216375216411%_)))
                                                      (_%hd216376216414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216375216411%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216377216416%_))
                                                      (_%__kont220743220744%_
                                                       _%hd216376216414%_
                                                       _%hd216373216406%_
                                                       _%hd216281216777%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216272216382%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216272216382%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216272216382%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216282216779%_))
                                  (let ((_%e216372216403%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216282216779%_))))
                                    (let ((_%tl216374216408%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216372216403%_)))
                                          (_%hd216373216406%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216372216403%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216374216408%_))
                                          (let ((_%e216375216411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216374216408%_))))
                                            (let ((_%tl216377216416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216375216411%_)))
                                                  (_%hd216376216414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216375216411%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216377216416%_))
                                                  (_%__kont220743220744%_
                                                   _%hd216376216414%_
                                                   _%hd216373216406%_
                                                   _%hd216281216777%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216272216382%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216272216382%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216272216382%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216282216779%_))
                          (let ((_%e216372216403%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216282216779%_))))
                            (let ((_%tl216374216408%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216372216403%_)))
                                  (_%hd216373216406%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216372216403%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216374216408%_))
                                  (let ((_%e216375216411%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216374216408%_))))
                                    (let ((_%tl216377216416%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216375216411%_)))
                                          (_%hd216376216414%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216375216411%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216377216416%_))
                                          (_%__kont220743220744%_
                                           _%hd216376216414%_
                                           _%hd216373216406%_
                                           _%hd216281216777%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216272216382%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216272216382%_)))))
                          (let () (declare (not safe)) (_%g216272216382%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl216282216779%_))
                  (let ((_%e216372216403%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216282216779%_))))
                    (let ((_%tl216374216408%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216372216403%_)))
                          (_%hd216373216406%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216372216403%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216374216408%_))
                          (let ((_%e216375216411%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216374216408%_))))
                            (let ((_%tl216377216416%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216375216411%_)))
                                  (_%hd216376216414%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216375216411%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216377216416%_))
                                  (_%__kont220743220744%_
                                   _%hd216376216414%_
                                   _%hd216373216406%_
                                   _%hd216281216777%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g216272216382%_)))))
                          (let () (declare (not safe)) (_%g216272216382%_)))))
                  (let () (declare (not safe)) (_%g216272216382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216282216779%_))
                                                      (let ((_%e216372216403%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216282216779%_))))
                (let ((_%tl216374216408%_
                       (let () (declare (not safe)) (##cdr _%e216372216403%_)))
                      (_%hd216373216406%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216372216403%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216374216408%_))
                      (let ((_%e216375216411%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216374216408%_))))
                        (let ((_%tl216377216416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216375216411%_)))
                              (_%hd216376216414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216375216411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216377216416%_))
                              (_%__kont220743220744%_
                               _%hd216376216414%_
                               _%hd216373216406%_
                               _%hd216281216777%_)
                              (let ()
                                (declare (not safe))
                                (_%g216272216382%_)))))
                      (let () (declare (not safe)) (_%g216272216382%_)))))
              (let () (declare (not safe)) (_%g216272216382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216282216779%_))
                                              (let ((_%e216372216403%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216282216779%_))))
                                                (let ((_%tl216374216408%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216372216403%_)))
                                                      (_%hd216373216406%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216372216403%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216374216408%_))
                                                      (let ((_%e216375216411%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216374216408%_))))
                (let ((_%tl216377216416%_
                       (let () (declare (not safe)) (##cdr _%e216375216411%_)))
                      (_%hd216376216414%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216375216411%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216377216416%_))
                      (_%__kont220743220744%_
                       _%hd216376216414%_
                       _%hd216373216406%_
                       _%hd216281216777%_)
                      (let () (declare (not safe)) (_%g216272216382%_)))))
              (let () (declare (not safe)) (_%g216272216382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g216272216382%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216282216779%_))
                                      (let ((_%e216372216403%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216282216779%_))))
                                        (let ((_%tl216374216408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216372216403%_)))
                                              (_%hd216373216406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216372216403%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216374216408%_))
                                              (let ((_%e216375216411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216374216408%_))))
                                                (let ((_%tl216377216416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216375216411%_)))
                                                      (_%hd216376216414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216375216411%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216377216416%_))
                                                      (_%__kont220743220744%_
                                                       _%hd216376216414%_
                                                       _%hd216373216406%_
                                                       _%hd216281216777%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216272216382%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216272216382%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216272216382%_))))))
                          (let () (declare (not safe)) (_%g216272216382%_)))))
                  (let () (declare (not safe)) (_%g216272216382%_))))))))))
