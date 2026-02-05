(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1770327934)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp220936 (list gxc#::basic-xform::t))
            (__tmp220935 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp220936
         '()
         __tmp220935
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args220213%_
        (apply make-instance gxc#::optimize-call::t _%$args220213%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp220937
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
        (__make-atomic-promise __tmp220937)))
    (define gxc#apply-optimize-call
      (lambda (_%stx220205%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self220208%_
                (let ((__obj220927
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj220927))
               (__tmp220938
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220208%_ _%stx220205%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220938
           gxc#current-compile-method
           _%self220208%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp220940 (list gxc#::void::t))
            (__tmp220939 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp220940
         '()
         __tmp220939
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args220202%_
        (apply make-instance gxc#::check-return-type::t _%$args220202%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp220941
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
        (__make-atomic-promise __tmp220941)))
    (define gxc#apply-check-return-type
      (lambda (_%stx220194%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self220197%_
                (let ((__obj220929
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj220929))
               (__tmp220942
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220197%_ _%stx220194%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220942
           gxc#current-compile-method
           _%self220197%_))))
    (define gxc#optimize-call%
      (lambda (_%self219801%_ _%stx219802%_)
        (let* ((_%__stx220282220283%_ _%stx219802%_)
               (_%g219805219851%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220282220283%_)))))
          (let ((_%__kont220284220285%_
                 (lambda (_%g219807219990%_ _%g219808219991%_)
                   (let* ((_%rator-id220011%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g219808219991%_)))
                          (_%rator-type220013%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id220011%_))))
                     (if (or (not _%rator-type220013%_)
                             (eq? (##structure-ref
                                   _%rator-type220013%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self219801%_ _%stx219802%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type220013%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp220943
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type220013%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id220011%_
                                  '" => "
                                  _%rator-type220013%_
                                  '" "
                                  __tmp220943))
                               (let* ((_%optimized220028%_
                                       (let ((__method220930
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type220013%_
                                                 'optimize-call))))
                                         (if __method220930
                                             (let ((__tmp220944
                                                    (let ((__tmp220945
                                                           (lambda (_%g220020220023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g220021220025%_)
                     (cons _%g220020220023%_ _%g220021220025%_))))
              (declare (not safe))
              (__foldr1 __tmp220945 '() _%g219807219990%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method220930
                                                _%rator-type220013%_
                                                _%self219801%_
                                                _%stx219802%_
                                                __tmp220944))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type220013%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx220230220231%_
                                       _%optimized220028%_)
                                      (_%g220031220060%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx220230220231%_)))))
                                 (let ((_%__kont220232220233%_
                                        (lambda (_%g220033220126%_
                                                 _%g220034220127%_)
                                          (let* ((_%optimized-rator-id220154%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g220034220127%_)))
                                                 (_%rator-type220159%_
                                                  (let ((_%$e220156%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id220154%_))))
                                                    (if _%$e220156%_
                                                        _%$e220156%_
                                                        _%rator-type220013%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type220159%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id220154%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type220159%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type220159%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized220028%_
                                                (let ((__tmp220946
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g220034220127%_ '()))
                           (let ((__tmp220947
                                  (lambda (_%g220167220170%_ _%g220168220172%_)
                                    (cons _%g220167220170%_
                                          _%g220168220172%_))))
                             (declare (not safe))
                             (__foldr1 __tmp220947 '() _%g220033220126%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp220946
                                                   _%stx219802%_))))))
                                       (_%__kont220236220237%_
                                        (lambda () _%optimized220028%_)))
                                   (let ((_%__match220279220280%_
                                          (lambda (_%e220035220072%_
                                                   _%hd220036220075%_
                                                   _%tl220037220077%_
                                                   _%e220038220080%_
                                                   _%hd220039220083%_
                                                   _%tl220040220085%_
                                                   _%e220041220088%_
                                                   _%hd220042220091%_
                                                   _%tl220043220093%_
                                                   _%e220044220096%_
                                                   _%hd220045220099%_
                                                   _%tl220046220101%_
                                                   _%__splice220234220235%_
                                                   _%target220047220104%_
                                                   _%tl220049220106%_)
                                            (letrec ((_%loop220050220109%_
                                                      (lambda (_%hd220048220112%_
                                                               _%arg220054220114%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd220048220112%_))
                                                            (let ((_%e220051220116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd220048220112%_))))
                      (let ((_%lp-tl220053220121%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e220051220116%_)))
                            (_%lp-hd220052220119%_
                             (let ()
                               (declare (not safe))
                               (##car _%e220051220116%_))))
                        (_%loop220050220109%_
                         _%lp-tl220053220121%_
                         (cons _%lp-hd220052220119%_ _%arg220054220114%_))))
                    (let ((_%arg220055220124%_ (reverse _%arg220054220114%_)))
                      (_%__kont220232220233%_
                       _%arg220055220124%_
                       _%hd220045220099%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop220050220109%_
                                               _%target220047220104%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx220230220231%_))
                                         (let ((_%e220035220072%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx220230220231%_))))
                                           (let ((_%tl220037220077%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e220035220072%_)))
                                                 (_%hd220036220075%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e220035220072%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd220036220075%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd220036220075%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl220037220077%_))
                                                         (let ((_%e220038220080%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl220037220077%_))))
                   (let ((_%tl220040220085%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e220038220080%_)))
                         (_%hd220039220083%_
                          (let ()
                            (declare (not safe))
                            (##car _%e220038220080%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd220039220083%_))
                         (let ((_%e220041220088%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd220039220083%_))))
                           (let ((_%tl220043220093%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e220041220088%_)))
                                 (_%hd220042220091%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e220041220088%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd220042220091%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd220042220091%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl220043220093%_))
                                         (let ((_%e220044220096%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl220043220093%_))))
                                           (let ((_%tl220046220101%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e220044220096%_)))
                                                 (_%hd220045220099%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e220044220096%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl220046220101%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl220040220085%_))
                                                     (let ((_%__splice220234220235%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl220040220085%_
                                                               '0))))
                                                       (let ((_%tl220049220106%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice220234220235%_ '1)))
                     (_%target220047220104%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice220234220235%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl220049220106%_))
                     (_%__match220279220280%_
                      _%e220035220072%_
                      _%hd220036220075%_
                      _%tl220037220077%_
                      _%e220038220080%_
                      _%hd220039220083%_
                      _%tl220040220085%_
                      _%e220041220088%_
                      _%hd220042220091%_
                      _%tl220043220093%_
                      _%e220044220096%_
                      _%hd220045220099%_
                      _%tl220046220101%_
                      _%__splice220234220235%_
                      _%target220047220104%_
                      _%tl220049220106%_)
                     (_%__kont220236220237%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont220236220237%_))
                                                 (_%__kont220236220237%_))))
                                         (_%__kont220236220237%_))
                                     (_%__kont220236220237%_))
                                 (_%__kont220236220237%_))))
                         (_%__kont220236220237%_))))
                 (_%__kont220236220237%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont220236220237%_))
                                                 (_%__kont220236220237%_))))
                                         (_%__kont220236220237%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type220013%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type220013%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp220948
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g219808219991%_
                                                                '()))
                                                    (map (lambda (_%g220178220180%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self219801%_
                                                              _%g220178220180%_)))
                                                         (let ((__tmp220949
                                                                (lambda (_%g220182220185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g220183220187%_)
                          (cons _%g220182220185%_ _%g220183220187%_))))
                   (declare (not safe))
                   (__foldr1 __tmp220949 '() _%g219807219990%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp220948
                                    _%stx219802%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx219802%_
                                    _%rator-type220013%_))))))))
                (_%__kont220288220289%_
                 (lambda (_%g219830219894%_ _%g219831219895%_)
                   (let ((_%rator-type219912%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g219831219895%_))))
                     (if (and _%rator-type219912%_
                              (eq? (##structure-ref
                                    _%rator-type219912%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type219912%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type219912%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type219912%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp220950
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self219801%_
                                               _%g219831219895%_))
                                            (map (lambda (_%g219914219916%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self219801%_
                                                      _%g219914219916%_)))
                                                 (let ((__tmp220951
                                                        (lambda (_%g219918219921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g219919219923%_)
                  (cons _%g219918219921%_ _%g219919219923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp220951
                                                    '()
                                                    _%g219830219894%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp220950 _%stx219802%_))
                         (if (or (not _%rator-type219912%_)
                                 (let ((__tmp220952
                                        (##structure-ref
                                         _%rator-type219912%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp220952 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self219801%_ _%stx219802%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx219802%_
                                _%rator-type219912%_))))))))
            (let* ((_%__match220349220350%_
                    (lambda (_%e219832219856%_
                             _%hd219833219859%_
                             _%tl219834219861%_
                             _%e219835219864%_
                             _%hd219836219867%_
                             _%tl219837219869%_
                             _%__splice220290220291%_
                             _%target219838219872%_
                             _%tl219840219874%_)
                      (letrec ((_%loop219841219877%_
                                (lambda (_%hd219839219880%_
                                         _%rand219845219882%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219839219880%_))
                                      (let ((_%e219842219884%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219839219880%_))))
                                        (let ((_%lp-tl219844219889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219842219884%_)))
                                              (_%lp-hd219843219887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219842219884%_))))
                                          (_%loop219841219877%_
                                           _%lp-tl219844219889%_
                                           (cons _%lp-hd219843219887%_
                                                 _%rand219845219882%_))))
                                      (let ((_%rand219846219892%_
                                             (reverse _%rand219845219882%_)))
                                        (_%__kont220288220289%_
                                         _%rand219846219892%_
                                         _%hd219836219867%_))))))
                        (_%loop219841219877%_ _%target219838219872%_ '()))))
                   (_%__match220329220330%_
                    (lambda (_%e219809219936%_
                             _%hd219810219939%_
                             _%tl219811219941%_
                             _%e219812219944%_
                             _%hd219813219947%_
                             _%tl219814219949%_
                             _%e219815219952%_
                             _%hd219816219955%_
                             _%tl219817219957%_
                             _%e219818219960%_
                             _%hd219819219963%_
                             _%tl219820219965%_
                             _%__splice220286220287%_
                             _%target219821219968%_
                             _%tl219823219970%_)
                      (letrec ((_%loop219824219973%_
                                (lambda (_%hd219822219976%_
                                         _%rand219828219978%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219822219976%_))
                                      (let ((_%e219825219980%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219822219976%_))))
                                        (let ((_%lp-tl219827219985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219825219980%_)))
                                              (_%lp-hd219826219983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219825219980%_))))
                                          (_%loop219824219973%_
                                           _%lp-tl219827219985%_
                                           (cons _%lp-hd219826219983%_
                                                 _%rand219828219978%_))))
                                      (let ((_%rand219829219988%_
                                             (reverse _%rand219828219978%_)))
                                        (_%__kont220284220285%_
                                         _%rand219829219988%_
                                         _%hd219819219963%_))))))
                        (_%loop219824219973%_ _%target219821219968%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220282220283%_))
                  (let ((_%e219809219936%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220282220283%_))))
                    (let ((_%tl219811219941%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e219809219936%_)))
                          (_%hd219810219939%_
                           (let ()
                             (declare (not safe))
                             (##car _%e219809219936%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl219811219941%_))
                          (let ((_%e219812219944%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl219811219941%_))))
                            (let ((_%tl219814219949%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e219812219944%_)))
                                  (_%hd219813219947%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e219812219944%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd219813219947%_))
                                  (let ((_%e219815219952%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd219813219947%_))))
                                    (let ((_%tl219817219957%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e219815219952%_)))
                                          (_%hd219816219955%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e219815219952%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd219816219955%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd219816219955%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl219817219957%_))
                                                  (let ((_%e219818219960%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl219817219957%_))))
                                                    (let ((_%tl219820219965%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e219818219960%_)))
                                                          (_%hd219819219963%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e219818219960%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219820219965%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl219814219949%_))
                      (let ((_%__splice220286220287%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl219814219949%_
                                '0))))
                        (let ((_%tl219823219970%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220286220287%_ '1)))
                              (_%target219821219968%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220286220287%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219823219970%_))
                              (_%__match220329220330%_
                               _%e219809219936%_
                               _%hd219810219939%_
                               _%tl219811219941%_
                               _%e219812219944%_
                               _%hd219813219947%_
                               _%tl219814219949%_
                               _%e219815219952%_
                               _%hd219816219955%_
                               _%tl219817219957%_
                               _%e219818219960%_
                               _%hd219819219963%_
                               _%tl219820219965%_
                               _%__splice220286220287%_
                               _%target219821219968%_
                               _%tl219823219970%_)
                              (let ()
                                (declare (not safe))
                                (_%g219805219851%_)))))
                      (let () (declare (not safe)) (_%g219805219851%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl219814219949%_))
                      (let ((_%__splice220290220291%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl219814219949%_
                                '0))))
                        (let ((_%tl219840219874%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220290220291%_ '1)))
                              (_%target219838219872%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220290220291%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219840219874%_))
                              (_%__match220349220350%_
                               _%e219809219936%_
                               _%hd219810219939%_
                               _%tl219811219941%_
                               _%e219812219944%_
                               _%hd219813219947%_
                               _%tl219814219949%_
                               _%__splice220290220291%_
                               _%target219838219872%_
                               _%tl219840219874%_)
                              (let ()
                                (declare (not safe))
                                (_%g219805219851%_)))))
                      (let () (declare (not safe)) (_%g219805219851%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl219814219949%_))
                                                      (let ((_%__splice220290220291%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl219814219949%_
                        '0))))
                (let ((_%tl219840219874%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220290220291%_ '1)))
                      (_%target219838219872%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220290220291%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl219840219874%_))
                      (_%__match220349220350%_
                       _%e219809219936%_
                       _%hd219810219939%_
                       _%tl219811219941%_
                       _%e219812219944%_
                       _%hd219813219947%_
                       _%tl219814219949%_
                       _%__splice220290220291%_
                       _%target219838219872%_
                       _%tl219840219874%_)
                      (let () (declare (not safe)) (_%g219805219851%_)))))
              (let () (declare (not safe)) (_%g219805219851%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl219814219949%_))
                                                  (let ((_%__splice220290220291%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl219814219949%_
                                                            '0))))
                                                    (let ((_%tl219840219874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220290220291%_
                                                              '1)))
                                                          (_%target219838219872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220290220291%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219840219874%_))
                                                          (_%__match220349220350%_
                                                           _%e219809219936%_
                                                           _%hd219810219939%_
                                                           _%tl219811219941%_
                                                           _%e219812219944%_
                                                           _%hd219813219947%_
                                                           _%tl219814219949%_
                                                           _%__splice220290220291%_
                                                           _%target219838219872%_
                                                           _%tl219840219874%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g219805219851%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g219805219851%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl219814219949%_))
                                              (let ((_%__splice220290220291%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl219814219949%_
                                                        '0))))
                                                (let ((_%tl219840219874%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220290220291%_
                                                          '1)))
                                                      (_%target219838219872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220290220291%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl219840219874%_))
                                                      (_%__match220349220350%_
                                                       _%e219809219936%_
                                                       _%hd219810219939%_
                                                       _%tl219811219941%_
                                                       _%e219812219944%_
                                                       _%hd219813219947%_
                                                       _%tl219814219949%_
                                                       _%__splice220290220291%_
                                                       _%target219838219872%_
                                                       _%tl219840219874%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g219805219851%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g219805219851%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl219814219949%_))
                                      (let ((_%__splice220290220291%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl219814219949%_
                                                '0))))
                                        (let ((_%tl219840219874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220290220291%_
                                                  '1)))
                                              (_%target219838219872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220290220291%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl219840219874%_))
                                              (_%__match220349220350%_
                                               _%e219809219936%_
                                               _%hd219810219939%_
                                               _%tl219811219941%_
                                               _%e219812219944%_
                                               _%hd219813219947%_
                                               _%tl219814219949%_
                                               _%__splice220290220291%_
                                               _%target219838219872%_
                                               _%tl219840219874%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g219805219851%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g219805219851%_))))))
                          (let () (declare (not safe)) (_%g219805219851%_)))))
                  (let () (declare (not safe)) (_%g219805219851%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self219763%_ _%ctx219764%_ _%stx219765%_ _%args219766%_)
        (let ((_%self219769%_ _%self219763%_))
          (if (let ((__method220931
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self219769%_ 'check-arguments))))
                (if __method220931
                    (let ()
                      (declare (not safe))
                      (__method220931
                       _%self219769%_
                       _%ctx219764%_
                       _%stx219765%_
                       _%args219766%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self219769%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature219779%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self219769%_ '2 '#f '#f)))
                     (_%signature219781%_ _%signature219779%_)
                     (_%$e219791%_
                      (if _%signature219781%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature219781%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e219791%_
                    ((lambda (_%unchecked219794%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked219794%_))
                           (let ((__tmp220953
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked219794%_
                                                          '()))
                                              (map (lambda (_%g219795219797%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx219764%_
                                                        _%g219795219797%_)))
                                                   _%args219766%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp220953
                              _%stx219765%_
                              _%ctx219764%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx219764%_ _%stx219765%_))))
                     _%$e219791%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx219764%_ _%stx219765%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx219764%_ _%stx219765%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass220215 __method-table220216)
        (let ((__check-arguments220217
               (let ((__tmp220954
                      (lambda ()
                        (let ((__method220218
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220216
                                  'check-arguments
                                  '#f))))
                          (if __method220218
                              __method220218
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp220954))))
          (lambda (_%self219763%_ _%ctx219764%_ _%stx219765%_ _%args219766%_)
            (let ((_%self219769%_ _%self219763%_))
              (if ((force __check-arguments220217)
                   _%self219769%_
                   _%ctx219764%_
                   _%stx219765%_
                   _%args219766%_)
                  (let* ((_%signature219779%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self219769%_
                             '2
                             '#f
                             '#f)))
                         (_%signature219781%_ _%signature219779%_)
                         (_%$e219791%_
                          (if _%signature219781%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature219781%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e219791%_
                        ((lambda (_%unchecked219794%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked219794%_))
                               (let ((__tmp220955
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked219794%_
                                                              '()))
                                                  (map (lambda (_%g219795219797%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx219764%_
                                                            _%g219795219797%_)))
                                                       _%args219766%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp220955
                                  _%stx219765%_
                                  _%ctx219764%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx219764%_
                                  _%stx219765%_))))
                         _%$e219791%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx219764%_ _%stx219765%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx219764%_ _%stx219765%_))))))))
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
      (lambda (_%self219516%_ _%ctx219517%_ _%stx219518%_ _%args219519%_)
        (let* ((_%self219522%_ _%self219516%_)
               (_%signature219531219533%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self219522%_ '2 '#f '#f))))
          (if _%signature219531219533%_
              (let* ((_%signature219535%_ _%signature219531219533%_)
                     (_%argument-types219536219538%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature219535%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types219536219538%_
                    (let* ((_%argument-types219540%_
                            _%argument-types219536219538%_)
                           (_%argument-types219545%_
                            (let ((__tmp220956
                                   (lambda (_%t219543%_)
                                     (if _%t219543%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219518%_
                                            _%t219543%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp220956
                               _%argument-types219540%_))))
                      (let _%loop219547%_ ((_%rest-args219549%_ _%args219519%_)
                                           (_%rest-types219550%_
                                            _%argument-types219545%_)
                                           (_%result219551%_ '#t))
                        (let* ((_%rest-args219552219560%_ _%rest-args219549%_)
                               (_%else219554219568%_
                                (lambda () _%result219551%_))
                               (_%K219556219629%_
                                (lambda (_%rest-args219571%_ _%arg219572%_)
                                  (let* ((_%rest-types219573219584%_
                                          _%rest-types219550%_)
                                         (_%E219577219588%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types219573219584%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K219580219617%_
                                           (lambda (_%rest-types219614%_
                                                    _%type219615%_)
                                             (_%loop219547%_
                                              _%rest-args219571%_
                                              _%rest-types219614%_
                                              (if (gxc#check-expression-type!
                                                   _%stx219518%_
                                                   _%arg219572%_
                                                   _%type219615%_)
                                                  _%result219551%_
                                                  '#f))))
                                          (_%K219579219608%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx219518%_
                                                _%argument-types219545%_))))
                                          (_%K219578219598%_
                                           (lambda (_%tail-type219592%_)
                                             (if (let ((__tmp220957
                                                        (lambda (_%g219593219595%_)
                                                          (gxc#check-expression-type!
                                                           _%stx219518%_
                                                           _%g219593219595%_
                                                           _%tail-type219592%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp220957
                                                    _%rest-args219571%_))
                                                 _%result219551%_
                                                 '#f))))
                                      (let ((_%try-match219575219611%_
                                             (lambda ()
                                               (if (null? _%rest-types219573219584%_)
                                                   (_%K219579219608%_)
                                                   (let ((_%tail-type219601%_
                                                          _%rest-types219573219584%_))
                                                     (_%K219578219598%_
                                                      _%tail-type219601%_))))))
                                        (if (pair? _%rest-types219573219584%_)
                                            (let ((_%tl219582219622%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types219573219584%_)))
                                                  (_%hd219581219620%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types219573219584%_))))
                                              (let ((_%type219625%_
                                                     _%hd219581219620%_)
                                                    (_%rest-types219627%_
                                                     _%tl219582219622%_))
                                                (_%K219580219617%_
                                                 _%rest-types219627%_
                                                 _%type219625%_)))
                                            (_%try-match219575219611%_))))))))
                          (if (pair? _%rest-args219552219560%_)
                              (let ((_%hd219557219632%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args219552219560%_)))
                                    (_%tl219558219634%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args219552219560%_))))
                                (let* ((_%arg219637%_ _%hd219557219632%_)
                                       (_%rest-args219639%_
                                        _%tl219558219634%_))
                                  (_%K219556219629%_
                                   _%rest-args219639%_
                                   _%arg219637%_)))
                              (_%else219554219568%_)))))
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
      (lambda (_%self219327%_ _%ctx219328%_ _%stx219329%_ _%args219330%_)
        (let* ((_%self219333%_ _%self219327%_)
               (_%g219343219353%_
                (lambda (_%g219344219350%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219344219350%_))))
               (_%g219342219391%_
                (lambda (_%g219344219356%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219344219356%_))
                      (let ((_%e219346219358%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219344219356%_))))
                        (let ((_%hd219347219361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219346219358%_)))
                              (_%tl219348219363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219346219358%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219348219363%_))
                              ((lambda (_%g219345219366%_)
                                 (let* ((_%klass219378%_
                                         (let ((__tmp220958
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self219333%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219329%_
                                            __tmp220958)))
                                        (_%object219380%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx219328%_
                                            _%g219345219366%_)))
                                        (_%instance?219385%_
                                         (let ((_%$e219382%_
                                                (gxc#expression-type?
                                                 _%object219380%_
                                                 _%klass219378%_)))
                                           (if _%$e219382%_
                                               _%$e219382%_
                                               (gxc#expression-type?
                                                _%g219345219366%_
                                                _%klass219378%_)))))
                                   (if _%instance?219385%_
                                       (let ((__tmp220959
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object219380%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g219345219366%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object219380%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220959
                                          _%stx219329%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx219328%_
                                          _%stx219329%_)))))
                               _%hd219347219361%_)
                              (_%g219343219353%_ _%g219344219356%_))))
                      (_%g219343219353%_ _%g219344219356%_)))))
          (_%g219342219391%_ _%args219330%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self219123%_ _%ctx219124%_ _%stx219125%_ _%args219126%_)
        (let* ((_%self219129%_ _%self219123%_)
               (_%g219139219149%_
                (lambda (_%g219140219146%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219140219146%_))))
               (_%g219138219202%_
                (lambda (_%g219140219152%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219140219152%_))
                      (let ((_%e219142219154%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219140219152%_))))
                        (let ((_%hd219143219157%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219142219154%_)))
                              (_%tl219144219159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219142219154%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219144219159%_))
                              ((lambda (_%g219141219162%_)
                                 (let* ((_%klass219174%_
                                         (let ((__tmp220960
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self219129%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219125%_
                                            __tmp220960)))
                                        (_%object219176%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx219124%_
                                            _%g219141219162%_)))
                                        (_%instance?219181%_
                                         (let ((_%$e219178%_
                                                (gxc#expression-type?
                                                 _%object219176%_
                                                 _%klass219174%_)))
                                           (if _%$e219178%_
                                               _%$e219178%_
                                               (gxc#expression-type?
                                                _%g219141219162%_
                                                _%klass219174%_))))
                                        (_%klass219184%_ _%klass219174%_))
                                   (if _%instance?219181%_
                                       (let ((__tmp220961
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object219176%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g219141219162%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object219176%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220961
                                          _%stx219125%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass219184%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp220962
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass219184%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object219176%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp220962
                                              _%stx219125%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass219184%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp220963
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass219184%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object219176%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220963
                                                  _%stx219125%_))
                                               (let ((__tmp220964
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self219129%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object219176%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220964
                                                  _%stx219125%_)))))))
                               _%hd219143219157%_)
                              (_%g219139219149%_ _%g219140219152%_))))
                      (_%g219139219149%_ _%g219140219152%_)))))
          (_%g219138219202%_ _%args219126%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx218791%_)
        (let* ((_%__stx220359220360%_ _%stx218791%_)
               (_%g218796218837%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220359220360%_)))))
          (let ((_%__kont220361220362%_ (lambda () '#t))
                (_%__kont220363220364%_ (lambda () '#t))
                (_%__kont220365220366%_
                 (lambda (_%g218810218903%_ _%g218811218904%_)
                   (let ((_%rator-type218925218927%_
                          (let ((__tmp220965
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g218811218904%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp220965))))
                     (if _%rator-type218925218927%_
                         (let* ((_%rator-type218929%_
                                 _%rator-type218925218927%_)
                                (_%rator-signature218930218932%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type218929%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type218929%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature218930218932%_
                               (let* ((_%rator-signature218934%_
                                       _%rator-signature218930218932%_)
                                      (_%rator-effect218935218937%_
                                       (if _%rator-signature218934%_
                                           (##direct-structure-ref
                                            _%rator-signature218934%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect218935218937%_
                                     (let ((_%rator-effect218939%_
                                            _%rator-effect218935218937%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect218939%_)
                                               (equal? '(alloc)
                                                       _%rator-effect218939%_))
                                           (let ((__tmp220966
                                                  (let ((__tmp220967
                                                         (lambda (_%g218944218947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g218945218949%_)
                   (cons _%g218944218947%_ _%g218945218949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp220967
                                                     '()
                                                     _%g218810218903%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp220966))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont220369220370%_ (lambda () '#f)))
            (let ((_%__match220448220449%_
                   (lambda (_%e218812218849%_
                            _%hd218813218852%_
                            _%tl218814218854%_
                            _%e218815218857%_
                            _%hd218816218860%_
                            _%tl218817218862%_
                            _%e218818218865%_
                            _%hd218819218868%_
                            _%tl218820218870%_
                            _%e218821218873%_
                            _%hd218822218876%_
                            _%tl218823218878%_
                            _%__splice220367220368%_
                            _%target218824218881%_
                            _%tl218826218883%_)
                     (letrec ((_%loop218827218886%_
                               (lambda (_%hd218825218889%_
                                        _%rand218831218891%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd218825218889%_))
                                     (let ((_%e218828218893%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd218825218889%_))))
                                       (let ((_%lp-tl218830218898%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e218828218893%_)))
                                             (_%lp-hd218829218896%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e218828218893%_))))
                                         (_%loop218827218886%_
                                          _%lp-tl218830218898%_
                                          (cons _%lp-hd218829218896%_
                                                _%rand218831218891%_))))
                                     (let ((_%rand218832218901%_
                                            (reverse _%rand218831218891%_)))
                                       (_%__kont220365220366%_
                                        _%rand218832218901%_
                                        _%hd218822218876%_))))))
                       (_%loop218827218886%_ _%target218824218881%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220359220360%_))
                  (let ((_%e218798218980%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220359220360%_))))
                    (let ((_%tl218800218985%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218798218980%_)))
                          (_%hd218799218983%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218798218980%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd218799218983%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd218799218983%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218800218985%_))
                                  (let ((_%e218801218988%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218800218985%_))))
                                    (let ((_%tl218803218993%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218801218988%_)))
                                          (_%hd218802218991%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218801218988%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl218803218993%_))
                                          (_%__kont220361220362%_)
                                          (_%__kont220369220370%_))))
                                  (_%__kont220369220370%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd218799218983%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218800218985%_))
                                      (let ((_%e218807218965%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl218800218985%_))))
                                        (let ((_%tl218809218970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218807218965%_)))
                                              (_%hd218808218968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218807218965%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218809218970%_))
                                              (_%__kont220363220364%_)
                                              (_%__kont220369220370%_))))
                                      (_%__kont220369220370%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd218799218983%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl218800218985%_))
                                          (let ((_%e218815218857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl218800218985%_))))
                                            (let ((_%tl218817218862%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e218815218857%_)))
                                                  (_%hd218816218860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e218815218857%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd218816218860%_))
                                                  (let ((_%e218818218865%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd218816218860%_))))
                                                    (let ((_%tl218820218870%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e218818218865%_)))
                                                          (_%hd218819218868%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e218818218865%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd218819218868%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd218819218868%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl218820218870%_))
                          (let ((_%e218821218873%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl218820218870%_))))
                            (let ((_%tl218823218878%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218821218873%_)))
                                  (_%hd218822218876%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218821218873%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218823218878%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl218817218862%_))
                                      (let ((_%__splice220367220368%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl218817218862%_
                                                '0))))
                                        (let ((_%tl218826218883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220367220368%_
                                                  '1)))
                                              (_%target218824218881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220367220368%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218826218883%_))
                                              (_%__match220448220449%_
                                               _%e218798218980%_
                                               _%hd218799218983%_
                                               _%tl218800218985%_
                                               _%e218815218857%_
                                               _%hd218816218860%_
                                               _%tl218817218862%_
                                               _%e218818218865%_
                                               _%hd218819218868%_
                                               _%tl218820218870%_
                                               _%e218821218873%_
                                               _%hd218822218876%_
                                               _%tl218823218878%_
                                               _%__splice220367220368%_
                                               _%target218824218881%_
                                               _%tl218826218883%_)
                                              (_%__kont220369220370%_))))
                                      (_%__kont220369220370%_))
                                  (_%__kont220369220370%_))))
                          (_%__kont220369220370%_))
                      (_%__kont220369220370%_))
                  (_%__kont220369220370%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont220369220370%_))))
                                          (_%__kont220369220370%_))
                                      (_%__kont220369220370%_))))
                          (_%__kont220369220370%_))))
                  (_%__kont220369220370%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx218786%_ _%klass218787%_)
        (let ((_%expr-type218789%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx218786%_))))
          (if _%expr-type218789%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type218789%_ _%klass218787%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx218764%_ _%expr218765%_ _%type218766%_)
        (if (not _%type218766%_)
            '#f
            (let ((_%$e218769%_
                   (eq? (##structure-ref _%type218766%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e218769%_
                  _%$e218769%_
                  (let ((_%expr-type218773%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr218765%_))))
                    (if (not _%expr-type218773%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type218773%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e218777%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type218773%_
                                      'gxc#!abort::t))))
                              (if _%$e218777%_
                                  _%$e218777%_
                                  (let ((_%$e218780%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type218773%_
                                            _%type218766%_))))
                                    (if _%$e218780%_
                                        _%$e218780%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type218766%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type218766%_
                                                   _%expr-type218773%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx218764%_
                                                   _%expr218765%_
                                                   _%expr-type218773%_
                                                   _%type218766%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self218578%_ _%ctx218579%_ _%stx218580%_ _%args218581%_)
        (let* ((_%self218584%_ _%self218578%_)
               (_%klass218594%_
                (let ((__tmp220968
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self218584%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx218580%_ __tmp220968)))
               (_%fields218596%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass218594%_
                           '5
                           '#f
                           '#f))))
               (_%args218602%_
                (map (lambda (_%g218597218599%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx218579%_ _%g218597218599%_)))
                     _%args218581%_))
               (_%inline-make-object218604%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self218584%_
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
                           _%self218584%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields218596%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass218607%_ _%klass218594%_)
               (_%$e218621%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass218607%_ '6 '#f '#f))))
          (if _%$e218621%_
              ((lambda (_%ctor218624%_)
                 (let ((_%$obj218626%_
                        (let ((__tmp220969
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp220969)))
                       (_%ctor-impl218627%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass218607%_
                           _%ctor218624%_))))
                   (let ((__tmp220970
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj218626%_ '())
                                                  (cons _%inline-make-object218604%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl218627%_
                                                            (let ((__tmp220971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl218627%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj218626%_ '()))
                                             _%args218602%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp220971
                       _%stx218580%_
                       _%ctx218579%_))
                    (let ((_%$ctor218629%_
                           (let ((__tmp220972
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp220972))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor218629%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218584%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj218626%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor218624%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor218629%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor218629%_ '()))
                              (cons (cons '%#ref (cons _%$obj218626%_ '()))
                                    _%args218602%_)))
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
                             _%self218584%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor218624%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj218626%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp220970 _%stx218580%_))))
               _%$e218621%_)
              (let ((_%$e218631%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass218607%_
                        '10
                        '#f
                        '#f))))
                (if _%$e218631%_
                    ((lambda (_%metaclass218634%_)
                       (let* ((_%$obj218636%_
                               (let ((__tmp220973
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp220973)))
                              (_%metakons218638%_
                               (let ((__tmp220974
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx218580%_
                                         _%metaclass218634%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp220974
                                  'instance-init!)))
                              (__tmp220975
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj218636%_
                                                             '())
                                                       (cons _%inline-make-object218604%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons218638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp220976
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons218638%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self218584%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj218636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args218602%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp220976
                            _%stx218580%_
                            _%ctx218579%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self218584%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj218636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args218602%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj218636%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp220975 _%stx218580%_)))
                     _%$e218631%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass218607%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp220977
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args218602%_))))
                              (declare (not safe))
                              (##fx= __tmp220977 _%fields218596%_))
                            (let ((__tmp220978
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self218584%_
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
                                              _%self218584%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args218602%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp220978
                               _%stx218580%_))
                            (let ((__tmp220980
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self218584%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp220979
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass218607%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx218580%_
                               __tmp220980
                               __tmp220979)))
                        (let ((_%$obj218643%_
                               (let ((__tmp220981
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp220981))))
                          (let _%lp218645%_ ((_%rest218647%_ _%args218602%_)
                                             (_%initializers218648%_ '()))
                            (let* ((_%__stx220451220452%_ _%rest218647%_)
                                   (_%g218652218673%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx220451220452%_)))))
                              (let ((_%__kont220453220454%_
                                     (lambda (_%g218654218727%_
                                              _%g218655218728%_
                                              _%g218656218729%_)
                                       (let* ((_%slot218756%_
                                               (let ((__tmp220982
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g218656218729%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp220982)))
                                              (_%off218758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass218607%_
                                                  _%slot218756%_))))
                                         (if _%off218758%_
                                             (_%lp218645%_
                                              _%g218654218727%_
                                              (cons (cons _%off218758%_
                                                          _%g218655218728%_)
                                                    _%initializers218648%_))
                                             (let ((__tmp220983
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218584%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx218580%_
                                                __tmp220983
                                                _%slot218756%_))))))
                                    (_%__kont220455220456%_
                                     (lambda ()
                                       (let ((__tmp220984
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj218643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object218604%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp220987
                                     (cons (cons '%#ref
                                                 (cons _%$obj218643%_ '()))
                                           '()))
                                    (__tmp220985
                                     (let ((__tmp220986
                                            (lambda (_%i218687%_ _%r218688%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self218584%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i218687%_) '()))
                              (cons (cons '%#ref (cons _%$obj218643%_ '()))
                                    (cons (cdr _%i218687%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r218688%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp220986
                                        '()
                                        _%initializers218648%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp220987 __tmp220985)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220984
                                          _%stx218580%_))))
                                    (_%__kont220457220458%_
                                     (lambda ()
                                       (let ((__tmp220988
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj218643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object218604%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args218602%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj218643%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220988
                                          _%stx218580%_)))))
                                (let* ((_%g218650218690%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx220451220452%_))
                                              (_%__kont220455220456%_)
                                              (_%__kont220457220458%_))))
                                       (_%__match220488220489%_
                                        (lambda (_%e218657218695%_
                                                 _%hd218658218698%_
                                                 _%tl218659218700%_
                                                 _%e218660218703%_
                                                 _%hd218661218706%_
                                                 _%tl218662218708%_
                                                 _%e218663218711%_
                                                 _%hd218664218714%_
                                                 _%tl218665218716%_
                                                 _%e218666218719%_
                                                 _%hd218667218722%_
                                                 _%tl218668218724%_)
                                          (let ((_%g218654218727%_
                                                 _%tl218668218724%_)
                                                (_%g218655218728%_
                                                 _%hd218667218722%_)
                                                (_%g218656218729%_
                                                 _%hd218664218714%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g218656218729%_))
                                                (_%__kont220453220454%_
                                                 _%g218654218727%_
                                                 _%g218655218728%_
                                                 _%g218656218729%_)
                                                (_%__kont220457220458%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx220451220452%_))
                                      (let ((_%e218657218695%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx220451220452%_))))
                                        (let ((_%tl218659218700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218657218695%_)))
                                              (_%hd218658218698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218657218695%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd218658218698%_))
                                              (let ((_%e218660218703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd218658218698%_))))
                                                (let ((_%tl218662218708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e218660218703%_)))
                                                      (_%hd218661218706%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e218660218703%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd218661218706%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd218661218706%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl218662218708%_))
                      (let ((_%e218663218711%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl218662218708%_))))
                        (let ((_%tl218665218716%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218663218711%_)))
                              (_%hd218664218714%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218663218711%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218665218716%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218659218700%_))
                                  (let ((_%e218666218719%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218659218700%_))))
                                    (let ((_%tl218668218724%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218666218719%_)))
                                          (_%hd218667218722%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218666218719%_))))
                                      (_%__match220488220489%_
                                       _%e218657218695%_
                                       _%hd218658218698%_
                                       _%tl218659218700%_
                                       _%e218660218703%_
                                       _%hd218661218706%_
                                       _%tl218662218708%_
                                       _%e218663218711%_
                                       _%hd218664218714%_
                                       _%tl218665218716%_
                                       _%e218666218719%_
                                       _%hd218667218722%_
                                       _%tl218668218724%_)))
                                  (_%__kont220457220458%_))
                              (_%__kont220457220458%_))))
                      (_%__kont220457220458%_))
                  (_%__kont220457220458%_))
              (_%__kont220457220458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont220457220458%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g218650218690%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self218361%_ _%ctx218362%_ _%stx218363%_ _%args218364%_)
        (let* ((_%self218367%_ _%self218361%_)
               (_%arguments-ok?218377%_
                (let ((__method220932
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self218367%_ 'check-arguments))))
                  (if __method220932
                      (let ()
                        (declare (not safe))
                        (__method220932
                         _%self218367%_
                         _%ctx218362%_
                         _%stx218363%_
                         _%args218364%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self218367%_
                                 'check-arguments))
                        '#!void))))
               (_%g218379218389%_
                (lambda (_%g218380218386%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218380218386%_))))
               (_%g218378218453%_
                (lambda (_%g218380218392%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218380218392%_))
                      (let ((_%e218382218394%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g218380218392%_))))
                        (let ((_%hd218383218397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218382218394%_)))
                              (_%tl218384218399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218382218394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218384218399%_))
                              ((lambda (_%g218381218402%_)
                                 (let* ((_%klass218415%_
                                         (let ((__tmp220989
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218367%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx218363%_
                                            __tmp220989)))
                                        (_%field218417%_
                                         (let ((__tmp220990
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218367%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass218415%_
                                            __tmp220990)))
                                        (_%object218419%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx218362%_
                                            _%g218381218402%_)))
                                        (_%klass218422%_ _%klass218415%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass218422%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp220991
                                              (cons (if (or _%arguments-ok?218377%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218367%_
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
                                 _%self218367%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field218417%_ '()))
                        (cons _%object218419%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220991
                                          _%stx218363%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass218422%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp220992
                                                  (cons (if (or _%arguments-ok?218377%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218367%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218367%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field218417%_ '()))
                            (cons _%object218419%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp220992
                                              _%stx218363%_))
                                           (let ((_%$e218441%_
                                                  (let ((__tmp220993
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self218367%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass218422%_
                                                     __tmp220993))))
                                             (if _%$e218441%_
                                                 ((lambda (_%klass218444%_)
                                                    (let ((__tmp220994
                                                           (cons (if (or _%arguments-ok?218377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218367%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self218367%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field218417%_ '()))
                                     (cons _%object218419%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp220994 _%stx218363%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e218441%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self218367%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp220995
                                                            (let ((_%$obj218450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp220996
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp220996))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj218450%_ '())
                                              (cons _%object218419%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass218422%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj218450%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218367%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218417%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj218450%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?218377%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj218450%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self218367%_
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
                                                             _%self218367%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj218450%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self218367%_
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
               (gxc#xform-wrap-source __tmp220995 _%stx218363%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp220997
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object218419%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218367%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp220997 _%stx218363%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd218383218397%_)
                              (_%g218379218389%_ _%g218380218392%_))))
                      (_%g218379218389%_ _%g218380218392%_)))))
          (_%g218378218453%_ _%args218364%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass220219 __method-table220220)
        (let ((__check-arguments220221
               (let ((__tmp220998
                      (lambda ()
                        (let ((__method220222
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220220
                                  'check-arguments
                                  '#f))))
                          (if __method220222
                              __method220222
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp220998)))
              (__slot220223
               (let ((__slot220224
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass220219 'slot))))
                 (if __slot220224
                     __slot220224
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self218361%_ _%ctx218362%_ _%stx218363%_ _%args218364%_)
            (let* ((_%self218367%_ _%self218361%_)
                   (_%arguments-ok?218377%_
                    ((force __check-arguments220221)
                     _%self218367%_
                     _%ctx218362%_
                     _%stx218363%_
                     _%args218364%_))
                   (_%g218379218389%_
                    (lambda (_%g218380218386%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g218380218386%_))))
                   (_%g218378218453%_
                    (lambda (_%g218380218392%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g218380218392%_))
                          (let ((_%e218382218394%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g218380218392%_))))
                            (let ((_%hd218383218397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218382218394%_)))
                                  (_%tl218384218399%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218382218394%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218384218399%_))
                                  ((lambda (_%g218381218402%_)
                                     (let* ((_%klass218415%_
                                             (let ((__tmp220999
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218367%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx218363%_
                                                __tmp220999)))
                                            (_%field218417%_
                                             (let ((__tmp221000
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218367%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass218415%_
                                                __tmp221000)))
                                            (_%object218419%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx218362%_
                                                _%g218381218402%_)))
                                            (_%klass218422%_ _%klass218415%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass218422%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp221001
                                                  (cons (if (or _%arguments-ok?218377%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218367%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218367%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field218417%_ '()))
                            (cons _%object218419%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221001
                                              _%stx218363%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass218422%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp221002
                                                      (cons (if (or _%arguments-ok?218377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self218367%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218367%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field218417%_ '()))
                                (cons _%object218419%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp221002
                                                  _%stx218363%_))
                                               (let ((_%$e218441%_
                                                      (let ((__tmp221003
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self218367%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass218422%_ __tmp221003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e218441%_
                                                     ((lambda (_%klass218444%_)
                                                        (let ((__tmp221004
                                                               (cons (if (or _%arguments-ok?218377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218367%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self218367%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field218417%_ '()))
                                         (cons _%object218419%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp221004 _%stx218363%_)))
              _%$e218441%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self218367%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp221005
                                                                (let ((_%$obj218450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp221006
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp221006))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj218450%_ '())
                                                  (cons _%object218419%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass218422%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj218450%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218367%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field218417%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj218450%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?218377%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj218450%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self218367%_
                               __slot220223
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
                        (##unchecked-structure-ref _%self218367%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj218450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218367%_
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
                   (gxc#xform-wrap-source __tmp221005 _%stx218363%_))
                 (let ((__tmp221007
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object218419%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218367%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp221007 _%stx218363%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd218383218397%_)
                                  (_%g218379218389%_ _%g218380218392%_))))
                          (_%g218379218389%_ _%g218380218392%_)))))
              (_%g218378218453%_ _%args218364%_))))))
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
      (lambda (_%self218125%_ _%ctx218126%_ _%stx218127%_ _%args218128%_)
        (let* ((_%self218131%_ _%self218125%_)
               (_%arguments-ok?218141%_
                (let ((__method220933
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self218131%_ 'check-arguments))))
                  (if __method220933
                      (let ()
                        (declare (not safe))
                        (__method220933
                         _%self218131%_
                         _%ctx218126%_
                         _%stx218127%_
                         _%args218128%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self218131%_
                                 'check-arguments))
                        '#!void))))
               (_%g218143218157%_
                (lambda (_%g218144218154%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218144218154%_))))
               (_%g218142218236%_
                (lambda (_%g218144218160%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218144218160%_))
                      (let ((_%e218147218162%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g218144218160%_))))
                        (let ((_%hd218148218165%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218147218162%_)))
                              (_%tl218149218167%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218147218162%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218149218167%_))
                              (let ((_%e218150218170%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl218149218167%_))))
                                (let ((_%hd218151218173%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218150218170%_)))
                                      (_%tl218152218175%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218150218170%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl218152218175%_))
                                      ((lambda (_%g218145218178%_
                                                _%g218146218179%_)
                                         (let* ((_%klass218195%_
                                                 (let ((__tmp221008
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218131%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx218127%_
                                                    __tmp221008)))
                                                (_%field218197%_
                                                 (let ((__tmp221009
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218131%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass218195%_
                                                    __tmp221009)))
                                                (_%object218199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx218126%_
                                                    _%g218146218179%_)))
                                                (_%value218201%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx218126%_
                                                    _%g218145218178%_)))
                                                (_%klass218204%_
                                                 _%klass218195%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass218204%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp221010
                                                      (cons (if (or _%arguments-ok?218141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self218131%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218131%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field218197%_ '()))
                                (cons _%object218199%_
                                      (cons _%value218201%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp221010
                                                  _%stx218127%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass218204%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp221011
                                                          (cons (if (or _%arguments-ok?218141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self218131%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218131%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218197%_ '()))
                                    (cons _%object218199%_
                                          (cons _%value218201%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp221011
                                                      _%stx218127%_))
                                                   (let ((_%$e218224%_
                                                          (let ((__tmp221012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218131%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass218204%_
                     __tmp221012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e218224%_
                                                         ((lambda (_%klass218227%_)
                                                            (let ((__tmp221013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?218141%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218131%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self218131%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field218197%_ '()))
                                             (cons _%object218199%_
                                                   (cons _%value218201%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221013 _%stx218127%_)))
                  _%$e218224%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self218131%_ '4 '#f '#f))
                     (let ((__tmp221014
                            (let ((_%$obj218233%_
                                   (let ((__tmp221015
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp221015))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj218233%_ '())
                                                      (cons _%object218199%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass218204%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj218233%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self218131%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field218197%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj218233%_
                                                              '()))
                                                  (cons _%value218201%_
                                                        '())))))
                          (cons (if _%arguments-ok?218141%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self218131%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value218201%_ '())))))
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
                             _%self218131%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj218233%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218131%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value218201%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp221014 _%stx218127%_))
                     (let ((__tmp221016
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object218199%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self218131%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value218201%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp221016
                        _%stx218127%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd218151218173%_
                                       _%hd218148218165%_)
                                      (_%g218143218157%_ _%g218144218160%_))))
                              (_%g218143218157%_ _%g218144218160%_))))
                      (_%g218143218157%_ _%g218144218160%_)))))
          (_%g218142218236%_ _%args218128%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass220225 __method-table220226)
        (let ((__check-arguments220227
               (let ((__tmp221017
                      (lambda ()
                        (let ((__method220228
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220226
                                  'check-arguments
                                  '#f))))
                          (if __method220228
                              __method220228
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp221017))))
          (lambda (_%self218125%_ _%ctx218126%_ _%stx218127%_ _%args218128%_)
            (let* ((_%self218131%_ _%self218125%_)
                   (_%arguments-ok?218141%_
                    ((force __check-arguments220227)
                     _%self218131%_
                     _%ctx218126%_
                     _%stx218127%_
                     _%args218128%_))
                   (_%g218143218157%_
                    (lambda (_%g218144218154%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g218144218154%_))))
                   (_%g218142218236%_
                    (lambda (_%g218144218160%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g218144218160%_))
                          (let ((_%e218147218162%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g218144218160%_))))
                            (let ((_%hd218148218165%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218147218162%_)))
                                  (_%tl218149218167%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218147218162%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218149218167%_))
                                  (let ((_%e218150218170%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218149218167%_))))
                                    (let ((_%hd218151218173%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218150218170%_)))
                                          (_%tl218152218175%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218150218170%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl218152218175%_))
                                          ((lambda (_%g218145218178%_
                                                    _%g218146218179%_)
                                             (let* ((_%klass218195%_
                                                     (let ((__tmp221018
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218131%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx218127%_
                                                        __tmp221018)))
                                                    (_%field218197%_
                                                     (let ((__tmp221019
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218131%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass218195%_
                                                        __tmp221019)))
                                                    (_%object218199%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx218126%_
                                                        _%g218146218179%_)))
                                                    (_%value218201%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx218126%_
                                                        _%g218145218178%_)))
                                                    (_%klass218204%_
                                                     _%klass218195%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass218204%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp221020
                                                          (cons (if (or _%arguments-ok?218141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self218131%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218131%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218197%_ '()))
                                    (cons _%object218199%_
                                          (cons _%value218201%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp221020
                                                      _%stx218127%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass218204%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp221021
                                                              (cons (if (or _%arguments-ok?218141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self218131%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218131%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field218197%_ '()))
                                        (cons _%object218199%_
                                              (cons _%value218201%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp221021 _%stx218127%_))
               (let ((_%$e218224%_
                      (let ((__tmp221022
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218131%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass218204%_
                         __tmp221022))))
                 (if _%$e218224%_
                     ((lambda (_%klass218227%_)
                        (let ((__tmp221023
                               (cons (if (or _%arguments-ok?218141%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self218131%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self218131%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field218197%_
                                                             '()))
                                                 (cons _%object218199%_
                                                       (cons _%value218201%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp221023 _%stx218127%_)))
                      _%$e218224%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218131%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp221024
                                (let ((_%$obj218233%_
                                       (let ((__tmp221025
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp221025))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj218233%_
                                                                '())
                                                          (cons _%object218199%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass218204%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj218233%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self218131%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field218197%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value218201%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?218141%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj218233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self218131%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value218201%_ '())))))
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
                                 _%self218131%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj218233%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218131%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value218201%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp221024 _%stx218127%_))
                         (let ((__tmp221026
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object218199%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self218131%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value218201%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp221026
                            _%stx218127%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd218151218173%_
                                           _%hd218148218165%_)
                                          (_%g218143218157%_
                                           _%g218144218160%_))))
                                  (_%g218143218157%_ _%g218144218160%_))))
                          (_%g218143218157%_ _%g218144218160%_)))))
              (_%g218142218236%_ _%args218128%_))))))
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
      (lambda (_%self217941%_ _%ctx217942%_ _%stx217943%_ _%args217944%_)
        (let* ((_%self217947%_ _%self217941%_)
               (_%self217956217966%_ _%self217947%_)
               (_%E217958217969%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self217956217966%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K217959217979%_
                (lambda (_%inline217972%_ _%dispatch217973%_ _%arity217974%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self217947%_
                         _%args217944%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx217943%_
                         _%arity217974%_)))
                  (if _%inline217972%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp221027 (_%inline217972%_ _%stx217943%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp221027
                           _%stx217943%_
                           _%ctx217942%_)))
                      (if (and _%dispatch217973%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch217973%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch217973%_))
                            (let ((__tmp221028
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch217973%_
                                                           '()))
                                               _%args217944%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp221028
                               _%stx217943%_
                               _%ctx217942%_)))
                          (gxc#!procedure::optimize-call
                           _%self217947%_
                           _%ctx217942%_
                           _%stx217943%_
                           _%args217944%_)))))
               (_%e217960217982%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217956217966%_ '1 '#f '#f)))
               (_%e217961217985%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217956217966%_ '2 '#f '#f)))
               (_%e217962217988%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217956217966%_ '3 '#f '#f)))
               (_%arity217991%_ _%e217962217988%_)
               (_%e217963217993%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217956217966%_ '4 '#f '#f)))
               (_%dispatch217996%_ _%e217963217993%_)
               (_%e217964217998%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217956217966%_ '5 '#f '#f)))
               (_%inline218001%_ _%e217964217998%_))
          (_%K217959217979%_
           _%inline218001%_
           _%dispatch217996%_
           _%arity217991%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self217793%_ _%ctx217794%_ _%stx217795%_ _%args217796%_)
        (let* ((_%self217799%_ _%self217793%_)
               (_%$e217813%_
                (let ((__tmp221030
                       (lambda (_%g217808217810%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g217808217810%_
                            _%args217796%_))))
                      (__tmp221029
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self217799%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp221030 __tmp221029))))
          (if _%$e217813%_
              ((lambda (_%clause217816%_)
                 (let ((__method220934
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause217816%_ 'optimize-call))))
                   (if __method220934
                       (let ()
                         (declare (not safe))
                         (__method220934
                          _%clause217816%_
                          _%ctx217794%_
                          _%stx217795%_
                          _%args217796%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause217816%_
                                  'optimize-call))
                         '#!void))))
               _%$e217813%_)
              (let ((__tmp221031
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self217799%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx217795%_
                 __tmp221031))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self217534%_ _%ctx217535%_ _%stx217536%_ _%args217537%_)
        (let* ((_%self217540%_ _%self217534%_)
               (_%self217549217558%_ _%self217540%_)
               (_%E217551217561%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self217549217558%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K217552217652%_
                (lambda (_%dispatch217564%_ _%table217565%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch217564%_))
                      (let* ((_%g217566217576%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch217564%_)))
                             (_%else217568217584%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch217564%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx217535%_
                                   _%stx217536%_))))
                             (_%K217570217633%_
                              (lambda (_%main217587%_ _%keys217588%_)
                                (let ((_g221032_
                                       (gxc#!kw-lambda-split-args
                                        _%stx217536%_
                                        _%args217537%_)))
                                  (begin
                                    (let ((_g221033_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g221032_)
                                                 (##values-length _g221032_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g221033_ 2)))
                                          (error "Context expects 2 values"
                                                 _g221033_)))
                                    (let ((_%pargs217590%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g221032_ 0)))
                                          (_%kwargs217591%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g221032_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main217587%_))
                                        (if _%table217565%_
                                            (let ((_%xargs217599%_
                                                   (map (lambda (_%key217593%_)
                                                          (let ((_%$e217595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key217593%_ _%kwargs217591%_))))
                    (if _%$e217595%_ _%$e217595%_ '(%#ref absent-value))))
                _%keys217588%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw217601%_)
                                                 (if (memq (car _%kw217601%_)
                                                           _%keys217588%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx217536%_
                                                        _%keys217588%_
                                                        _%kw217601%_))))
                                               _%kwargs217591%_)
                                              (let ((__tmp221034
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main217587%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs217590%_
                                  _%xargs217599%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp221034
                                                 _%stx217536%_
                                                 _%ctx217535%_)))
                                            (let* ((_%kwt217603%_
                                                    (let ((__tmp221035
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp221035)))
                                                   (_%kwvars217607%_
                                                    (map (lambda (_%_217605%_)
                                                           (let ((__tmp221036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp221036)))
                 _%kwargs217591%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind217612%_
                                                    (map (lambda (_%kw217609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217610%_)
                   (cons (cons _%kwvar217610%_ '())
                         (cons (cdr _%kw217609%_) '())))
                 _%kwargs217591%_
                 _%kwvars217607%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset217617%_
                                                    (map (lambda (_%kw217614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217615%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt217603%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw217614%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar217615%_
                                                             '()))
                                                 '()))))))
                 _%kwargs217591%_
                 _%kwvars217607%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs217622%_
                                                    (map (lambda (_%kw217619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217620%_)
                   (cons (car _%kw217619%_)
                         (cons '%#ref (cons _%kwvar217620%_ '()))))
                 _%kwargs217591%_
                 _%kwvars217607%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs217630%_
                                                    (map (lambda (_%key217624%_)
                                                           (let ((_%$e217626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key217624%_ _%xkwargs217622%_))))
                     (if _%$e217626%_ _%$e217626%_ '(%#ref absent-value))))
                 _%keys217588%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp221037
                                                    (cons '%#let-values
                                                          (cons _%kwbind217612%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt217603%_ '())
                                                      (cons (let ((__tmp221038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs217591%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221038 _%stx217536%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp221039
                                                             (cons (let ((__tmp221040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main217587%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt217603%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs217590%_
                                                       _%xargs217630%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp221040 _%stx217536%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp221039 _%kwset217617%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp221037
                                               _%stx217536%_
                                               _%ctx217535%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g217566217576%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e217571217636%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217566217576%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e217572217639%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217566217576%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e217573217642%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217566217576%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys217645%_ _%e217573217642%_)
                                   (_%e217574217647%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217566217576%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main217650%_ _%e217574217647%_))
                              (_%K217570217633%_
                               _%main217650%_
                               _%keys217645%_))
                            (_%else217568217584%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx217535%_ _%stx217536%_)))))
               (_%e217553217655%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217549217558%_ '1 '#f '#f)))
               (_%e217554217658%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217549217558%_ '2 '#f '#f)))
               (_%e217555217661%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217549217558%_ '3 '#f '#f)))
               (_%table217664%_ _%e217555217661%_)
               (_%e217556217666%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217549217558%_ '4 '#f '#f)))
               (_%dispatch217669%_ _%e217556217666%_))
          (_%K217552217652%_ _%dispatch217669%_ _%table217664%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx217147%_ _%args217148%_)
        (let _%lp217150%_ ((_%rest217152%_ _%args217148%_)
                           (_%pargs217153%_ '())
                           (_%kwargs217154%_ '()))
          (let* ((_%__stx220493220494%_ _%rest217152%_)
                 (_%g217160217212%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx220493220494%_)))))
            (let ((_%__kont220495220496%_
                   (lambda (_%g217162217391%_ _%g217163217392%_)
                     (_%lp217150%_
                      _%g217162217391%_
                      (cons _%g217163217392%_ _%pargs217153%_)
                      _%kwargs217154%_)))
                  (_%__kont220497220498%_
                   (lambda (_%g217177217337%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1
                                cons
                                _%g217177217337%_
                                _%pargs217153%_))
                             (reverse _%kwargs217154%_))))
                  (_%__kont220499220500%_
                   (lambda (_%g217188217284%_
                            _%g217189217285%_
                            _%g217190217286%_)
                     (let ((_%kw217303%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g217190217286%_))))
                       (if (assq _%kw217303%_ _%kwargs217154%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx217147%_
                              _%kw217303%_))
                           (_%lp217150%_
                            _%g217188217284%_
                            _%pargs217153%_
                            (cons (cons _%kw217303%_ _%g217189217285%_)
                                  _%kwargs217154%_))))))
                  (_%__kont220501220502%_
                   (lambda (_%g217203217232%_ _%g217204217233%_)
                     (_%lp217150%_
                      _%g217203217232%_
                      (cons _%g217204217233%_ _%pargs217153%_)
                      _%kwargs217154%_)))
                  (_%__kont220503220504%_
                   (lambda ()
                     (values (reverse _%pargs217153%_)
                             (reverse _%kwargs217154%_)))))
              (let ((_%__match220600220601%_
                     (lambda (_%e217191217252%_
                              _%hd217192217255%_
                              _%tl217193217257%_
                              _%e217194217260%_
                              _%hd217195217263%_
                              _%tl217196217265%_
                              _%e217197217268%_
                              _%hd217198217271%_
                              _%tl217199217273%_
                              _%e217200217276%_
                              _%hd217201217279%_
                              _%tl217202217281%_)
                       (let ((_%g217188217284%_ _%tl217202217281%_)
                             (_%g217189217285%_ _%hd217201217279%_)
                             (_%g217190217286%_ _%hd217198217271%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g217190217286%_))
                             (_%__kont220499220500%_
                              _%g217188217284%_
                              _%g217189217285%_
                              _%g217190217286%_)
                             (_%__kont220501220502%_
                              _%tl217193217257%_
                              _%hd217192217255%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx220493220494%_))
                    (let ((_%e217164217356%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx220493220494%_))))
                      (let ((_%tl217166217361%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217164217356%_)))
                            (_%hd217165217359%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217164217356%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd217165217359%_))
                            (let ((_%e217167217364%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd217165217359%_))))
                              (let ((_%tl217169217369%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e217167217364%_)))
                                    (_%hd217168217367%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e217167217364%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd217168217367%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd217168217367%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217169217369%_))
                                            (let ((_%e217170217372%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl217169217369%_))))
                                              (let ((_%tl217172217377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217170217372%_)))
                                                    (_%hd217171217375%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217170217372%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd217171217375%_))
                                                    (let ((_%e217173217380%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd217171217375%_))))
                                                      (if (equal? _%e217173217380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl217172217377%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl217166217361%_))
                          (let ((_%e217174217383%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl217166217361%_))))
                            (let ((_%tl217176217388%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217174217383%_)))
                                  (_%hd217175217386%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217174217383%_))))
                              (_%__kont220495220496%_
                               _%tl217176217388%_
                               _%hd217175217386%_)))
                          (_%__kont220501220502%_
                           _%tl217166217361%_
                           _%hd217165217359%_))
                      (_%__kont220501220502%_
                       _%tl217166217361%_
                       _%hd217165217359%_))
                  (if (equal? _%e217173217380%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217172217377%_))
                          (_%__kont220497220498%_ _%tl217166217361%_)
                          (_%__kont220501220502%_
                           _%tl217166217361%_
                           _%hd217165217359%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217172217377%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217166217361%_))
                              (let ((_%e217200217276%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl217166217361%_))))
                                (let ((_%tl217202217281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217200217276%_)))
                                      (_%hd217201217279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217200217276%_))))
                                  (_%__match220600220601%_
                                   _%e217164217356%_
                                   _%hd217165217359%_
                                   _%tl217166217361%_
                                   _%e217167217364%_
                                   _%hd217168217367%_
                                   _%tl217169217369%_
                                   _%e217170217372%_
                                   _%hd217171217375%_
                                   _%tl217172217377%_
                                   _%e217200217276%_
                                   _%hd217201217279%_
                                   _%tl217202217281%_)))
                              (_%__kont220501220502%_
                               _%tl217166217361%_
                               _%hd217165217359%_))
                          (_%__kont220501220502%_
                           _%tl217166217361%_
                           _%hd217165217359%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl217172217377%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl217166217361%_))
                                                            (let ((_%e217200217276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl217166217361%_))))
                      (let ((_%tl217202217281%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217200217276%_)))
                            (_%hd217201217279%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217200217276%_))))
                        (_%__match220600220601%_
                         _%e217164217356%_
                         _%hd217165217359%_
                         _%tl217166217361%_
                         _%e217167217364%_
                         _%hd217168217367%_
                         _%tl217169217369%_
                         _%e217170217372%_
                         _%hd217171217375%_
                         _%tl217172217377%_
                         _%e217200217276%_
                         _%hd217201217279%_
                         _%tl217202217281%_)))
                    (_%__kont220501220502%_
                     _%tl217166217361%_
                     _%hd217165217359%_))
                (_%__kont220501220502%_
                 _%tl217166217361%_
                 _%hd217165217359%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont220501220502%_
                                             _%tl217166217361%_
                                             _%hd217165217359%_))
                                        (_%__kont220501220502%_
                                         _%tl217166217361%_
                                         _%hd217165217359%_))
                                    (_%__kont220501220502%_
                                     _%tl217166217361%_
                                     _%hd217165217359%_))))
                            (_%__kont220501220502%_
                             _%tl217166217361%_
                             _%hd217165217359%_))))
                    (_%__kont220503220504%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self217131%_ _%ctx217132%_ _%stx217133%_ _%args217134%_)
        (let ((_%self217137%_ _%self217131%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx217132%_ _%stx217133%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self216821%_ _%stx216822%_)
        (let* ((_%__stx220609220610%_ _%stx216822%_)
               (_%g216825216865%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220609220610%_)))))
          (let ((_%__kont220611220612%_
                 (lambda (_%g216827216969%_ _%g216828216970%_)
                   (let ((_%$e216997%_
                          (member 'return:
                                  (let ((__tmp221041
                                         (lambda (_%g216989216992%_
                                                  _%g216990216994%_)
                                           (cons _%g216989216992%_
                                                 _%g216990216994%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp221041
                                     '()
                                     _%g216828216970%_))
                                  gx#stx-eq?)))
                     (if _%$e216997%_
                         ((lambda (_%tail217000%_)
                            (let ((_%type217002%_
                                   (let ((__tmp221042
                                          (let ((__tmp221043
                                                 (cadr _%tail217000%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp221043))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx216822%_
                                      __tmp221042))))
                              (gxc#check-return-type!
                               _%stx216822%_
                               _%g216827216969%_
                               _%type217002%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self216821%_
                                 _%g216827216969%_))))
                          _%$e216997%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self216821%_
                            _%g216827216969%_))))))
                (_%__kont220615220616%_
                 (lambda (_%g216850216894%_ _%g216851216895%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self216821%_ _%g216850216894%_)))))
            (let ((_%__match220646220647%_
                   (lambda (_%e216829216915%_
                            _%hd216830216918%_
                            _%tl216831216920%_
                            _%e216832216923%_
                            _%hd216833216926%_
                            _%tl216834216928%_
                            _%e216835216931%_
                            _%hd216836216934%_
                            _%tl216837216936%_
                            _%__splice220613220614%_
                            _%target216838216939%_
                            _%tl216840216941%_)
                     (letrec ((_%loop216841216944%_
                               (lambda (_%hd216839216947%_
                                        _%signature216845216949%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd216839216947%_))
                                     (let ((_%e216842216951%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd216839216947%_))))
                                       (let ((_%lp-tl216844216956%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e216842216951%_)))
                                             (_%lp-hd216843216954%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e216842216951%_))))
                                         (_%loop216841216944%_
                                          _%lp-tl216844216956%_
                                          (cons _%lp-hd216843216954%_
                                                _%signature216845216949%_))))
                                     (let ((_%signature216846216959%_
                                            (reverse _%signature216845216949%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl216834216928%_))
                                           (let ((_%e216847216961%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl216834216928%_))))
                                             (let ((_%tl216849216966%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e216847216961%_)))
                                                   (_%hd216848216964%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e216847216961%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl216849216966%_))
                                                   (_%__kont220611220612%_
                                                    _%hd216848216964%_
                                                    _%signature216846216959%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g216825216865%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g216825216865%_))))))))
                       (_%loop216841216944%_ _%target216838216939%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220609220610%_))
                  (let ((_%e216829216915%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220609220610%_))))
                    (let ((_%tl216831216920%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216829216915%_)))
                          (_%hd216830216918%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216829216915%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216831216920%_))
                          (let ((_%e216832216923%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216831216920%_))))
                            (let ((_%tl216834216928%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216832216923%_)))
                                  (_%hd216833216926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216832216923%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd216833216926%_))
                                  (let ((_%e216835216931%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216833216926%_))))
                                    (let ((_%tl216837216936%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216835216931%_)))
                                          (_%hd216836216934%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216835216931%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd216836216934%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd216836216934%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl216837216936%_))
                                                  (let ((_%__splice220613220614%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl216837216936%_
                                                            '0))))
                                                    (let ((_%tl216840216941%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220613220614%_
                                                              '1)))
                                                          (_%target216838216939%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220613220614%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216840216941%_))
                                                          (_%__match220646220647%_
                                                           _%e216829216915%_
                                                           _%hd216830216918%_
                                                           _%tl216831216920%_
                                                           _%e216832216923%_
                                                           _%hd216833216926%_
                                                           _%tl216834216928%_
                                                           _%e216835216931%_
                                                           _%hd216836216934%_
                                                           _%tl216837216936%_
                                                           _%__splice220613220614%_
                                                           _%target216838216939%_
                                                           _%tl216840216941%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl216834216928%_))
                      (let ((_%e216858216886%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216834216928%_))))
                        (let ((_%tl216860216891%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216858216886%_)))
                              (_%hd216859216889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216858216886%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216860216891%_))
                              (_%__kont220615220616%_
                               _%hd216859216889%_
                               _%hd216833216926%_)
                              (let ()
                                (declare (not safe))
                                (_%g216825216865%_)))))
                      (let () (declare (not safe)) (_%g216825216865%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216834216928%_))
                                                      (let ((_%e216858216886%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216834216928%_))))
                (let ((_%tl216860216891%_
                       (let () (declare (not safe)) (##cdr _%e216858216886%_)))
                      (_%hd216859216889%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216858216886%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216860216891%_))
                      (_%__kont220615220616%_
                       _%hd216859216889%_
                       _%hd216833216926%_)
                      (let () (declare (not safe)) (_%g216825216865%_)))))
              (let () (declare (not safe)) (_%g216825216865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216834216928%_))
                                                  (let ((_%e216858216886%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216834216928%_))))
                                                    (let ((_%tl216860216891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216858216886%_)))
                                                          (_%hd216859216889%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216858216886%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216860216891%_))
                                                          (_%__kont220615220616%_
                                                           _%hd216859216889%_
                                                           _%hd216833216926%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216825216865%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216825216865%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216834216928%_))
                                              (let ((_%e216858216886%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216834216928%_))))
                                                (let ((_%tl216860216891%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216858216886%_)))
                                                      (_%hd216859216889%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216858216886%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216860216891%_))
                                                      (_%__kont220615220616%_
                                                       _%hd216859216889%_
                                                       _%hd216833216926%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216825216865%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216825216865%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216834216928%_))
                                      (let ((_%e216858216886%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216834216928%_))))
                                        (let ((_%tl216860216891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216858216886%_)))
                                              (_%hd216859216889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216858216886%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216860216891%_))
                                              (_%__kont220615220616%_
                                               _%hd216859216889%_
                                               _%hd216833216926%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g216825216865%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216825216865%_))))))
                          (let () (declare (not safe)) (_%g216825216865%_)))))
                  (let () (declare (not safe)) (_%g216825216865%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx216796%_ _%expr216797%_ _%type216798%_)
        (let ((_%$e216800%_ (not _%type216798%_)))
          (if _%$e216800%_
              _%$e216800%_
              (let ((_%$e216803%_
                     (eq? (##structure-ref _%type216798%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e216803%_
                    _%$e216803%_
                    (let ((_%$e216806%_
                           (eq? (##structure-ref
                                 _%type216798%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e216806%_
                          _%$e216806%_
                          (let ((_%expr-type216810%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr216797%_))))
                            (if (not _%expr-type216810%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx216796%_
                                   _%type216798%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type216810%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx216796%_
                                       _%type216798%_
                                       _%expr-type216810%_))
                                    (let ((_%$e216814%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type216810%_
                                              'gxc#!abort::t))))
                                      (if _%$e216814%_
                                          _%$e216814%_
                                          (let ((_%$e216817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type216810%_
                                                    _%type216798%_))))
                                            (if _%$e216817%_
                                                _%$e216817%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx216796%_
                                                   _%type216798%_
                                                   _%expr-type216810%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self216222%_ _%stx216223%_)
        (let* ((_%__stx220691220692%_ _%stx216223%_)
               (_%g216228216338%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220691220692%_)))))
          (let ((_%__kont220693220694%_
                 (lambda (_%g216230216770%_
                          _%g216231216771%_
                          _%g216232216772%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g216232216772%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self216222%_ _%g216231216771%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self216222%_
                          _%g216230216770%_)))))
                (_%__kont220695220696%_
                 (lambda (_%g216251216596%_
                          _%g216252216597%_
                          _%g216253216598%_
                          _%g216254216599%_)
                   (let ((_%$e216631%_
                          (let ((__tmp221044
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g216254216599%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp221044))))
                     (if _%$e216631%_
                         ((lambda (_%pred-type216634%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type216634%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type216634%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test216639%_
                                        (let ((__tmp221045
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g216254216599%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g216253216598%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp221045
                                           _%stx216223%_
                                           _%self216222%_)))
                                       (_%K216643%_
                                        (let ((__tmp221046
                                               (lambda ()
                                                 (let ((__tmp221049
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self216222%_
                                                             _%g216252216597%_))))
                                                       (__tmp221047
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g216253216598%_))
                            (let ((__tmp221048
                                   (##structure-ref
                                    _%pred-type216634%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx216223%_
                               __tmp221048)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp221049
                                                    gxc#current-compile-path-type
                                                    __tmp221047)))))
                                          (declare (not safe))
                                          (__make-promise __tmp221046)))
                                       (_%E216646%_
                                        (let ((__tmp221050
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self216222%_
                                                    _%g216251216596%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp221050)))
                                       (_%__stx220669220670%_ _%test216639%_)
                                       (_%g216650216664%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx220669220670%_)))))
                                  (let ((_%__kont220671220672%_
                                         (lambda (_%g216652216692%_
                                                  _%g216653216693%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g216652216692%_))
                                               (force _%K216643%_)
                                               (force _%E216646%_))))
                                        (_%__kont220673220674%_
                                         (lambda ()
                                           (let ((__tmp221051
                                                  (cons '%#if
                                                        (cons _%test216639%_
                                                              (cons (force _%K216643%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E216646%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221051
                                              _%stx216223%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx220669220670%_))
                                        (let ((_%e216654216676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx220669220670%_))))
                                          (let ((_%tl216656216681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e216654216676%_)))
                                                (_%hd216655216679%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e216654216676%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl216656216681%_))
                                                (let ((_%e216657216684%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl216656216681%_))))
                                                  (let ((_%tl216659216689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e216657216684%_)))
                                                        (_%hd216658216687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e216657216684%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl216659216689%_))
                                                        (_%__kont220671220672%_
                                                         _%hd216658216687%_
                                                         _%hd216655216679%_)
                                                        (_%__kont220673220674%_))))
                                                (_%__kont220673220674%_))))
                                        (_%__kont220673220674%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self216222%_
                                   _%stx216223%_))))
                          _%$e216631%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self216222%_
                            _%stx216223%_))))))
                (_%__kont220697220698%_
                 (lambda (_%g216288216472%_
                          _%g216289216473%_
                          _%g216290216474%_
                          _%g216291216475%_)
                   (gxc#optimize-if%
                    _%self216222%_
                    (let ((__tmp221052
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g216290216474%_
                                       (cons _%g216288216472%_
                                             (cons _%g216289216473%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221052 _%stx216223%_)))))
                (_%__kont220699220700%_
                 (lambda (_%g216319216375%_
                          _%g216320216376%_
                          _%g216321216377%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self216222%_ _%stx216223%_)))))
            (let ((_%__match220898220899%_
                   (lambda (_%e216292216400%_
                            _%hd216293216403%_
                            _%tl216294216405%_
                            _%e216295216408%_
                            _%hd216296216411%_
                            _%tl216297216413%_
                            _%e216298216416%_
                            _%hd216299216419%_
                            _%tl216300216421%_
                            _%e216301216424%_
                            _%hd216302216427%_
                            _%tl216303216429%_
                            _%e216304216432%_
                            _%hd216305216435%_
                            _%tl216306216437%_
                            _%e216307216440%_
                            _%hd216308216443%_
                            _%tl216309216445%_
                            _%e216310216448%_
                            _%hd216311216451%_
                            _%tl216312216453%_
                            _%e216313216456%_
                            _%hd216314216459%_
                            _%tl216315216461%_
                            _%e216316216464%_
                            _%hd216317216467%_
                            _%tl216318216469%_)
                     (let ((_%g216288216472%_ _%hd216317216467%_)
                           (_%g216289216473%_ _%hd216314216459%_)
                           (_%g216290216474%_ _%hd216311216451%_)
                           (_%g216291216475%_ _%hd216308216443%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g216291216475%_ 'not))
                           (_%__kont220697220698%_
                            _%g216288216472%_
                            _%g216289216473%_
                            _%g216290216474%_
                            _%g216291216475%_)
                           (_%__kont220699220700%_
                            _%hd216317216467%_
                            _%hd216314216459%_
                            _%hd216296216411%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220691220692%_))
                  (let ((_%e216233216722%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220691220692%_))))
                    (let ((_%tl216235216727%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216233216722%_)))
                          (_%hd216234216725%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216233216722%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216235216727%_))
                          (let ((_%e216236216730%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216235216727%_))))
                            (let ((_%tl216238216735%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216236216730%_)))
                                  (_%hd216237216733%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216236216730%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd216237216733%_))
                                  (let ((_%e216239216738%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216237216733%_))))
                                    (let ((_%tl216241216743%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216239216738%_)))
                                          (_%hd216240216741%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216239216738%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd216240216741%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd216240216741%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216241216743%_))
                                                  (let ((_%e216242216746%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216241216743%_))))
                                                    (let ((_%tl216244216751%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216242216746%_)))
                                                          (_%hd216243216749%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216242216746%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216244216751%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl216238216735%_))
                      (let ((_%e216245216754%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216238216735%_))))
                        (let ((_%tl216247216759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216245216754%_)))
                              (_%hd216246216757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216245216754%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216247216759%_))
                              (let ((_%e216248216762%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216247216759%_))))
                                (let ((_%tl216250216767%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216248216762%_)))
                                      (_%hd216249216765%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216248216762%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216250216767%_))
                                      (_%__kont220693220694%_
                                       _%hd216249216765%_
                                       _%hd216246216757%_
                                       _%hd216243216749%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g216228216338%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g216228216338%_)))))
                      (let () (declare (not safe)) (_%g216228216338%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216238216735%_))
                      (let ((_%e216328216359%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216238216735%_))))
                        (let ((_%tl216330216364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216328216359%_)))
                              (_%hd216329216362%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216328216359%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216330216364%_))
                              (let ((_%e216331216367%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216330216364%_))))
                                (let ((_%tl216333216372%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216331216367%_)))
                                      (_%hd216332216370%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216331216367%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216333216372%_))
                                      (_%__kont220699220700%_
                                       _%hd216332216370%_
                                       _%hd216329216362%_
                                       _%hd216237216733%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g216228216338%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g216228216338%_)))))
                      (let () (declare (not safe)) (_%g216228216338%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216238216735%_))
                                                      (let ((_%e216328216359%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216238216735%_))))
                (let ((_%tl216330216364%_
                       (let () (declare (not safe)) (##cdr _%e216328216359%_)))
                      (_%hd216329216362%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216328216359%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216330216364%_))
                      (let ((_%e216331216367%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216330216364%_))))
                        (let ((_%tl216333216372%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216331216367%_)))
                              (_%hd216332216370%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216331216367%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216333216372%_))
                              (_%__kont220699220700%_
                               _%hd216332216370%_
                               _%hd216329216362%_
                               _%hd216237216733%_)
                              (let ()
                                (declare (not safe))
                                (_%g216228216338%_)))))
                      (let () (declare (not safe)) (_%g216228216338%_)))))
              (let () (declare (not safe)) (_%g216228216338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd216240216741%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216241216743%_))
                                                      (let ((_%e216264216532%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216241216743%_))))
                (let ((_%tl216266216537%_
                       (let () (declare (not safe)) (##cdr _%e216264216532%_)))
                      (_%hd216265216535%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216264216532%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd216265216535%_))
                      (let ((_%e216267216540%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd216265216535%_))))
                        (let ((_%tl216269216545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216267216540%_)))
                              (_%hd216268216543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216267216540%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd216268216543%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd216268216543%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216269216545%_))
                                      (let ((_%e216270216548%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216269216545%_))))
                                        (let ((_%tl216272216553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216270216548%_)))
                                              (_%hd216271216551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216270216548%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216272216553%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216266216537%_))
                                                  (let ((_%e216273216556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216266216537%_))))
                                                    (let ((_%tl216275216561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216273216556%_)))
                                                          (_%hd216274216559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216273216556%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd216274216559%_))
                                                          (let ((_%e216276216564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd216274216559%_))))
                    (let ((_%tl216278216569%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216276216564%_)))
                          (_%hd216277216567%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216276216564%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd216277216567%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd216277216567%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216278216569%_))
                                  (let ((_%e216279216572%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216278216569%_))))
                                    (let ((_%tl216281216577%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216279216572%_)))
                                          (_%hd216280216575%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216279216572%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216281216577%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216275216561%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216238216735%_))
                                                  (let ((_%e216282216580%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216238216735%_))))
                                                    (let ((_%tl216284216585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216282216580%_)))
                                                          (_%hd216283216583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216282216580%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216284216585%_))
                                                          (let ((_%e216285216588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216284216585%_))))
                    (let ((_%tl216287216593%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216285216588%_)))
                          (_%hd216286216591%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216285216588%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216287216593%_))
                          (_%__kont220695220696%_
                           _%hd216286216591%_
                           _%hd216283216583%_
                           _%hd216280216575%_
                           _%hd216271216551%_)
                          (let () (declare (not safe)) (_%g216228216338%_)))))
                  (let () (declare (not safe)) (_%g216228216338%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216228216338%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216238216735%_))
                                                  (let ((_%e216328216359%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216238216735%_))))
                                                    (let ((_%tl216330216364%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216328216359%_)))
                                                          (_%hd216329216362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216328216359%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216330216364%_))
                                                          (let ((_%e216331216367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216330216364%_))))
                    (let ((_%tl216333216372%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216331216367%_)))
                          (_%hd216332216370%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216331216367%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216333216372%_))
                          (_%__kont220699220700%_
                           _%hd216332216370%_
                           _%hd216329216362%_
                           _%hd216237216733%_)
                          (let () (declare (not safe)) (_%g216228216338%_)))))
                  (let () (declare (not safe)) (_%g216228216338%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216228216338%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216275216561%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216238216735%_))
                                                  (let ((_%e216313216456%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216238216735%_))))
                                                    (let ((_%tl216315216461%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216313216456%_)))
                                                          (_%hd216314216459%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216313216456%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216315216461%_))
                                                          (let ((_%e216316216464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216315216461%_))))
                    (let ((_%tl216318216469%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216316216464%_)))
                          (_%hd216317216467%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216316216464%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216318216469%_))
                          (_%__match220898220899%_
                           _%e216233216722%_
                           _%hd216234216725%_
                           _%tl216235216727%_
                           _%e216236216730%_
                           _%hd216237216733%_
                           _%tl216238216735%_
                           _%e216239216738%_
                           _%hd216240216741%_
                           _%tl216241216743%_
                           _%e216264216532%_
                           _%hd216265216535%_
                           _%tl216266216537%_
                           _%e216267216540%_
                           _%hd216268216543%_
                           _%tl216269216545%_
                           _%e216270216548%_
                           _%hd216271216551%_
                           _%tl216272216553%_
                           _%e216273216556%_
                           _%hd216274216559%_
                           _%tl216275216561%_
                           _%e216313216456%_
                           _%hd216314216459%_
                           _%tl216315216461%_
                           _%e216316216464%_
                           _%hd216317216467%_
                           _%tl216318216469%_)
                          (let () (declare (not safe)) (_%g216228216338%_)))))
                  (let () (declare (not safe)) (_%g216228216338%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216228216338%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216238216735%_))
                                                  (let ((_%e216328216359%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216238216735%_))))
                                                    (let ((_%tl216330216364%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216328216359%_)))
                                                          (_%hd216329216362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216328216359%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216330216364%_))
                                                          (let ((_%e216331216367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216330216364%_))))
                    (let ((_%tl216333216372%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216331216367%_)))
                          (_%hd216332216370%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216331216367%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216333216372%_))
                          (_%__kont220699220700%_
                           _%hd216332216370%_
                           _%hd216329216362%_
                           _%hd216237216733%_)
                          (let () (declare (not safe)) (_%g216228216338%_)))))
                  (let () (declare (not safe)) (_%g216228216338%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216228216338%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216275216561%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216238216735%_))
                                          (let ((_%e216313216456%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216238216735%_))))
                                            (let ((_%tl216315216461%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216313216456%_)))
                                                  (_%hd216314216459%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216313216456%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216315216461%_))
                                                  (let ((_%e216316216464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216315216461%_))))
                                                    (let ((_%tl216318216469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216316216464%_)))
                                                          (_%hd216317216467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216316216464%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216318216469%_))
                                                          (_%__match220898220899%_
                                                           _%e216233216722%_
                                                           _%hd216234216725%_
                                                           _%tl216235216727%_
                                                           _%e216236216730%_
                                                           _%hd216237216733%_
                                                           _%tl216238216735%_
                                                           _%e216239216738%_
                                                           _%hd216240216741%_
                                                           _%tl216241216743%_
                                                           _%e216264216532%_
                                                           _%hd216265216535%_
                                                           _%tl216266216537%_
                                                           _%e216267216540%_
                                                           _%hd216268216543%_
                                                           _%tl216269216545%_
                                                           _%e216270216548%_
                                                           _%hd216271216551%_
                                                           _%tl216272216553%_
                                                           _%e216273216556%_
                                                           _%hd216274216559%_
                                                           _%tl216275216561%_
                                                           _%e216313216456%_
                                                           _%hd216314216459%_
                                                           _%tl216315216461%_
                                                           _%e216316216464%_
                                                           _%hd216317216467%_
                                                           _%tl216318216469%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216228216338%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216228216338%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216228216338%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216238216735%_))
                                          (let ((_%e216328216359%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216238216735%_))))
                                            (let ((_%tl216330216364%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216328216359%_)))
                                                  (_%hd216329216362%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216328216359%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216330216364%_))
                                                  (let ((_%e216331216367%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216330216364%_))))
                                                    (let ((_%tl216333216372%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216331216367%_)))
                                                          (_%hd216332216370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216331216367%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216333216372%_))
                                                          (_%__kont220699220700%_
                                                           _%hd216332216370%_
                                                           _%hd216329216362%_
                                                           _%hd216237216733%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216228216338%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216228216338%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216228216338%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216275216561%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216238216735%_))
                                      (let ((_%e216313216456%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216238216735%_))))
                                        (let ((_%tl216315216461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216313216456%_)))
                                              (_%hd216314216459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216313216456%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216315216461%_))
                                              (let ((_%e216316216464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216315216461%_))))
                                                (let ((_%tl216318216469%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216316216464%_)))
                                                      (_%hd216317216467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216316216464%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216318216469%_))
                                                      (_%__match220898220899%_
                                                       _%e216233216722%_
                                                       _%hd216234216725%_
                                                       _%tl216235216727%_
                                                       _%e216236216730%_
                                                       _%hd216237216733%_
                                                       _%tl216238216735%_
                                                       _%e216239216738%_
                                                       _%hd216240216741%_
                                                       _%tl216241216743%_
                                                       _%e216264216532%_
                                                       _%hd216265216535%_
                                                       _%tl216266216537%_
                                                       _%e216267216540%_
                                                       _%hd216268216543%_
                                                       _%tl216269216545%_
                                                       _%e216270216548%_
                                                       _%hd216271216551%_
                                                       _%tl216272216553%_
                                                       _%e216273216556%_
                                                       _%hd216274216559%_
                                                       _%tl216275216561%_
                                                       _%e216313216456%_
                                                       _%hd216314216459%_
                                                       _%tl216315216461%_
                                                       _%e216316216464%_
                                                       _%hd216317216467%_
                                                       _%tl216318216469%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216228216338%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216228216338%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216228216338%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216238216735%_))
                                      (let ((_%e216328216359%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216238216735%_))))
                                        (let ((_%tl216330216364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216328216359%_)))
                                              (_%hd216329216362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216328216359%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216330216364%_))
                                              (let ((_%e216331216367%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216330216364%_))))
                                                (let ((_%tl216333216372%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216331216367%_)))
                                                      (_%hd216332216370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216331216367%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216333216372%_))
                                                      (_%__kont220699220700%_
                                                       _%hd216332216370%_
                                                       _%hd216329216362%_
                                                       _%hd216237216733%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216228216338%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216228216338%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216228216338%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216275216561%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216238216735%_))
                                  (let ((_%e216313216456%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216238216735%_))))
                                    (let ((_%tl216315216461%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216313216456%_)))
                                          (_%hd216314216459%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216313216456%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216315216461%_))
                                          (let ((_%e216316216464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216315216461%_))))
                                            (let ((_%tl216318216469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216316216464%_)))
                                                  (_%hd216317216467%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216316216464%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216318216469%_))
                                                  (_%__match220898220899%_
                                                   _%e216233216722%_
                                                   _%hd216234216725%_
                                                   _%tl216235216727%_
                                                   _%e216236216730%_
                                                   _%hd216237216733%_
                                                   _%tl216238216735%_
                                                   _%e216239216738%_
                                                   _%hd216240216741%_
                                                   _%tl216241216743%_
                                                   _%e216264216532%_
                                                   _%hd216265216535%_
                                                   _%tl216266216537%_
                                                   _%e216267216540%_
                                                   _%hd216268216543%_
                                                   _%tl216269216545%_
                                                   _%e216270216548%_
                                                   _%hd216271216551%_
                                                   _%tl216272216553%_
                                                   _%e216273216556%_
                                                   _%hd216274216559%_
                                                   _%tl216275216561%_
                                                   _%e216313216456%_
                                                   _%hd216314216459%_
                                                   _%tl216315216461%_
                                                   _%e216316216464%_
                                                   _%hd216317216467%_
                                                   _%tl216318216469%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216228216338%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216228216338%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216228216338%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216238216735%_))
                                  (let ((_%e216328216359%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216238216735%_))))
                                    (let ((_%tl216330216364%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216328216359%_)))
                                          (_%hd216329216362%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216328216359%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216330216364%_))
                                          (let ((_%e216331216367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216330216364%_))))
                                            (let ((_%tl216333216372%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216331216367%_)))
                                                  (_%hd216332216370%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216331216367%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216333216372%_))
                                                  (_%__kont220699220700%_
                                                   _%hd216332216370%_
                                                   _%hd216329216362%_
                                                   _%hd216237216733%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216228216338%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216228216338%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216228216338%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216275216561%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216238216735%_))
                          (let ((_%e216313216456%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216238216735%_))))
                            (let ((_%tl216315216461%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216313216456%_)))
                                  (_%hd216314216459%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216313216456%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216315216461%_))
                                  (let ((_%e216316216464%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216315216461%_))))
                                    (let ((_%tl216318216469%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216316216464%_)))
                                          (_%hd216317216467%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216316216464%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216318216469%_))
                                          (_%__match220898220899%_
                                           _%e216233216722%_
                                           _%hd216234216725%_
                                           _%tl216235216727%_
                                           _%e216236216730%_
                                           _%hd216237216733%_
                                           _%tl216238216735%_
                                           _%e216239216738%_
                                           _%hd216240216741%_
                                           _%tl216241216743%_
                                           _%e216264216532%_
                                           _%hd216265216535%_
                                           _%tl216266216537%_
                                           _%e216267216540%_
                                           _%hd216268216543%_
                                           _%tl216269216545%_
                                           _%e216270216548%_
                                           _%hd216271216551%_
                                           _%tl216272216553%_
                                           _%e216273216556%_
                                           _%hd216274216559%_
                                           _%tl216275216561%_
                                           _%e216313216456%_
                                           _%hd216314216459%_
                                           _%tl216315216461%_
                                           _%e216316216464%_
                                           _%hd216317216467%_
                                           _%tl216318216469%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216228216338%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216228216338%_)))))
                          (let () (declare (not safe)) (_%g216228216338%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216238216735%_))
                          (let ((_%e216328216359%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216238216735%_))))
                            (let ((_%tl216330216364%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216328216359%_)))
                                  (_%hd216329216362%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216328216359%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216330216364%_))
                                  (let ((_%e216331216367%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216330216364%_))))
                                    (let ((_%tl216333216372%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216331216367%_)))
                                          (_%hd216332216370%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216331216367%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216333216372%_))
                                          (_%__kont220699220700%_
                                           _%hd216332216370%_
                                           _%hd216329216362%_
                                           _%hd216237216733%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216228216338%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216228216338%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g216228216338%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216238216735%_))
                                                      (let ((_%e216328216359%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216238216735%_))))
                (let ((_%tl216330216364%_
                       (let () (declare (not safe)) (##cdr _%e216328216359%_)))
                      (_%hd216329216362%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216328216359%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216330216364%_))
                      (let ((_%e216331216367%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216330216364%_))))
                        (let ((_%tl216333216372%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216331216367%_)))
                              (_%hd216332216370%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216331216367%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216333216372%_))
                              (_%__kont220699220700%_
                               _%hd216332216370%_
                               _%hd216329216362%_
                               _%hd216237216733%_)
                              (let ()
                                (declare (not safe))
                                (_%g216228216338%_)))))
                      (let () (declare (not safe)) (_%g216228216338%_)))))
              (let () (declare (not safe)) (_%g216228216338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216238216735%_))
                                                  (let ((_%e216328216359%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216238216735%_))))
                                                    (let ((_%tl216330216364%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216328216359%_)))
                                                          (_%hd216329216362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216328216359%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216330216364%_))
                                                          (let ((_%e216331216367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216330216364%_))))
                    (let ((_%tl216333216372%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216331216367%_)))
                          (_%hd216332216370%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216331216367%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216333216372%_))
                          (_%__kont220699220700%_
                           _%hd216332216370%_
                           _%hd216329216362%_
                           _%hd216237216733%_)
                          (let () (declare (not safe)) (_%g216228216338%_)))))
                  (let () (declare (not safe)) (_%g216228216338%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216228216338%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216238216735%_))
                                          (let ((_%e216328216359%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216238216735%_))))
                                            (let ((_%tl216330216364%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216328216359%_)))
                                                  (_%hd216329216362%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216328216359%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216330216364%_))
                                                  (let ((_%e216331216367%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216330216364%_))))
                                                    (let ((_%tl216333216372%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216331216367%_)))
                                                          (_%hd216332216370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216331216367%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216333216372%_))
                                                          (_%__kont220699220700%_
                                                           _%hd216332216370%_
                                                           _%hd216329216362%_
                                                           _%hd216237216733%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216228216338%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216228216338%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216228216338%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216238216735%_))
                                      (let ((_%e216328216359%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216238216735%_))))
                                        (let ((_%tl216330216364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216328216359%_)))
                                              (_%hd216329216362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216328216359%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216330216364%_))
                                              (let ((_%e216331216367%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216330216364%_))))
                                                (let ((_%tl216333216372%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216331216367%_)))
                                                      (_%hd216332216370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216331216367%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216333216372%_))
                                                      (_%__kont220699220700%_
                                                       _%hd216332216370%_
                                                       _%hd216329216362%_
                                                       _%hd216237216733%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216228216338%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216228216338%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216228216338%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216238216735%_))
                                  (let ((_%e216328216359%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216238216735%_))))
                                    (let ((_%tl216330216364%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216328216359%_)))
                                          (_%hd216329216362%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216328216359%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216330216364%_))
                                          (let ((_%e216331216367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216330216364%_))))
                                            (let ((_%tl216333216372%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216331216367%_)))
                                                  (_%hd216332216370%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216331216367%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216333216372%_))
                                                  (_%__kont220699220700%_
                                                   _%hd216332216370%_
                                                   _%hd216329216362%_
                                                   _%hd216237216733%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216228216338%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216228216338%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216228216338%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216238216735%_))
                          (let ((_%e216328216359%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216238216735%_))))
                            (let ((_%tl216330216364%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216328216359%_)))
                                  (_%hd216329216362%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216328216359%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216330216364%_))
                                  (let ((_%e216331216367%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216330216364%_))))
                                    (let ((_%tl216333216372%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216331216367%_)))
                                          (_%hd216332216370%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216331216367%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216333216372%_))
                                          (_%__kont220699220700%_
                                           _%hd216332216370%_
                                           _%hd216329216362%_
                                           _%hd216237216733%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216228216338%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216228216338%_)))))
                          (let () (declare (not safe)) (_%g216228216338%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl216238216735%_))
                  (let ((_%e216328216359%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216238216735%_))))
                    (let ((_%tl216330216364%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216328216359%_)))
                          (_%hd216329216362%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216328216359%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216330216364%_))
                          (let ((_%e216331216367%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216330216364%_))))
                            (let ((_%tl216333216372%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216331216367%_)))
                                  (_%hd216332216370%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216331216367%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216333216372%_))
                                  (_%__kont220699220700%_
                                   _%hd216332216370%_
                                   _%hd216329216362%_
                                   _%hd216237216733%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g216228216338%_)))))
                          (let () (declare (not safe)) (_%g216228216338%_)))))
                  (let () (declare (not safe)) (_%g216228216338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216238216735%_))
                                                      (let ((_%e216328216359%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216238216735%_))))
                (let ((_%tl216330216364%_
                       (let () (declare (not safe)) (##cdr _%e216328216359%_)))
                      (_%hd216329216362%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216328216359%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216330216364%_))
                      (let ((_%e216331216367%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216330216364%_))))
                        (let ((_%tl216333216372%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216331216367%_)))
                              (_%hd216332216370%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216331216367%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216333216372%_))
                              (_%__kont220699220700%_
                               _%hd216332216370%_
                               _%hd216329216362%_
                               _%hd216237216733%_)
                              (let ()
                                (declare (not safe))
                                (_%g216228216338%_)))))
                      (let () (declare (not safe)) (_%g216228216338%_)))))
              (let () (declare (not safe)) (_%g216228216338%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216238216735%_))
                                              (let ((_%e216328216359%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216238216735%_))))
                                                (let ((_%tl216330216364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216328216359%_)))
                                                      (_%hd216329216362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216328216359%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216330216364%_))
                                                      (let ((_%e216331216367%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216330216364%_))))
                (let ((_%tl216333216372%_
                       (let () (declare (not safe)) (##cdr _%e216331216367%_)))
                      (_%hd216332216370%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216331216367%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216333216372%_))
                      (_%__kont220699220700%_
                       _%hd216332216370%_
                       _%hd216329216362%_
                       _%hd216237216733%_)
                      (let () (declare (not safe)) (_%g216228216338%_)))))
              (let () (declare (not safe)) (_%g216228216338%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g216228216338%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216238216735%_))
                                      (let ((_%e216328216359%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216238216735%_))))
                                        (let ((_%tl216330216364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216328216359%_)))
                                              (_%hd216329216362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216328216359%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216330216364%_))
                                              (let ((_%e216331216367%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216330216364%_))))
                                                (let ((_%tl216333216372%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216331216367%_)))
                                                      (_%hd216332216370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216331216367%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216333216372%_))
                                                      (_%__kont220699220700%_
                                                       _%hd216332216370%_
                                                       _%hd216329216362%_
                                                       _%hd216237216733%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216228216338%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216228216338%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216228216338%_))))))
                          (let () (declare (not safe)) (_%g216228216338%_)))))
                  (let () (declare (not safe)) (_%g216228216338%_))))))))))
