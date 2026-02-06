(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1770341484)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp220955 (list gxc#::basic-xform::t))
            (__tmp220954 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp220955
         '()
         __tmp220954
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args220232%_
        (apply make-instance gxc#::optimize-call::t _%$args220232%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp220956
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
        (__make-atomic-promise __tmp220956)))
    (define gxc#apply-optimize-call
      (lambda (_%stx220224%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self220227%_
                (let ((__obj220946
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj220946))
               (__tmp220957
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220227%_ _%stx220224%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220957
           gxc#current-compile-method
           _%self220227%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp220959 (list gxc#::void::t))
            (__tmp220958 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp220959
         '()
         __tmp220958
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args220221%_
        (apply make-instance gxc#::check-return-type::t _%$args220221%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp220960
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
        (__make-atomic-promise __tmp220960)))
    (define gxc#apply-check-return-type
      (lambda (_%stx220213%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self220216%_
                (let ((__obj220948
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj220948))
               (__tmp220961
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220216%_ _%stx220213%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220961
           gxc#current-compile-method
           _%self220216%_))))
    (define gxc#optimize-call%
      (lambda (_%self219820%_ _%stx219821%_)
        (let* ((_%__stx220301220302%_ _%stx219821%_)
               (_%g219824219870%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220301220302%_)))))
          (let ((_%__kont220303220304%_
                 (lambda (_%g219826220009%_ _%g219827220010%_)
                   (let* ((_%rator-id220030%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g219827220010%_)))
                          (_%rator-type220032%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id220030%_))))
                     (if (or (not _%rator-type220032%_)
                             (eq? (##structure-ref
                                   _%rator-type220032%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self219820%_ _%stx219821%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type220032%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp220962
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type220032%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id220030%_
                                  '" => "
                                  _%rator-type220032%_
                                  '" "
                                  __tmp220962))
                               (let* ((_%optimized220047%_
                                       (let ((__method220949
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type220032%_
                                                 'optimize-call))))
                                         (if __method220949
                                             (let ((__tmp220963
                                                    (let ((__tmp220964
                                                           (lambda (_%g220039220042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g220040220044%_)
                     (cons _%g220039220042%_ _%g220040220044%_))))
              (declare (not safe))
              (__foldr1 __tmp220964 '() _%g219826220009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method220949
                                                _%rator-type220032%_
                                                _%self219820%_
                                                _%stx219821%_
                                                __tmp220963))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type220032%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx220249220250%_
                                       _%optimized220047%_)
                                      (_%g220050220079%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx220249220250%_)))))
                                 (let ((_%__kont220251220252%_
                                        (lambda (_%g220052220145%_
                                                 _%g220053220146%_)
                                          (let* ((_%optimized-rator-id220173%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g220053220146%_)))
                                                 (_%rator-type220178%_
                                                  (let ((_%$e220175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id220173%_))))
                                                    (if _%$e220175%_
                                                        _%$e220175%_
                                                        _%rator-type220032%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type220178%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id220173%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type220178%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type220178%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized220047%_
                                                (let ((__tmp220965
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g220053220146%_ '()))
                           (let ((__tmp220966
                                  (lambda (_%g220186220189%_ _%g220187220191%_)
                                    (cons _%g220186220189%_
                                          _%g220187220191%_))))
                             (declare (not safe))
                             (__foldr1 __tmp220966 '() _%g220052220145%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp220965
                                                   _%stx219821%_))))))
                                       (_%__kont220255220256%_
                                        (lambda () _%optimized220047%_)))
                                   (let ((_%__match220298220299%_
                                          (lambda (_%e220054220091%_
                                                   _%hd220055220094%_
                                                   _%tl220056220096%_
                                                   _%e220057220099%_
                                                   _%hd220058220102%_
                                                   _%tl220059220104%_
                                                   _%e220060220107%_
                                                   _%hd220061220110%_
                                                   _%tl220062220112%_
                                                   _%e220063220115%_
                                                   _%hd220064220118%_
                                                   _%tl220065220120%_
                                                   _%__splice220253220254%_
                                                   _%target220066220123%_
                                                   _%tl220068220125%_)
                                            (letrec ((_%loop220069220128%_
                                                      (lambda (_%hd220067220131%_
                                                               _%arg220073220133%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd220067220131%_))
                                                            (let ((_%e220070220135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd220067220131%_))))
                      (let ((_%lp-tl220072220140%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e220070220135%_)))
                            (_%lp-hd220071220138%_
                             (let ()
                               (declare (not safe))
                               (##car _%e220070220135%_))))
                        (_%loop220069220128%_
                         _%lp-tl220072220140%_
                         (cons _%lp-hd220071220138%_ _%arg220073220133%_))))
                    (let ((_%arg220074220143%_ (reverse _%arg220073220133%_)))
                      (_%__kont220251220252%_
                       _%arg220074220143%_
                       _%hd220064220118%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop220069220128%_
                                               _%target220066220123%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx220249220250%_))
                                         (let ((_%e220054220091%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx220249220250%_))))
                                           (let ((_%tl220056220096%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e220054220091%_)))
                                                 (_%hd220055220094%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e220054220091%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd220055220094%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd220055220094%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl220056220096%_))
                                                         (let ((_%e220057220099%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl220056220096%_))))
                   (let ((_%tl220059220104%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e220057220099%_)))
                         (_%hd220058220102%_
                          (let ()
                            (declare (not safe))
                            (##car _%e220057220099%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd220058220102%_))
                         (let ((_%e220060220107%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd220058220102%_))))
                           (let ((_%tl220062220112%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e220060220107%_)))
                                 (_%hd220061220110%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e220060220107%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd220061220110%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd220061220110%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl220062220112%_))
                                         (let ((_%e220063220115%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl220062220112%_))))
                                           (let ((_%tl220065220120%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e220063220115%_)))
                                                 (_%hd220064220118%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e220063220115%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl220065220120%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl220059220104%_))
                                                     (let ((_%__splice220253220254%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl220059220104%_
                                                               '0))))
                                                       (let ((_%tl220068220125%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice220253220254%_ '1)))
                     (_%target220066220123%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice220253220254%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl220068220125%_))
                     (_%__match220298220299%_
                      _%e220054220091%_
                      _%hd220055220094%_
                      _%tl220056220096%_
                      _%e220057220099%_
                      _%hd220058220102%_
                      _%tl220059220104%_
                      _%e220060220107%_
                      _%hd220061220110%_
                      _%tl220062220112%_
                      _%e220063220115%_
                      _%hd220064220118%_
                      _%tl220065220120%_
                      _%__splice220253220254%_
                      _%target220066220123%_
                      _%tl220068220125%_)
                     (_%__kont220255220256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont220255220256%_))
                                                 (_%__kont220255220256%_))))
                                         (_%__kont220255220256%_))
                                     (_%__kont220255220256%_))
                                 (_%__kont220255220256%_))))
                         (_%__kont220255220256%_))))
                 (_%__kont220255220256%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont220255220256%_))
                                                 (_%__kont220255220256%_))))
                                         (_%__kont220255220256%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type220032%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type220032%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp220967
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g219827220010%_
                                                                '()))
                                                    (map (lambda (_%g220197220199%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self219820%_
                                                              _%g220197220199%_)))
                                                         (let ((__tmp220968
                                                                (lambda (_%g220201220204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g220202220206%_)
                          (cons _%g220201220204%_ _%g220202220206%_))))
                   (declare (not safe))
                   (__foldr1 __tmp220968 '() _%g219826220009%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp220967
                                    _%stx219821%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx219821%_
                                    _%rator-type220032%_))))))))
                (_%__kont220307220308%_
                 (lambda (_%g219849219913%_ _%g219850219914%_)
                   (let ((_%rator-type219931%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g219850219914%_))))
                     (if (and _%rator-type219931%_
                              (eq? (##structure-ref
                                    _%rator-type219931%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type219931%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type219931%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type219931%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp220969
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self219820%_
                                               _%g219850219914%_))
                                            (map (lambda (_%g219933219935%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self219820%_
                                                      _%g219933219935%_)))
                                                 (let ((__tmp220970
                                                        (lambda (_%g219937219940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g219938219942%_)
                  (cons _%g219937219940%_ _%g219938219942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp220970
                                                    '()
                                                    _%g219849219913%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp220969 _%stx219821%_))
                         (if (or (not _%rator-type219931%_)
                                 (let ((__tmp220971
                                        (##structure-ref
                                         _%rator-type219931%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp220971 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self219820%_ _%stx219821%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx219821%_
                                _%rator-type219931%_))))))))
            (let* ((_%__match220368220369%_
                    (lambda (_%e219851219875%_
                             _%hd219852219878%_
                             _%tl219853219880%_
                             _%e219854219883%_
                             _%hd219855219886%_
                             _%tl219856219888%_
                             _%__splice220309220310%_
                             _%target219857219891%_
                             _%tl219859219893%_)
                      (letrec ((_%loop219860219896%_
                                (lambda (_%hd219858219899%_
                                         _%rand219864219901%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219858219899%_))
                                      (let ((_%e219861219903%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219858219899%_))))
                                        (let ((_%lp-tl219863219908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219861219903%_)))
                                              (_%lp-hd219862219906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219861219903%_))))
                                          (_%loop219860219896%_
                                           _%lp-tl219863219908%_
                                           (cons _%lp-hd219862219906%_
                                                 _%rand219864219901%_))))
                                      (let ((_%rand219865219911%_
                                             (reverse _%rand219864219901%_)))
                                        (_%__kont220307220308%_
                                         _%rand219865219911%_
                                         _%hd219855219886%_))))))
                        (_%loop219860219896%_ _%target219857219891%_ '()))))
                   (_%__match220348220349%_
                    (lambda (_%e219828219955%_
                             _%hd219829219958%_
                             _%tl219830219960%_
                             _%e219831219963%_
                             _%hd219832219966%_
                             _%tl219833219968%_
                             _%e219834219971%_
                             _%hd219835219974%_
                             _%tl219836219976%_
                             _%e219837219979%_
                             _%hd219838219982%_
                             _%tl219839219984%_
                             _%__splice220305220306%_
                             _%target219840219987%_
                             _%tl219842219989%_)
                      (letrec ((_%loop219843219992%_
                                (lambda (_%hd219841219995%_
                                         _%rand219847219997%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219841219995%_))
                                      (let ((_%e219844219999%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219841219995%_))))
                                        (let ((_%lp-tl219846220004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219844219999%_)))
                                              (_%lp-hd219845220002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219844219999%_))))
                                          (_%loop219843219992%_
                                           _%lp-tl219846220004%_
                                           (cons _%lp-hd219845220002%_
                                                 _%rand219847219997%_))))
                                      (let ((_%rand219848220007%_
                                             (reverse _%rand219847219997%_)))
                                        (_%__kont220303220304%_
                                         _%rand219848220007%_
                                         _%hd219838219982%_))))))
                        (_%loop219843219992%_ _%target219840219987%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220301220302%_))
                  (let ((_%e219828219955%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220301220302%_))))
                    (let ((_%tl219830219960%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e219828219955%_)))
                          (_%hd219829219958%_
                           (let ()
                             (declare (not safe))
                             (##car _%e219828219955%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl219830219960%_))
                          (let ((_%e219831219963%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl219830219960%_))))
                            (let ((_%tl219833219968%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e219831219963%_)))
                                  (_%hd219832219966%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e219831219963%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd219832219966%_))
                                  (let ((_%e219834219971%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd219832219966%_))))
                                    (let ((_%tl219836219976%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e219834219971%_)))
                                          (_%hd219835219974%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e219834219971%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd219835219974%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd219835219974%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl219836219976%_))
                                                  (let ((_%e219837219979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl219836219976%_))))
                                                    (let ((_%tl219839219984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e219837219979%_)))
                                                          (_%hd219838219982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e219837219979%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219839219984%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl219833219968%_))
                      (let ((_%__splice220305220306%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl219833219968%_
                                '0))))
                        (let ((_%tl219842219989%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220305220306%_ '1)))
                              (_%target219840219987%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220305220306%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219842219989%_))
                              (_%__match220348220349%_
                               _%e219828219955%_
                               _%hd219829219958%_
                               _%tl219830219960%_
                               _%e219831219963%_
                               _%hd219832219966%_
                               _%tl219833219968%_
                               _%e219834219971%_
                               _%hd219835219974%_
                               _%tl219836219976%_
                               _%e219837219979%_
                               _%hd219838219982%_
                               _%tl219839219984%_
                               _%__splice220305220306%_
                               _%target219840219987%_
                               _%tl219842219989%_)
                              (let ()
                                (declare (not safe))
                                (_%g219824219870%_)))))
                      (let () (declare (not safe)) (_%g219824219870%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl219833219968%_))
                      (let ((_%__splice220309220310%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl219833219968%_
                                '0))))
                        (let ((_%tl219859219893%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220309220310%_ '1)))
                              (_%target219857219891%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220309220310%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219859219893%_))
                              (_%__match220368220369%_
                               _%e219828219955%_
                               _%hd219829219958%_
                               _%tl219830219960%_
                               _%e219831219963%_
                               _%hd219832219966%_
                               _%tl219833219968%_
                               _%__splice220309220310%_
                               _%target219857219891%_
                               _%tl219859219893%_)
                              (let ()
                                (declare (not safe))
                                (_%g219824219870%_)))))
                      (let () (declare (not safe)) (_%g219824219870%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl219833219968%_))
                                                      (let ((_%__splice220309220310%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl219833219968%_
                        '0))))
                (let ((_%tl219859219893%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220309220310%_ '1)))
                      (_%target219857219891%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220309220310%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl219859219893%_))
                      (_%__match220368220369%_
                       _%e219828219955%_
                       _%hd219829219958%_
                       _%tl219830219960%_
                       _%e219831219963%_
                       _%hd219832219966%_
                       _%tl219833219968%_
                       _%__splice220309220310%_
                       _%target219857219891%_
                       _%tl219859219893%_)
                      (let () (declare (not safe)) (_%g219824219870%_)))))
              (let () (declare (not safe)) (_%g219824219870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl219833219968%_))
                                                  (let ((_%__splice220309220310%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl219833219968%_
                                                            '0))))
                                                    (let ((_%tl219859219893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220309220310%_
                                                              '1)))
                                                          (_%target219857219891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220309220310%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219859219893%_))
                                                          (_%__match220368220369%_
                                                           _%e219828219955%_
                                                           _%hd219829219958%_
                                                           _%tl219830219960%_
                                                           _%e219831219963%_
                                                           _%hd219832219966%_
                                                           _%tl219833219968%_
                                                           _%__splice220309220310%_
                                                           _%target219857219891%_
                                                           _%tl219859219893%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g219824219870%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g219824219870%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl219833219968%_))
                                              (let ((_%__splice220309220310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl219833219968%_
                                                        '0))))
                                                (let ((_%tl219859219893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220309220310%_
                                                          '1)))
                                                      (_%target219857219891%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220309220310%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl219859219893%_))
                                                      (_%__match220368220369%_
                                                       _%e219828219955%_
                                                       _%hd219829219958%_
                                                       _%tl219830219960%_
                                                       _%e219831219963%_
                                                       _%hd219832219966%_
                                                       _%tl219833219968%_
                                                       _%__splice220309220310%_
                                                       _%target219857219891%_
                                                       _%tl219859219893%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g219824219870%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g219824219870%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl219833219968%_))
                                      (let ((_%__splice220309220310%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl219833219968%_
                                                '0))))
                                        (let ((_%tl219859219893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220309220310%_
                                                  '1)))
                                              (_%target219857219891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220309220310%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl219859219893%_))
                                              (_%__match220368220369%_
                                               _%e219828219955%_
                                               _%hd219829219958%_
                                               _%tl219830219960%_
                                               _%e219831219963%_
                                               _%hd219832219966%_
                                               _%tl219833219968%_
                                               _%__splice220309220310%_
                                               _%target219857219891%_
                                               _%tl219859219893%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g219824219870%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g219824219870%_))))))
                          (let () (declare (not safe)) (_%g219824219870%_)))))
                  (let () (declare (not safe)) (_%g219824219870%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self219782%_ _%ctx219783%_ _%stx219784%_ _%args219785%_)
        (let ((_%self219788%_ _%self219782%_))
          (if (let ((__method220950
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self219788%_ 'check-arguments))))
                (if __method220950
                    (let ()
                      (declare (not safe))
                      (__method220950
                       _%self219788%_
                       _%ctx219783%_
                       _%stx219784%_
                       _%args219785%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self219788%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature219798%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self219788%_ '2 '#f '#f)))
                     (_%signature219800%_ _%signature219798%_)
                     (_%$e219810%_
                      (if _%signature219800%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature219800%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e219810%_
                    ((lambda (_%unchecked219813%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked219813%_))
                           (let ((__tmp220972
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked219813%_
                                                          '()))
                                              (map (lambda (_%g219814219816%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx219783%_
                                                        _%g219814219816%_)))
                                                   _%args219785%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp220972
                              _%stx219784%_
                              _%ctx219783%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx219783%_ _%stx219784%_))))
                     _%$e219810%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx219783%_ _%stx219784%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx219783%_ _%stx219784%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass220234 __method-table220235)
        (let ((__check-arguments220236
               (let ((__tmp220973
                      (lambda ()
                        (let ((__method220237
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220235
                                  'check-arguments
                                  '#f))))
                          (if __method220237
                              __method220237
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp220973))))
          (lambda (_%self219782%_ _%ctx219783%_ _%stx219784%_ _%args219785%_)
            (let ((_%self219788%_ _%self219782%_))
              (if ((force __check-arguments220236)
                   _%self219788%_
                   _%ctx219783%_
                   _%stx219784%_
                   _%args219785%_)
                  (let* ((_%signature219798%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self219788%_
                             '2
                             '#f
                             '#f)))
                         (_%signature219800%_ _%signature219798%_)
                         (_%$e219810%_
                          (if _%signature219800%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature219800%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e219810%_
                        ((lambda (_%unchecked219813%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked219813%_))
                               (let ((__tmp220974
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked219813%_
                                                              '()))
                                                  (map (lambda (_%g219814219816%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx219783%_
                                                            _%g219814219816%_)))
                                                       _%args219785%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp220974
                                  _%stx219784%_
                                  _%ctx219783%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx219783%_
                                  _%stx219784%_))))
                         _%$e219810%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx219783%_ _%stx219784%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx219783%_ _%stx219784%_))))))))
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
      (lambda (_%self219535%_ _%ctx219536%_ _%stx219537%_ _%args219538%_)
        (let* ((_%self219541%_ _%self219535%_)
               (_%signature219550219552%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self219541%_ '2 '#f '#f))))
          (if _%signature219550219552%_
              (let* ((_%signature219554%_ _%signature219550219552%_)
                     (_%argument-types219555219557%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature219554%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types219555219557%_
                    (let* ((_%argument-types219559%_
                            _%argument-types219555219557%_)
                           (_%argument-types219564%_
                            (let ((__tmp220975
                                   (lambda (_%t219562%_)
                                     (if _%t219562%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219537%_
                                            _%t219562%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp220975
                               _%argument-types219559%_))))
                      (let _%loop219566%_ ((_%rest-args219568%_ _%args219538%_)
                                           (_%rest-types219569%_
                                            _%argument-types219564%_)
                                           (_%result219570%_ '#t))
                        (let* ((_%rest-args219571219579%_ _%rest-args219568%_)
                               (_%else219573219587%_
                                (lambda () _%result219570%_))
                               (_%K219575219648%_
                                (lambda (_%rest-args219590%_ _%arg219591%_)
                                  (let* ((_%rest-types219592219603%_
                                          _%rest-types219569%_)
                                         (_%E219596219607%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types219592219603%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K219599219636%_
                                           (lambda (_%rest-types219633%_
                                                    _%type219634%_)
                                             (_%loop219566%_
                                              _%rest-args219590%_
                                              _%rest-types219633%_
                                              (if (gxc#check-expression-type!
                                                   _%stx219537%_
                                                   _%arg219591%_
                                                   _%type219634%_)
                                                  _%result219570%_
                                                  '#f))))
                                          (_%K219598219627%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx219537%_
                                                _%argument-types219564%_))))
                                          (_%K219597219617%_
                                           (lambda (_%tail-type219611%_)
                                             (if (let ((__tmp220976
                                                        (lambda (_%g219612219614%_)
                                                          (gxc#check-expression-type!
                                                           _%stx219537%_
                                                           _%g219612219614%_
                                                           _%tail-type219611%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp220976
                                                    _%rest-args219590%_))
                                                 _%result219570%_
                                                 '#f))))
                                      (let ((_%try-match219594219630%_
                                             (lambda ()
                                               (if (null? _%rest-types219592219603%_)
                                                   (_%K219598219627%_)
                                                   (let ((_%tail-type219620%_
                                                          _%rest-types219592219603%_))
                                                     (_%K219597219617%_
                                                      _%tail-type219620%_))))))
                                        (if (pair? _%rest-types219592219603%_)
                                            (let ((_%tl219601219641%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types219592219603%_)))
                                                  (_%hd219600219639%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types219592219603%_))))
                                              (let ((_%type219644%_
                                                     _%hd219600219639%_)
                                                    (_%rest-types219646%_
                                                     _%tl219601219641%_))
                                                (_%K219599219636%_
                                                 _%rest-types219646%_
                                                 _%type219644%_)))
                                            (_%try-match219594219630%_))))))))
                          (if (pair? _%rest-args219571219579%_)
                              (let ((_%hd219576219651%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args219571219579%_)))
                                    (_%tl219577219653%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args219571219579%_))))
                                (let* ((_%arg219656%_ _%hd219576219651%_)
                                       (_%rest-args219658%_
                                        _%tl219577219653%_))
                                  (_%K219575219648%_
                                   _%rest-args219658%_
                                   _%arg219656%_)))
                              (_%else219573219587%_)))))
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
      (lambda (_%self219346%_ _%ctx219347%_ _%stx219348%_ _%args219349%_)
        (let* ((_%self219352%_ _%self219346%_)
               (_%g219362219372%_
                (lambda (_%g219363219369%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219363219369%_))))
               (_%g219361219410%_
                (lambda (_%g219363219375%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219363219375%_))
                      (let ((_%e219365219377%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219363219375%_))))
                        (let ((_%hd219366219380%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219365219377%_)))
                              (_%tl219367219382%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219365219377%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219367219382%_))
                              ((lambda (_%g219364219385%_)
                                 (let* ((_%klass219397%_
                                         (let ((__tmp220977
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self219352%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219348%_
                                            __tmp220977)))
                                        (_%object219399%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx219347%_
                                            _%g219364219385%_)))
                                        (_%instance?219404%_
                                         (let ((_%$e219401%_
                                                (gxc#expression-type?
                                                 _%object219399%_
                                                 _%klass219397%_)))
                                           (if _%$e219401%_
                                               _%$e219401%_
                                               (gxc#expression-type?
                                                _%g219364219385%_
                                                _%klass219397%_)))))
                                   (if _%instance?219404%_
                                       (let ((__tmp220978
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object219399%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g219364219385%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object219399%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220978
                                          _%stx219348%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx219347%_
                                          _%stx219348%_)))))
                               _%hd219366219380%_)
                              (_%g219362219372%_ _%g219363219375%_))))
                      (_%g219362219372%_ _%g219363219375%_)))))
          (_%g219361219410%_ _%args219349%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self219142%_ _%ctx219143%_ _%stx219144%_ _%args219145%_)
        (let* ((_%self219148%_ _%self219142%_)
               (_%g219158219168%_
                (lambda (_%g219159219165%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219159219165%_))))
               (_%g219157219221%_
                (lambda (_%g219159219171%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219159219171%_))
                      (let ((_%e219161219173%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219159219171%_))))
                        (let ((_%hd219162219176%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219161219173%_)))
                              (_%tl219163219178%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219161219173%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219163219178%_))
                              ((lambda (_%g219160219181%_)
                                 (let* ((_%klass219193%_
                                         (let ((__tmp220979
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self219148%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219144%_
                                            __tmp220979)))
                                        (_%object219195%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx219143%_
                                            _%g219160219181%_)))
                                        (_%instance?219200%_
                                         (let ((_%$e219197%_
                                                (gxc#expression-type?
                                                 _%object219195%_
                                                 _%klass219193%_)))
                                           (if _%$e219197%_
                                               _%$e219197%_
                                               (gxc#expression-type?
                                                _%g219160219181%_
                                                _%klass219193%_))))
                                        (_%klass219203%_ _%klass219193%_))
                                   (if _%instance?219200%_
                                       (let ((__tmp220980
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object219195%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g219160219181%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object219195%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220980
                                          _%stx219144%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass219203%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp220981
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass219203%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object219195%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp220981
                                              _%stx219144%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass219203%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp220982
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass219203%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object219195%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220982
                                                  _%stx219144%_))
                                               (let ((__tmp220983
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self219148%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object219195%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220983
                                                  _%stx219144%_)))))))
                               _%hd219162219176%_)
                              (_%g219158219168%_ _%g219159219171%_))))
                      (_%g219158219168%_ _%g219159219171%_)))))
          (_%g219157219221%_ _%args219145%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx218810%_)
        (let* ((_%__stx220378220379%_ _%stx218810%_)
               (_%g218815218856%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220378220379%_)))))
          (let ((_%__kont220380220381%_ (lambda () '#t))
                (_%__kont220382220383%_ (lambda () '#t))
                (_%__kont220384220385%_
                 (lambda (_%g218829218922%_ _%g218830218923%_)
                   (let ((_%rator-type218944218946%_
                          (let ((__tmp220984
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g218830218923%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp220984))))
                     (if _%rator-type218944218946%_
                         (let* ((_%rator-type218948%_
                                 _%rator-type218944218946%_)
                                (_%rator-signature218949218951%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type218948%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type218948%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature218949218951%_
                               (let* ((_%rator-signature218953%_
                                       _%rator-signature218949218951%_)
                                      (_%rator-effect218954218956%_
                                       (if _%rator-signature218953%_
                                           (##direct-structure-ref
                                            _%rator-signature218953%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect218954218956%_
                                     (let ((_%rator-effect218958%_
                                            _%rator-effect218954218956%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect218958%_)
                                               (equal? '(alloc)
                                                       _%rator-effect218958%_))
                                           (let ((__tmp220985
                                                  (let ((__tmp220986
                                                         (lambda (_%g218963218966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g218964218968%_)
                   (cons _%g218963218966%_ _%g218964218968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp220986
                                                     '()
                                                     _%g218829218922%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp220985))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont220388220389%_ (lambda () '#f)))
            (let ((_%__match220467220468%_
                   (lambda (_%e218831218868%_
                            _%hd218832218871%_
                            _%tl218833218873%_
                            _%e218834218876%_
                            _%hd218835218879%_
                            _%tl218836218881%_
                            _%e218837218884%_
                            _%hd218838218887%_
                            _%tl218839218889%_
                            _%e218840218892%_
                            _%hd218841218895%_
                            _%tl218842218897%_
                            _%__splice220386220387%_
                            _%target218843218900%_
                            _%tl218845218902%_)
                     (letrec ((_%loop218846218905%_
                               (lambda (_%hd218844218908%_
                                        _%rand218850218910%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd218844218908%_))
                                     (let ((_%e218847218912%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd218844218908%_))))
                                       (let ((_%lp-tl218849218917%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e218847218912%_)))
                                             (_%lp-hd218848218915%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e218847218912%_))))
                                         (_%loop218846218905%_
                                          _%lp-tl218849218917%_
                                          (cons _%lp-hd218848218915%_
                                                _%rand218850218910%_))))
                                     (let ((_%rand218851218920%_
                                            (reverse _%rand218850218910%_)))
                                       (_%__kont220384220385%_
                                        _%rand218851218920%_
                                        _%hd218841218895%_))))))
                       (_%loop218846218905%_ _%target218843218900%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220378220379%_))
                  (let ((_%e218817218999%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220378220379%_))))
                    (let ((_%tl218819219004%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218817218999%_)))
                          (_%hd218818219002%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218817218999%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd218818219002%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd218818219002%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218819219004%_))
                                  (let ((_%e218820219007%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218819219004%_))))
                                    (let ((_%tl218822219012%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218820219007%_)))
                                          (_%hd218821219010%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218820219007%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl218822219012%_))
                                          (_%__kont220380220381%_)
                                          (_%__kont220388220389%_))))
                                  (_%__kont220388220389%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd218818219002%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218819219004%_))
                                      (let ((_%e218826218984%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl218819219004%_))))
                                        (let ((_%tl218828218989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218826218984%_)))
                                              (_%hd218827218987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218826218984%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218828218989%_))
                                              (_%__kont220382220383%_)
                                              (_%__kont220388220389%_))))
                                      (_%__kont220388220389%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd218818219002%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl218819219004%_))
                                          (let ((_%e218834218876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl218819219004%_))))
                                            (let ((_%tl218836218881%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e218834218876%_)))
                                                  (_%hd218835218879%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e218834218876%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd218835218879%_))
                                                  (let ((_%e218837218884%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd218835218879%_))))
                                                    (let ((_%tl218839218889%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e218837218884%_)))
                                                          (_%hd218838218887%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e218837218884%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd218838218887%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd218838218887%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl218839218889%_))
                          (let ((_%e218840218892%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl218839218889%_))))
                            (let ((_%tl218842218897%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218840218892%_)))
                                  (_%hd218841218895%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218840218892%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218842218897%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl218836218881%_))
                                      (let ((_%__splice220386220387%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl218836218881%_
                                                '0))))
                                        (let ((_%tl218845218902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220386220387%_
                                                  '1)))
                                              (_%target218843218900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220386220387%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218845218902%_))
                                              (_%__match220467220468%_
                                               _%e218817218999%_
                                               _%hd218818219002%_
                                               _%tl218819219004%_
                                               _%e218834218876%_
                                               _%hd218835218879%_
                                               _%tl218836218881%_
                                               _%e218837218884%_
                                               _%hd218838218887%_
                                               _%tl218839218889%_
                                               _%e218840218892%_
                                               _%hd218841218895%_
                                               _%tl218842218897%_
                                               _%__splice220386220387%_
                                               _%target218843218900%_
                                               _%tl218845218902%_)
                                              (_%__kont220388220389%_))))
                                      (_%__kont220388220389%_))
                                  (_%__kont220388220389%_))))
                          (_%__kont220388220389%_))
                      (_%__kont220388220389%_))
                  (_%__kont220388220389%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont220388220389%_))))
                                          (_%__kont220388220389%_))
                                      (_%__kont220388220389%_))))
                          (_%__kont220388220389%_))))
                  (_%__kont220388220389%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx218805%_ _%klass218806%_)
        (let ((_%expr-type218808%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx218805%_))))
          (if _%expr-type218808%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type218808%_ _%klass218806%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx218783%_ _%expr218784%_ _%type218785%_)
        (if (not _%type218785%_)
            '#f
            (let ((_%$e218788%_
                   (eq? (##structure-ref _%type218785%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e218788%_
                  _%$e218788%_
                  (let ((_%expr-type218792%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr218784%_))))
                    (if (not _%expr-type218792%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type218792%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e218796%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type218792%_
                                      'gxc#!abort::t))))
                              (if _%$e218796%_
                                  _%$e218796%_
                                  (let ((_%$e218799%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type218792%_
                                            _%type218785%_))))
                                    (if _%$e218799%_
                                        _%$e218799%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type218785%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type218785%_
                                                   _%expr-type218792%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx218783%_
                                                   _%expr218784%_
                                                   _%expr-type218792%_
                                                   _%type218785%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self218597%_ _%ctx218598%_ _%stx218599%_ _%args218600%_)
        (let* ((_%self218603%_ _%self218597%_)
               (_%klass218613%_
                (let ((__tmp220987
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self218603%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx218599%_ __tmp220987)))
               (_%fields218615%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass218613%_
                           '5
                           '#f
                           '#f))))
               (_%args218621%_
                (map (lambda (_%g218616218618%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx218598%_ _%g218616218618%_)))
                     _%args218600%_))
               (_%inline-make-object218623%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self218603%_
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
                           _%self218603%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields218615%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass218626%_ _%klass218613%_)
               (_%$e218640%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass218626%_ '6 '#f '#f))))
          (if _%$e218640%_
              ((lambda (_%ctor218643%_)
                 (let ((_%$obj218645%_
                        (let ((__tmp220988
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp220988)))
                       (_%ctor-impl218646%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass218626%_
                           _%ctor218643%_))))
                   (let ((__tmp220989
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj218645%_ '())
                                                  (cons _%inline-make-object218623%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl218646%_
                                                            (let ((__tmp220990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl218646%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj218645%_ '()))
                                             _%args218621%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp220990
                       _%stx218599%_
                       _%ctx218598%_))
                    (let ((_%$ctor218648%_
                           (let ((__tmp220991
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp220991))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor218648%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218603%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj218645%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor218643%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor218648%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor218648%_ '()))
                              (cons (cons '%#ref (cons _%$obj218645%_ '()))
                                    _%args218621%_)))
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
                             _%self218603%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor218643%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj218645%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp220989 _%stx218599%_))))
               _%$e218640%_)
              (let ((_%$e218650%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass218626%_
                        '10
                        '#f
                        '#f))))
                (if _%$e218650%_
                    ((lambda (_%metaclass218653%_)
                       (let* ((_%$obj218655%_
                               (let ((__tmp220992
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp220992)))
                              (_%metakons218657%_
                               (let ((__tmp220993
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx218599%_
                                         _%metaclass218653%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp220993
                                  'instance-init!)))
                              (__tmp220994
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj218655%_
                                                             '())
                                                       (cons _%inline-make-object218623%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons218657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp220995
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons218657%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self218603%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj218655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args218621%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp220995
                            _%stx218599%_
                            _%ctx218598%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self218603%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj218655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args218621%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj218655%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp220994 _%stx218599%_)))
                     _%$e218650%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass218626%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp220996
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args218621%_))))
                              (declare (not safe))
                              (##fx= __tmp220996 _%fields218615%_))
                            (let ((__tmp220997
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self218603%_
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
                                              _%self218603%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args218621%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp220997
                               _%stx218599%_))
                            (let ((__tmp220999
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self218603%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp220998
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass218626%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx218599%_
                               __tmp220999
                               __tmp220998)))
                        (let ((_%$obj218662%_
                               (let ((__tmp221000
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp221000))))
                          (let _%lp218664%_ ((_%rest218666%_ _%args218621%_)
                                             (_%initializers218667%_ '()))
                            (let* ((_%__stx220470220471%_ _%rest218666%_)
                                   (_%g218671218692%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx220470220471%_)))))
                              (let ((_%__kont220472220473%_
                                     (lambda (_%g218673218746%_
                                              _%g218674218747%_
                                              _%g218675218748%_)
                                       (let* ((_%slot218775%_
                                               (let ((__tmp221001
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g218675218748%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp221001)))
                                              (_%off218777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass218626%_
                                                  _%slot218775%_))))
                                         (if _%off218777%_
                                             (_%lp218664%_
                                              _%g218673218746%_
                                              (cons (cons _%off218777%_
                                                          _%g218674218747%_)
                                                    _%initializers218667%_))
                                             (let ((__tmp221002
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218603%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx218599%_
                                                __tmp221002
                                                _%slot218775%_))))))
                                    (_%__kont220474220475%_
                                     (lambda ()
                                       (let ((__tmp221003
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj218662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object218623%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp221006
                                     (cons (cons '%#ref
                                                 (cons _%$obj218662%_ '()))
                                           '()))
                                    (__tmp221004
                                     (let ((__tmp221005
                                            (lambda (_%i218706%_ _%r218707%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self218603%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i218706%_) '()))
                              (cons (cons '%#ref (cons _%$obj218662%_ '()))
                                    (cons (cdr _%i218706%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r218707%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp221005
                                        '()
                                        _%initializers218667%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp221006 __tmp221004)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221003
                                          _%stx218599%_))))
                                    (_%__kont220476220477%_
                                     (lambda ()
                                       (let ((__tmp221007
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj218662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object218623%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args218621%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj218662%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221007
                                          _%stx218599%_)))))
                                (let* ((_%g218669218709%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx220470220471%_))
                                              (_%__kont220474220475%_)
                                              (_%__kont220476220477%_))))
                                       (_%__match220507220508%_
                                        (lambda (_%e218676218714%_
                                                 _%hd218677218717%_
                                                 _%tl218678218719%_
                                                 _%e218679218722%_
                                                 _%hd218680218725%_
                                                 _%tl218681218727%_
                                                 _%e218682218730%_
                                                 _%hd218683218733%_
                                                 _%tl218684218735%_
                                                 _%e218685218738%_
                                                 _%hd218686218741%_
                                                 _%tl218687218743%_)
                                          (let ((_%g218673218746%_
                                                 _%tl218687218743%_)
                                                (_%g218674218747%_
                                                 _%hd218686218741%_)
                                                (_%g218675218748%_
                                                 _%hd218683218733%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g218675218748%_))
                                                (_%__kont220472220473%_
                                                 _%g218673218746%_
                                                 _%g218674218747%_
                                                 _%g218675218748%_)
                                                (_%__kont220476220477%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx220470220471%_))
                                      (let ((_%e218676218714%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx220470220471%_))))
                                        (let ((_%tl218678218719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218676218714%_)))
                                              (_%hd218677218717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218676218714%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd218677218717%_))
                                              (let ((_%e218679218722%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd218677218717%_))))
                                                (let ((_%tl218681218727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e218679218722%_)))
                                                      (_%hd218680218725%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e218679218722%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd218680218725%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd218680218725%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl218681218727%_))
                      (let ((_%e218682218730%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl218681218727%_))))
                        (let ((_%tl218684218735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218682218730%_)))
                              (_%hd218683218733%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218682218730%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218684218735%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218678218719%_))
                                  (let ((_%e218685218738%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218678218719%_))))
                                    (let ((_%tl218687218743%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218685218738%_)))
                                          (_%hd218686218741%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218685218738%_))))
                                      (_%__match220507220508%_
                                       _%e218676218714%_
                                       _%hd218677218717%_
                                       _%tl218678218719%_
                                       _%e218679218722%_
                                       _%hd218680218725%_
                                       _%tl218681218727%_
                                       _%e218682218730%_
                                       _%hd218683218733%_
                                       _%tl218684218735%_
                                       _%e218685218738%_
                                       _%hd218686218741%_
                                       _%tl218687218743%_)))
                                  (_%__kont220476220477%_))
                              (_%__kont220476220477%_))))
                      (_%__kont220476220477%_))
                  (_%__kont220476220477%_))
              (_%__kont220476220477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont220476220477%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g218669218709%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self218380%_ _%ctx218381%_ _%stx218382%_ _%args218383%_)
        (let* ((_%self218386%_ _%self218380%_)
               (_%arguments-ok?218396%_
                (let ((__method220951
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self218386%_ 'check-arguments))))
                  (if __method220951
                      (let ()
                        (declare (not safe))
                        (__method220951
                         _%self218386%_
                         _%ctx218381%_
                         _%stx218382%_
                         _%args218383%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self218386%_
                                 'check-arguments))
                        '#!void))))
               (_%g218398218408%_
                (lambda (_%g218399218405%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218399218405%_))))
               (_%g218397218472%_
                (lambda (_%g218399218411%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218399218411%_))
                      (let ((_%e218401218413%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g218399218411%_))))
                        (let ((_%hd218402218416%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218401218413%_)))
                              (_%tl218403218418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218401218413%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218403218418%_))
                              ((lambda (_%g218400218421%_)
                                 (let* ((_%klass218434%_
                                         (let ((__tmp221008
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218386%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx218382%_
                                            __tmp221008)))
                                        (_%field218436%_
                                         (let ((__tmp221009
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218386%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass218434%_
                                            __tmp221009)))
                                        (_%object218438%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx218381%_
                                            _%g218400218421%_)))
                                        (_%klass218441%_ _%klass218434%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass218441%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp221010
                                              (cons (if (or _%arguments-ok?218396%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218386%_
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
                                 _%self218386%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field218436%_ '()))
                        (cons _%object218438%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221010
                                          _%stx218382%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass218441%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp221011
                                                  (cons (if (or _%arguments-ok?218396%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218386%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218386%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field218436%_ '()))
                            (cons _%object218438%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221011
                                              _%stx218382%_))
                                           (let ((_%$e218460%_
                                                  (let ((__tmp221012
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self218386%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass218441%_
                                                     __tmp221012))))
                                             (if _%$e218460%_
                                                 ((lambda (_%klass218463%_)
                                                    (let ((__tmp221013
                                                           (cons (if (or _%arguments-ok?218396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218386%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self218386%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field218436%_ '()))
                                     (cons _%object218438%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp221013 _%stx218382%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e218460%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self218386%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp221014
                                                            (let ((_%$obj218469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp221015
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp221015))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj218469%_ '())
                                              (cons _%object218438%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass218441%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj218469%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218386%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218436%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj218469%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?218396%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj218469%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self218386%_
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
                                                             _%self218386%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj218469%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self218386%_
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
               (gxc#xform-wrap-source __tmp221014 _%stx218382%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp221016
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object218438%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218386%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp221016 _%stx218382%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd218402218416%_)
                              (_%g218398218408%_ _%g218399218411%_))))
                      (_%g218398218408%_ _%g218399218411%_)))))
          (_%g218397218472%_ _%args218383%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass220238 __method-table220239)
        (let ((__check-arguments220240
               (let ((__tmp221017
                      (lambda ()
                        (let ((__method220241
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220239
                                  'check-arguments
                                  '#f))))
                          (if __method220241
                              __method220241
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp221017)))
              (__slot220242
               (let ((__slot220243
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass220238 'slot))))
                 (if __slot220243
                     __slot220243
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self218380%_ _%ctx218381%_ _%stx218382%_ _%args218383%_)
            (let* ((_%self218386%_ _%self218380%_)
                   (_%arguments-ok?218396%_
                    ((force __check-arguments220240)
                     _%self218386%_
                     _%ctx218381%_
                     _%stx218382%_
                     _%args218383%_))
                   (_%g218398218408%_
                    (lambda (_%g218399218405%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g218399218405%_))))
                   (_%g218397218472%_
                    (lambda (_%g218399218411%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g218399218411%_))
                          (let ((_%e218401218413%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g218399218411%_))))
                            (let ((_%hd218402218416%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218401218413%_)))
                                  (_%tl218403218418%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218401218413%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218403218418%_))
                                  ((lambda (_%g218400218421%_)
                                     (let* ((_%klass218434%_
                                             (let ((__tmp221018
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218386%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx218382%_
                                                __tmp221018)))
                                            (_%field218436%_
                                             (let ((__tmp221019
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218386%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass218434%_
                                                __tmp221019)))
                                            (_%object218438%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx218381%_
                                                _%g218400218421%_)))
                                            (_%klass218441%_ _%klass218434%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass218441%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp221020
                                                  (cons (if (or _%arguments-ok?218396%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218386%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218386%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field218436%_ '()))
                            (cons _%object218438%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221020
                                              _%stx218382%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass218441%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp221021
                                                      (cons (if (or _%arguments-ok?218396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self218386%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218386%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field218436%_ '()))
                                (cons _%object218438%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp221021
                                                  _%stx218382%_))
                                               (let ((_%$e218460%_
                                                      (let ((__tmp221022
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self218386%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass218441%_ __tmp221022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e218460%_
                                                     ((lambda (_%klass218463%_)
                                                        (let ((__tmp221023
                                                               (cons (if (or _%arguments-ok?218396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218386%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self218386%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field218436%_ '()))
                                         (cons _%object218438%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp221023 _%stx218382%_)))
              _%$e218460%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self218386%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp221024
                                                                (let ((_%$obj218469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp221025
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp221025))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj218469%_ '())
                                                  (cons _%object218438%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass218441%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj218469%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218386%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field218436%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj218469%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?218396%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj218469%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self218386%_
                               __slot220242
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
                        (##unchecked-structure-ref _%self218386%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj218469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218386%_
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
                   (gxc#xform-wrap-source __tmp221024 _%stx218382%_))
                 (let ((__tmp221026
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object218438%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218386%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp221026 _%stx218382%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd218402218416%_)
                                  (_%g218398218408%_ _%g218399218411%_))))
                          (_%g218398218408%_ _%g218399218411%_)))))
              (_%g218397218472%_ _%args218383%_))))))
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
      (lambda (_%self218144%_ _%ctx218145%_ _%stx218146%_ _%args218147%_)
        (let* ((_%self218150%_ _%self218144%_)
               (_%arguments-ok?218160%_
                (let ((__method220952
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self218150%_ 'check-arguments))))
                  (if __method220952
                      (let ()
                        (declare (not safe))
                        (__method220952
                         _%self218150%_
                         _%ctx218145%_
                         _%stx218146%_
                         _%args218147%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self218150%_
                                 'check-arguments))
                        '#!void))))
               (_%g218162218176%_
                (lambda (_%g218163218173%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218163218173%_))))
               (_%g218161218255%_
                (lambda (_%g218163218179%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218163218179%_))
                      (let ((_%e218166218181%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g218163218179%_))))
                        (let ((_%hd218167218184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218166218181%_)))
                              (_%tl218168218186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218166218181%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218168218186%_))
                              (let ((_%e218169218189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl218168218186%_))))
                                (let ((_%hd218170218192%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218169218189%_)))
                                      (_%tl218171218194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218169218189%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl218171218194%_))
                                      ((lambda (_%g218164218197%_
                                                _%g218165218198%_)
                                         (let* ((_%klass218214%_
                                                 (let ((__tmp221027
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218150%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx218146%_
                                                    __tmp221027)))
                                                (_%field218216%_
                                                 (let ((__tmp221028
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218150%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass218214%_
                                                    __tmp221028)))
                                                (_%object218218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx218145%_
                                                    _%g218165218198%_)))
                                                (_%value218220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx218145%_
                                                    _%g218164218197%_)))
                                                (_%klass218223%_
                                                 _%klass218214%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass218223%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp221029
                                                      (cons (if (or _%arguments-ok?218160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self218150%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218150%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field218216%_ '()))
                                (cons _%object218218%_
                                      (cons _%value218220%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp221029
                                                  _%stx218146%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass218223%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp221030
                                                          (cons (if (or _%arguments-ok?218160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self218150%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218150%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218216%_ '()))
                                    (cons _%object218218%_
                                          (cons _%value218220%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp221030
                                                      _%stx218146%_))
                                                   (let ((_%$e218243%_
                                                          (let ((__tmp221031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218150%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass218223%_
                     __tmp221031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e218243%_
                                                         ((lambda (_%klass218246%_)
                                                            (let ((__tmp221032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?218160%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218150%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self218150%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field218216%_ '()))
                                             (cons _%object218218%_
                                                   (cons _%value218220%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221032 _%stx218146%_)))
                  _%$e218243%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self218150%_ '4 '#f '#f))
                     (let ((__tmp221033
                            (let ((_%$obj218252%_
                                   (let ((__tmp221034
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp221034))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj218252%_ '())
                                                      (cons _%object218218%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass218223%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj218252%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self218150%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field218216%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj218252%_
                                                              '()))
                                                  (cons _%value218220%_
                                                        '())))))
                          (cons (if _%arguments-ok?218160%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self218150%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value218220%_ '())))))
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
                             _%self218150%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj218252%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218150%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value218220%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp221033 _%stx218146%_))
                     (let ((__tmp221035
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object218218%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self218150%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value218220%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp221035
                        _%stx218146%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd218170218192%_
                                       _%hd218167218184%_)
                                      (_%g218162218176%_ _%g218163218179%_))))
                              (_%g218162218176%_ _%g218163218179%_))))
                      (_%g218162218176%_ _%g218163218179%_)))))
          (_%g218161218255%_ _%args218147%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass220244 __method-table220245)
        (let ((__check-arguments220246
               (let ((__tmp221036
                      (lambda ()
                        (let ((__method220247
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220245
                                  'check-arguments
                                  '#f))))
                          (if __method220247
                              __method220247
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp221036))))
          (lambda (_%self218144%_ _%ctx218145%_ _%stx218146%_ _%args218147%_)
            (let* ((_%self218150%_ _%self218144%_)
                   (_%arguments-ok?218160%_
                    ((force __check-arguments220246)
                     _%self218150%_
                     _%ctx218145%_
                     _%stx218146%_
                     _%args218147%_))
                   (_%g218162218176%_
                    (lambda (_%g218163218173%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g218163218173%_))))
                   (_%g218161218255%_
                    (lambda (_%g218163218179%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g218163218179%_))
                          (let ((_%e218166218181%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g218163218179%_))))
                            (let ((_%hd218167218184%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218166218181%_)))
                                  (_%tl218168218186%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218166218181%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218168218186%_))
                                  (let ((_%e218169218189%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218168218186%_))))
                                    (let ((_%hd218170218192%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218169218189%_)))
                                          (_%tl218171218194%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218169218189%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl218171218194%_))
                                          ((lambda (_%g218164218197%_
                                                    _%g218165218198%_)
                                             (let* ((_%klass218214%_
                                                     (let ((__tmp221037
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218150%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx218146%_
                                                        __tmp221037)))
                                                    (_%field218216%_
                                                     (let ((__tmp221038
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218150%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass218214%_
                                                        __tmp221038)))
                                                    (_%object218218%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx218145%_
                                                        _%g218165218198%_)))
                                                    (_%value218220%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx218145%_
                                                        _%g218164218197%_)))
                                                    (_%klass218223%_
                                                     _%klass218214%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass218223%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp221039
                                                          (cons (if (or _%arguments-ok?218160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self218150%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218150%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218216%_ '()))
                                    (cons _%object218218%_
                                          (cons _%value218220%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp221039
                                                      _%stx218146%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass218223%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp221040
                                                              (cons (if (or _%arguments-ok?218160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self218150%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218150%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field218216%_ '()))
                                        (cons _%object218218%_
                                              (cons _%value218220%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp221040 _%stx218146%_))
               (let ((_%$e218243%_
                      (let ((__tmp221041
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218150%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass218223%_
                         __tmp221041))))
                 (if _%$e218243%_
                     ((lambda (_%klass218246%_)
                        (let ((__tmp221042
                               (cons (if (or _%arguments-ok?218160%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self218150%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self218150%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field218216%_
                                                             '()))
                                                 (cons _%object218218%_
                                                       (cons _%value218220%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp221042 _%stx218146%_)))
                      _%$e218243%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218150%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp221043
                                (let ((_%$obj218252%_
                                       (let ((__tmp221044
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp221044))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj218252%_
                                                                '())
                                                          (cons _%object218218%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass218223%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj218252%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self218150%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field218216%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value218220%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?218160%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj218252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self218150%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value218220%_ '())))))
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
                                 _%self218150%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj218252%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218150%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value218220%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp221043 _%stx218146%_))
                         (let ((__tmp221045
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object218218%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self218150%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value218220%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp221045
                            _%stx218146%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd218170218192%_
                                           _%hd218167218184%_)
                                          (_%g218162218176%_
                                           _%g218163218179%_))))
                                  (_%g218162218176%_ _%g218163218179%_))))
                          (_%g218162218176%_ _%g218163218179%_)))))
              (_%g218161218255%_ _%args218147%_))))))
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
      (lambda (_%self217960%_ _%ctx217961%_ _%stx217962%_ _%args217963%_)
        (let* ((_%self217966%_ _%self217960%_)
               (_%self217975217985%_ _%self217966%_)
               (_%E217977217988%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self217975217985%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K217978217998%_
                (lambda (_%inline217991%_ _%dispatch217992%_ _%arity217993%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self217966%_
                         _%args217963%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx217962%_
                         _%arity217993%_)))
                  (if _%inline217991%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp221046 (_%inline217991%_ _%stx217962%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp221046
                           _%stx217962%_
                           _%ctx217961%_)))
                      (if (and _%dispatch217992%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch217992%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch217992%_))
                            (let ((__tmp221047
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch217992%_
                                                           '()))
                                               _%args217963%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp221047
                               _%stx217962%_
                               _%ctx217961%_)))
                          (gxc#!procedure::optimize-call
                           _%self217966%_
                           _%ctx217961%_
                           _%stx217962%_
                           _%args217963%_)))))
               (_%e217979218001%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217975217985%_ '1 '#f '#f)))
               (_%e217980218004%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217975217985%_ '2 '#f '#f)))
               (_%e217981218007%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217975217985%_ '3 '#f '#f)))
               (_%arity218010%_ _%e217981218007%_)
               (_%e217982218012%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217975217985%_ '4 '#f '#f)))
               (_%dispatch218015%_ _%e217982218012%_)
               (_%e217983218017%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217975217985%_ '5 '#f '#f)))
               (_%inline218020%_ _%e217983218017%_))
          (_%K217978217998%_
           _%inline218020%_
           _%dispatch218015%_
           _%arity218010%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self217812%_ _%ctx217813%_ _%stx217814%_ _%args217815%_)
        (let* ((_%self217818%_ _%self217812%_)
               (_%$e217832%_
                (let ((__tmp221049
                       (lambda (_%g217827217829%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g217827217829%_
                            _%args217815%_))))
                      (__tmp221048
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self217818%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp221049 __tmp221048))))
          (if _%$e217832%_
              ((lambda (_%clause217835%_)
                 (let ((__method220953
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause217835%_ 'optimize-call))))
                   (if __method220953
                       (let ()
                         (declare (not safe))
                         (__method220953
                          _%clause217835%_
                          _%ctx217813%_
                          _%stx217814%_
                          _%args217815%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause217835%_
                                  'optimize-call))
                         '#!void))))
               _%$e217832%_)
              (let ((__tmp221050
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self217818%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx217814%_
                 __tmp221050))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self217553%_ _%ctx217554%_ _%stx217555%_ _%args217556%_)
        (let* ((_%self217559%_ _%self217553%_)
               (_%self217568217577%_ _%self217559%_)
               (_%E217570217580%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self217568217577%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K217571217671%_
                (lambda (_%dispatch217583%_ _%table217584%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch217583%_))
                      (let* ((_%g217585217595%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch217583%_)))
                             (_%else217587217603%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch217583%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx217554%_
                                   _%stx217555%_))))
                             (_%K217589217652%_
                              (lambda (_%main217606%_ _%keys217607%_)
                                (let ((_g221051_
                                       (gxc#!kw-lambda-split-args
                                        _%stx217555%_
                                        _%args217556%_)))
                                  (begin
                                    (let ((_g221052_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g221051_)
                                                 (##values-length _g221051_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g221052_ 2)))
                                          (error "Context expects 2 values"
                                                 _g221052_)))
                                    (let ((_%pargs217609%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g221051_ 0)))
                                          (_%kwargs217610%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g221051_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main217606%_))
                                        (if _%table217584%_
                                            (let ((_%xargs217618%_
                                                   (map (lambda (_%key217612%_)
                                                          (let ((_%$e217614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key217612%_ _%kwargs217610%_))))
                    (if _%$e217614%_ _%$e217614%_ '(%#ref absent-value))))
                _%keys217607%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw217620%_)
                                                 (if (memq (car _%kw217620%_)
                                                           _%keys217607%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx217555%_
                                                        _%keys217607%_
                                                        _%kw217620%_))))
                                               _%kwargs217610%_)
                                              (let ((__tmp221053
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main217606%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs217609%_
                                  _%xargs217618%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp221053
                                                 _%stx217555%_
                                                 _%ctx217554%_)))
                                            (let* ((_%kwt217622%_
                                                    (let ((__tmp221054
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp221054)))
                                                   (_%kwvars217626%_
                                                    (map (lambda (_%_217624%_)
                                                           (let ((__tmp221055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp221055)))
                 _%kwargs217610%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind217631%_
                                                    (map (lambda (_%kw217628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217629%_)
                   (cons (cons _%kwvar217629%_ '())
                         (cons (cdr _%kw217628%_) '())))
                 _%kwargs217610%_
                 _%kwvars217626%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset217636%_
                                                    (map (lambda (_%kw217633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217634%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt217622%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw217633%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar217634%_
                                                             '()))
                                                 '()))))))
                 _%kwargs217610%_
                 _%kwvars217626%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs217641%_
                                                    (map (lambda (_%kw217638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217639%_)
                   (cons (car _%kw217638%_)
                         (cons '%#ref (cons _%kwvar217639%_ '()))))
                 _%kwargs217610%_
                 _%kwvars217626%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs217649%_
                                                    (map (lambda (_%key217643%_)
                                                           (let ((_%$e217645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key217643%_ _%xkwargs217641%_))))
                     (if _%$e217645%_ _%$e217645%_ '(%#ref absent-value))))
                 _%keys217607%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp221056
                                                    (cons '%#let-values
                                                          (cons _%kwbind217631%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt217622%_ '())
                                                      (cons (let ((__tmp221057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs217610%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221057 _%stx217555%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp221058
                                                             (cons (let ((__tmp221059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main217606%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt217622%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs217609%_
                                                       _%xargs217649%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp221059 _%stx217555%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp221058 _%kwset217636%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp221056
                                               _%stx217555%_
                                               _%ctx217554%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g217585217595%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e217590217655%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217585217595%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e217591217658%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217585217595%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e217592217661%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217585217595%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys217664%_ _%e217592217661%_)
                                   (_%e217593217666%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217585217595%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main217669%_ _%e217593217666%_))
                              (_%K217589217652%_
                               _%main217669%_
                               _%keys217664%_))
                            (_%else217587217603%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx217554%_ _%stx217555%_)))))
               (_%e217572217674%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217568217577%_ '1 '#f '#f)))
               (_%e217573217677%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217568217577%_ '2 '#f '#f)))
               (_%e217574217680%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217568217577%_ '3 '#f '#f)))
               (_%table217683%_ _%e217574217680%_)
               (_%e217575217685%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217568217577%_ '4 '#f '#f)))
               (_%dispatch217688%_ _%e217575217685%_))
          (_%K217571217671%_ _%dispatch217688%_ _%table217683%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx217166%_ _%args217167%_)
        (let _%lp217169%_ ((_%rest217171%_ _%args217167%_)
                           (_%pargs217172%_ '())
                           (_%kwargs217173%_ '()))
          (let* ((_%__stx220512220513%_ _%rest217171%_)
                 (_%g217179217231%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx220512220513%_)))))
            (let ((_%__kont220514220515%_
                   (lambda (_%g217181217410%_ _%g217182217411%_)
                     (_%lp217169%_
                      _%g217181217410%_
                      (cons _%g217182217411%_ _%pargs217172%_)
                      _%kwargs217173%_)))
                  (_%__kont220516220517%_
                   (lambda (_%g217196217356%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1
                                cons
                                _%g217196217356%_
                                _%pargs217172%_))
                             (reverse _%kwargs217173%_))))
                  (_%__kont220518220519%_
                   (lambda (_%g217207217303%_
                            _%g217208217304%_
                            _%g217209217305%_)
                     (let ((_%kw217322%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g217209217305%_))))
                       (if (assq _%kw217322%_ _%kwargs217173%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx217166%_
                              _%kw217322%_))
                           (_%lp217169%_
                            _%g217207217303%_
                            _%pargs217172%_
                            (cons (cons _%kw217322%_ _%g217208217304%_)
                                  _%kwargs217173%_))))))
                  (_%__kont220520220521%_
                   (lambda (_%g217222217251%_ _%g217223217252%_)
                     (_%lp217169%_
                      _%g217222217251%_
                      (cons _%g217223217252%_ _%pargs217172%_)
                      _%kwargs217173%_)))
                  (_%__kont220522220523%_
                   (lambda ()
                     (values (reverse _%pargs217172%_)
                             (reverse _%kwargs217173%_)))))
              (let ((_%__match220619220620%_
                     (lambda (_%e217210217271%_
                              _%hd217211217274%_
                              _%tl217212217276%_
                              _%e217213217279%_
                              _%hd217214217282%_
                              _%tl217215217284%_
                              _%e217216217287%_
                              _%hd217217217290%_
                              _%tl217218217292%_
                              _%e217219217295%_
                              _%hd217220217298%_
                              _%tl217221217300%_)
                       (let ((_%g217207217303%_ _%tl217221217300%_)
                             (_%g217208217304%_ _%hd217220217298%_)
                             (_%g217209217305%_ _%hd217217217290%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g217209217305%_))
                             (_%__kont220518220519%_
                              _%g217207217303%_
                              _%g217208217304%_
                              _%g217209217305%_)
                             (_%__kont220520220521%_
                              _%tl217212217276%_
                              _%hd217211217274%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx220512220513%_))
                    (let ((_%e217183217375%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx220512220513%_))))
                      (let ((_%tl217185217380%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217183217375%_)))
                            (_%hd217184217378%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217183217375%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd217184217378%_))
                            (let ((_%e217186217383%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd217184217378%_))))
                              (let ((_%tl217188217388%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e217186217383%_)))
                                    (_%hd217187217386%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e217186217383%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd217187217386%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd217187217386%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217188217388%_))
                                            (let ((_%e217189217391%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl217188217388%_))))
                                              (let ((_%tl217191217396%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217189217391%_)))
                                                    (_%hd217190217394%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217189217391%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd217190217394%_))
                                                    (let ((_%e217192217399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd217190217394%_))))
                                                      (if (equal? _%e217192217399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl217191217396%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl217185217380%_))
                          (let ((_%e217193217402%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl217185217380%_))))
                            (let ((_%tl217195217407%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217193217402%_)))
                                  (_%hd217194217405%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217193217402%_))))
                              (_%__kont220514220515%_
                               _%tl217195217407%_
                               _%hd217194217405%_)))
                          (_%__kont220520220521%_
                           _%tl217185217380%_
                           _%hd217184217378%_))
                      (_%__kont220520220521%_
                       _%tl217185217380%_
                       _%hd217184217378%_))
                  (if (equal? _%e217192217399%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217191217396%_))
                          (_%__kont220516220517%_ _%tl217185217380%_)
                          (_%__kont220520220521%_
                           _%tl217185217380%_
                           _%hd217184217378%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217191217396%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217185217380%_))
                              (let ((_%e217219217295%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl217185217380%_))))
                                (let ((_%tl217221217300%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217219217295%_)))
                                      (_%hd217220217298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217219217295%_))))
                                  (_%__match220619220620%_
                                   _%e217183217375%_
                                   _%hd217184217378%_
                                   _%tl217185217380%_
                                   _%e217186217383%_
                                   _%hd217187217386%_
                                   _%tl217188217388%_
                                   _%e217189217391%_
                                   _%hd217190217394%_
                                   _%tl217191217396%_
                                   _%e217219217295%_
                                   _%hd217220217298%_
                                   _%tl217221217300%_)))
                              (_%__kont220520220521%_
                               _%tl217185217380%_
                               _%hd217184217378%_))
                          (_%__kont220520220521%_
                           _%tl217185217380%_
                           _%hd217184217378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl217191217396%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl217185217380%_))
                                                            (let ((_%e217219217295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl217185217380%_))))
                      (let ((_%tl217221217300%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217219217295%_)))
                            (_%hd217220217298%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217219217295%_))))
                        (_%__match220619220620%_
                         _%e217183217375%_
                         _%hd217184217378%_
                         _%tl217185217380%_
                         _%e217186217383%_
                         _%hd217187217386%_
                         _%tl217188217388%_
                         _%e217189217391%_
                         _%hd217190217394%_
                         _%tl217191217396%_
                         _%e217219217295%_
                         _%hd217220217298%_
                         _%tl217221217300%_)))
                    (_%__kont220520220521%_
                     _%tl217185217380%_
                     _%hd217184217378%_))
                (_%__kont220520220521%_
                 _%tl217185217380%_
                 _%hd217184217378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont220520220521%_
                                             _%tl217185217380%_
                                             _%hd217184217378%_))
                                        (_%__kont220520220521%_
                                         _%tl217185217380%_
                                         _%hd217184217378%_))
                                    (_%__kont220520220521%_
                                     _%tl217185217380%_
                                     _%hd217184217378%_))))
                            (_%__kont220520220521%_
                             _%tl217185217380%_
                             _%hd217184217378%_))))
                    (_%__kont220522220523%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self217150%_ _%ctx217151%_ _%stx217152%_ _%args217153%_)
        (let ((_%self217156%_ _%self217150%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx217151%_ _%stx217152%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self216840%_ _%stx216841%_)
        (let* ((_%__stx220628220629%_ _%stx216841%_)
               (_%g216844216884%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220628220629%_)))))
          (let ((_%__kont220630220631%_
                 (lambda (_%g216846216988%_ _%g216847216989%_)
                   (let ((_%$e217016%_
                          (member 'return:
                                  (let ((__tmp221060
                                         (lambda (_%g217008217011%_
                                                  _%g217009217013%_)
                                           (cons _%g217008217011%_
                                                 _%g217009217013%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp221060
                                     '()
                                     _%g216847216989%_))
                                  gx#stx-eq?)))
                     (if _%$e217016%_
                         ((lambda (_%tail217019%_)
                            (let ((_%type217021%_
                                   (let ((__tmp221061
                                          (let ((__tmp221062
                                                 (cadr _%tail217019%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp221062))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx216841%_
                                      __tmp221061))))
                              (gxc#check-return-type!
                               _%stx216841%_
                               _%g216846216988%_
                               _%type217021%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self216840%_
                                 _%g216846216988%_))))
                          _%$e217016%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self216840%_
                            _%g216846216988%_))))))
                (_%__kont220634220635%_
                 (lambda (_%g216869216913%_ _%g216870216914%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self216840%_ _%g216869216913%_)))))
            (let ((_%__match220665220666%_
                   (lambda (_%e216848216934%_
                            _%hd216849216937%_
                            _%tl216850216939%_
                            _%e216851216942%_
                            _%hd216852216945%_
                            _%tl216853216947%_
                            _%e216854216950%_
                            _%hd216855216953%_
                            _%tl216856216955%_
                            _%__splice220632220633%_
                            _%target216857216958%_
                            _%tl216859216960%_)
                     (letrec ((_%loop216860216963%_
                               (lambda (_%hd216858216966%_
                                        _%signature216864216968%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd216858216966%_))
                                     (let ((_%e216861216970%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd216858216966%_))))
                                       (let ((_%lp-tl216863216975%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e216861216970%_)))
                                             (_%lp-hd216862216973%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e216861216970%_))))
                                         (_%loop216860216963%_
                                          _%lp-tl216863216975%_
                                          (cons _%lp-hd216862216973%_
                                                _%signature216864216968%_))))
                                     (let ((_%signature216865216978%_
                                            (reverse _%signature216864216968%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl216853216947%_))
                                           (let ((_%e216866216980%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl216853216947%_))))
                                             (let ((_%tl216868216985%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e216866216980%_)))
                                                   (_%hd216867216983%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e216866216980%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl216868216985%_))
                                                   (_%__kont220630220631%_
                                                    _%hd216867216983%_
                                                    _%signature216865216978%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g216844216884%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g216844216884%_))))))))
                       (_%loop216860216963%_ _%target216857216958%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220628220629%_))
                  (let ((_%e216848216934%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220628220629%_))))
                    (let ((_%tl216850216939%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216848216934%_)))
                          (_%hd216849216937%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216848216934%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216850216939%_))
                          (let ((_%e216851216942%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216850216939%_))))
                            (let ((_%tl216853216947%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216851216942%_)))
                                  (_%hd216852216945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216851216942%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd216852216945%_))
                                  (let ((_%e216854216950%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216852216945%_))))
                                    (let ((_%tl216856216955%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216854216950%_)))
                                          (_%hd216855216953%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216854216950%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd216855216953%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd216855216953%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl216856216955%_))
                                                  (let ((_%__splice220632220633%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl216856216955%_
                                                            '0))))
                                                    (let ((_%tl216859216960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220632220633%_
                                                              '1)))
                                                          (_%target216857216958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220632220633%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216859216960%_))
                                                          (_%__match220665220666%_
                                                           _%e216848216934%_
                                                           _%hd216849216937%_
                                                           _%tl216850216939%_
                                                           _%e216851216942%_
                                                           _%hd216852216945%_
                                                           _%tl216853216947%_
                                                           _%e216854216950%_
                                                           _%hd216855216953%_
                                                           _%tl216856216955%_
                                                           _%__splice220632220633%_
                                                           _%target216857216958%_
                                                           _%tl216859216960%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl216853216947%_))
                      (let ((_%e216877216905%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216853216947%_))))
                        (let ((_%tl216879216910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216877216905%_)))
                              (_%hd216878216908%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216877216905%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216879216910%_))
                              (_%__kont220634220635%_
                               _%hd216878216908%_
                               _%hd216852216945%_)
                              (let ()
                                (declare (not safe))
                                (_%g216844216884%_)))))
                      (let () (declare (not safe)) (_%g216844216884%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216853216947%_))
                                                      (let ((_%e216877216905%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216853216947%_))))
                (let ((_%tl216879216910%_
                       (let () (declare (not safe)) (##cdr _%e216877216905%_)))
                      (_%hd216878216908%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216877216905%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216879216910%_))
                      (_%__kont220634220635%_
                       _%hd216878216908%_
                       _%hd216852216945%_)
                      (let () (declare (not safe)) (_%g216844216884%_)))))
              (let () (declare (not safe)) (_%g216844216884%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216853216947%_))
                                                  (let ((_%e216877216905%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216853216947%_))))
                                                    (let ((_%tl216879216910%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216877216905%_)))
                                                          (_%hd216878216908%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216877216905%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216879216910%_))
                                                          (_%__kont220634220635%_
                                                           _%hd216878216908%_
                                                           _%hd216852216945%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216844216884%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216844216884%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216853216947%_))
                                              (let ((_%e216877216905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216853216947%_))))
                                                (let ((_%tl216879216910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216877216905%_)))
                                                      (_%hd216878216908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216877216905%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216879216910%_))
                                                      (_%__kont220634220635%_
                                                       _%hd216878216908%_
                                                       _%hd216852216945%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216844216884%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216844216884%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216853216947%_))
                                      (let ((_%e216877216905%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216853216947%_))))
                                        (let ((_%tl216879216910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216877216905%_)))
                                              (_%hd216878216908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216877216905%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216879216910%_))
                                              (_%__kont220634220635%_
                                               _%hd216878216908%_
                                               _%hd216852216945%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g216844216884%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216844216884%_))))))
                          (let () (declare (not safe)) (_%g216844216884%_)))))
                  (let () (declare (not safe)) (_%g216844216884%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx216815%_ _%expr216816%_ _%type216817%_)
        (let ((_%$e216819%_ (not _%type216817%_)))
          (if _%$e216819%_
              _%$e216819%_
              (let ((_%$e216822%_
                     (eq? (##structure-ref _%type216817%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e216822%_
                    _%$e216822%_
                    (let ((_%$e216825%_
                           (eq? (##structure-ref
                                 _%type216817%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e216825%_
                          _%$e216825%_
                          (let ((_%expr-type216829%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr216816%_))))
                            (if (not _%expr-type216829%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx216815%_
                                   _%type216817%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type216829%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx216815%_
                                       _%type216817%_
                                       _%expr-type216829%_))
                                    (let ((_%$e216833%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type216829%_
                                              'gxc#!abort::t))))
                                      (if _%$e216833%_
                                          _%$e216833%_
                                          (let ((_%$e216836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type216829%_
                                                    _%type216817%_))))
                                            (if _%$e216836%_
                                                _%$e216836%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx216815%_
                                                   _%type216817%_
                                                   _%expr-type216829%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self216241%_ _%stx216242%_)
        (let* ((_%__stx220710220711%_ _%stx216242%_)
               (_%g216247216357%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220710220711%_)))))
          (let ((_%__kont220712220713%_
                 (lambda (_%g216249216789%_
                          _%g216250216790%_
                          _%g216251216791%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g216251216791%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self216241%_ _%g216250216790%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self216241%_
                          _%g216249216789%_)))))
                (_%__kont220714220715%_
                 (lambda (_%g216270216615%_
                          _%g216271216616%_
                          _%g216272216617%_
                          _%g216273216618%_)
                   (let ((_%$e216650%_
                          (let ((__tmp221063
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g216273216618%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp221063))))
                     (if _%$e216650%_
                         ((lambda (_%pred-type216653%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type216653%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type216653%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test216658%_
                                        (let ((__tmp221064
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g216273216618%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g216272216617%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp221064
                                           _%stx216242%_
                                           _%self216241%_)))
                                       (_%K216662%_
                                        (let ((__tmp221065
                                               (lambda ()
                                                 (let ((__tmp221068
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self216241%_
                                                             _%g216271216616%_))))
                                                       (__tmp221066
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g216272216617%_))
                            (let ((__tmp221067
                                   (##structure-ref
                                    _%pred-type216653%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx216242%_
                               __tmp221067)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp221068
                                                    gxc#current-compile-path-type
                                                    __tmp221066)))))
                                          (declare (not safe))
                                          (__make-promise __tmp221065)))
                                       (_%E216665%_
                                        (let ((__tmp221069
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self216241%_
                                                    _%g216270216615%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp221069)))
                                       (_%__stx220688220689%_ _%test216658%_)
                                       (_%g216669216683%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx220688220689%_)))))
                                  (let ((_%__kont220690220691%_
                                         (lambda (_%g216671216711%_
                                                  _%g216672216712%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g216671216711%_))
                                               (force _%K216662%_)
                                               (force _%E216665%_))))
                                        (_%__kont220692220693%_
                                         (lambda ()
                                           (let ((__tmp221070
                                                  (cons '%#if
                                                        (cons _%test216658%_
                                                              (cons (force _%K216662%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E216665%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221070
                                              _%stx216242%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx220688220689%_))
                                        (let ((_%e216673216695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx220688220689%_))))
                                          (let ((_%tl216675216700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e216673216695%_)))
                                                (_%hd216674216698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e216673216695%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl216675216700%_))
                                                (let ((_%e216676216703%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl216675216700%_))))
                                                  (let ((_%tl216678216708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e216676216703%_)))
                                                        (_%hd216677216706%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e216676216703%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl216678216708%_))
                                                        (_%__kont220690220691%_
                                                         _%hd216677216706%_
                                                         _%hd216674216698%_)
                                                        (_%__kont220692220693%_))))
                                                (_%__kont220692220693%_))))
                                        (_%__kont220692220693%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self216241%_
                                   _%stx216242%_))))
                          _%$e216650%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self216241%_
                            _%stx216242%_))))))
                (_%__kont220716220717%_
                 (lambda (_%g216307216491%_
                          _%g216308216492%_
                          _%g216309216493%_
                          _%g216310216494%_)
                   (gxc#optimize-if%
                    _%self216241%_
                    (let ((__tmp221071
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g216309216493%_
                                       (cons _%g216307216491%_
                                             (cons _%g216308216492%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221071 _%stx216242%_)))))
                (_%__kont220718220719%_
                 (lambda (_%g216338216394%_
                          _%g216339216395%_
                          _%g216340216396%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self216241%_ _%stx216242%_)))))
            (let ((_%__match220917220918%_
                   (lambda (_%e216311216419%_
                            _%hd216312216422%_
                            _%tl216313216424%_
                            _%e216314216427%_
                            _%hd216315216430%_
                            _%tl216316216432%_
                            _%e216317216435%_
                            _%hd216318216438%_
                            _%tl216319216440%_
                            _%e216320216443%_
                            _%hd216321216446%_
                            _%tl216322216448%_
                            _%e216323216451%_
                            _%hd216324216454%_
                            _%tl216325216456%_
                            _%e216326216459%_
                            _%hd216327216462%_
                            _%tl216328216464%_
                            _%e216329216467%_
                            _%hd216330216470%_
                            _%tl216331216472%_
                            _%e216332216475%_
                            _%hd216333216478%_
                            _%tl216334216480%_
                            _%e216335216483%_
                            _%hd216336216486%_
                            _%tl216337216488%_)
                     (let ((_%g216307216491%_ _%hd216336216486%_)
                           (_%g216308216492%_ _%hd216333216478%_)
                           (_%g216309216493%_ _%hd216330216470%_)
                           (_%g216310216494%_ _%hd216327216462%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g216310216494%_ 'not))
                           (_%__kont220716220717%_
                            _%g216307216491%_
                            _%g216308216492%_
                            _%g216309216493%_
                            _%g216310216494%_)
                           (_%__kont220718220719%_
                            _%hd216336216486%_
                            _%hd216333216478%_
                            _%hd216315216430%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220710220711%_))
                  (let ((_%e216252216741%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220710220711%_))))
                    (let ((_%tl216254216746%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216252216741%_)))
                          (_%hd216253216744%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216252216741%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216254216746%_))
                          (let ((_%e216255216749%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216254216746%_))))
                            (let ((_%tl216257216754%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216255216749%_)))
                                  (_%hd216256216752%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216255216749%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd216256216752%_))
                                  (let ((_%e216258216757%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216256216752%_))))
                                    (let ((_%tl216260216762%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216258216757%_)))
                                          (_%hd216259216760%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216258216757%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd216259216760%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd216259216760%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216260216762%_))
                                                  (let ((_%e216261216765%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216260216762%_))))
                                                    (let ((_%tl216263216770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216261216765%_)))
                                                          (_%hd216262216768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216261216765%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216263216770%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl216257216754%_))
                      (let ((_%e216264216773%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216257216754%_))))
                        (let ((_%tl216266216778%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216264216773%_)))
                              (_%hd216265216776%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216264216773%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216266216778%_))
                              (let ((_%e216267216781%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216266216778%_))))
                                (let ((_%tl216269216786%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216267216781%_)))
                                      (_%hd216268216784%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216267216781%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216269216786%_))
                                      (_%__kont220712220713%_
                                       _%hd216268216784%_
                                       _%hd216265216776%_
                                       _%hd216262216768%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g216247216357%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g216247216357%_)))))
                      (let () (declare (not safe)) (_%g216247216357%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216257216754%_))
                      (let ((_%e216347216378%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216257216754%_))))
                        (let ((_%tl216349216383%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216347216378%_)))
                              (_%hd216348216381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216347216378%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216349216383%_))
                              (let ((_%e216350216386%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216349216383%_))))
                                (let ((_%tl216352216391%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216350216386%_)))
                                      (_%hd216351216389%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216350216386%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216352216391%_))
                                      (_%__kont220718220719%_
                                       _%hd216351216389%_
                                       _%hd216348216381%_
                                       _%hd216256216752%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g216247216357%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g216247216357%_)))))
                      (let () (declare (not safe)) (_%g216247216357%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216257216754%_))
                                                      (let ((_%e216347216378%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216257216754%_))))
                (let ((_%tl216349216383%_
                       (let () (declare (not safe)) (##cdr _%e216347216378%_)))
                      (_%hd216348216381%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216347216378%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216349216383%_))
                      (let ((_%e216350216386%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216349216383%_))))
                        (let ((_%tl216352216391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216350216386%_)))
                              (_%hd216351216389%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216350216386%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216352216391%_))
                              (_%__kont220718220719%_
                               _%hd216351216389%_
                               _%hd216348216381%_
                               _%hd216256216752%_)
                              (let ()
                                (declare (not safe))
                                (_%g216247216357%_)))))
                      (let () (declare (not safe)) (_%g216247216357%_)))))
              (let () (declare (not safe)) (_%g216247216357%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd216259216760%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216260216762%_))
                                                      (let ((_%e216283216551%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216260216762%_))))
                (let ((_%tl216285216556%_
                       (let () (declare (not safe)) (##cdr _%e216283216551%_)))
                      (_%hd216284216554%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216283216551%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd216284216554%_))
                      (let ((_%e216286216559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd216284216554%_))))
                        (let ((_%tl216288216564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216286216559%_)))
                              (_%hd216287216562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216286216559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd216287216562%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd216287216562%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216288216564%_))
                                      (let ((_%e216289216567%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216288216564%_))))
                                        (let ((_%tl216291216572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216289216567%_)))
                                              (_%hd216290216570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216289216567%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216291216572%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216285216556%_))
                                                  (let ((_%e216292216575%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216285216556%_))))
                                                    (let ((_%tl216294216580%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216292216575%_)))
                                                          (_%hd216293216578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216292216575%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd216293216578%_))
                                                          (let ((_%e216295216583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd216293216578%_))))
                    (let ((_%tl216297216588%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216295216583%_)))
                          (_%hd216296216586%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216295216583%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd216296216586%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd216296216586%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216297216588%_))
                                  (let ((_%e216298216591%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216297216588%_))))
                                    (let ((_%tl216300216596%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216298216591%_)))
                                          (_%hd216299216594%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216298216591%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216300216596%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216294216580%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216257216754%_))
                                                  (let ((_%e216301216599%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216257216754%_))))
                                                    (let ((_%tl216303216604%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216301216599%_)))
                                                          (_%hd216302216602%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216301216599%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216303216604%_))
                                                          (let ((_%e216304216607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216303216604%_))))
                    (let ((_%tl216306216612%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216304216607%_)))
                          (_%hd216305216610%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216304216607%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216306216612%_))
                          (_%__kont220714220715%_
                           _%hd216305216610%_
                           _%hd216302216602%_
                           _%hd216299216594%_
                           _%hd216290216570%_)
                          (let () (declare (not safe)) (_%g216247216357%_)))))
                  (let () (declare (not safe)) (_%g216247216357%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216247216357%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216257216754%_))
                                                  (let ((_%e216347216378%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216257216754%_))))
                                                    (let ((_%tl216349216383%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216347216378%_)))
                                                          (_%hd216348216381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216347216378%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216349216383%_))
                                                          (let ((_%e216350216386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216349216383%_))))
                    (let ((_%tl216352216391%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216350216386%_)))
                          (_%hd216351216389%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216350216386%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216352216391%_))
                          (_%__kont220718220719%_
                           _%hd216351216389%_
                           _%hd216348216381%_
                           _%hd216256216752%_)
                          (let () (declare (not safe)) (_%g216247216357%_)))))
                  (let () (declare (not safe)) (_%g216247216357%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216247216357%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216294216580%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216257216754%_))
                                                  (let ((_%e216332216475%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216257216754%_))))
                                                    (let ((_%tl216334216480%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216332216475%_)))
                                                          (_%hd216333216478%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216332216475%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216334216480%_))
                                                          (let ((_%e216335216483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216334216480%_))))
                    (let ((_%tl216337216488%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216335216483%_)))
                          (_%hd216336216486%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216335216483%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216337216488%_))
                          (_%__match220917220918%_
                           _%e216252216741%_
                           _%hd216253216744%_
                           _%tl216254216746%_
                           _%e216255216749%_
                           _%hd216256216752%_
                           _%tl216257216754%_
                           _%e216258216757%_
                           _%hd216259216760%_
                           _%tl216260216762%_
                           _%e216283216551%_
                           _%hd216284216554%_
                           _%tl216285216556%_
                           _%e216286216559%_
                           _%hd216287216562%_
                           _%tl216288216564%_
                           _%e216289216567%_
                           _%hd216290216570%_
                           _%tl216291216572%_
                           _%e216292216575%_
                           _%hd216293216578%_
                           _%tl216294216580%_
                           _%e216332216475%_
                           _%hd216333216478%_
                           _%tl216334216480%_
                           _%e216335216483%_
                           _%hd216336216486%_
                           _%tl216337216488%_)
                          (let () (declare (not safe)) (_%g216247216357%_)))))
                  (let () (declare (not safe)) (_%g216247216357%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216247216357%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216257216754%_))
                                                  (let ((_%e216347216378%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216257216754%_))))
                                                    (let ((_%tl216349216383%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216347216378%_)))
                                                          (_%hd216348216381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216347216378%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216349216383%_))
                                                          (let ((_%e216350216386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216349216383%_))))
                    (let ((_%tl216352216391%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216350216386%_)))
                          (_%hd216351216389%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216350216386%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216352216391%_))
                          (_%__kont220718220719%_
                           _%hd216351216389%_
                           _%hd216348216381%_
                           _%hd216256216752%_)
                          (let () (declare (not safe)) (_%g216247216357%_)))))
                  (let () (declare (not safe)) (_%g216247216357%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216247216357%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216294216580%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216257216754%_))
                                          (let ((_%e216332216475%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216257216754%_))))
                                            (let ((_%tl216334216480%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216332216475%_)))
                                                  (_%hd216333216478%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216332216475%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216334216480%_))
                                                  (let ((_%e216335216483%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216334216480%_))))
                                                    (let ((_%tl216337216488%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216335216483%_)))
                                                          (_%hd216336216486%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216335216483%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216337216488%_))
                                                          (_%__match220917220918%_
                                                           _%e216252216741%_
                                                           _%hd216253216744%_
                                                           _%tl216254216746%_
                                                           _%e216255216749%_
                                                           _%hd216256216752%_
                                                           _%tl216257216754%_
                                                           _%e216258216757%_
                                                           _%hd216259216760%_
                                                           _%tl216260216762%_
                                                           _%e216283216551%_
                                                           _%hd216284216554%_
                                                           _%tl216285216556%_
                                                           _%e216286216559%_
                                                           _%hd216287216562%_
                                                           _%tl216288216564%_
                                                           _%e216289216567%_
                                                           _%hd216290216570%_
                                                           _%tl216291216572%_
                                                           _%e216292216575%_
                                                           _%hd216293216578%_
                                                           _%tl216294216580%_
                                                           _%e216332216475%_
                                                           _%hd216333216478%_
                                                           _%tl216334216480%_
                                                           _%e216335216483%_
                                                           _%hd216336216486%_
                                                           _%tl216337216488%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216247216357%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216247216357%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216247216357%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216257216754%_))
                                          (let ((_%e216347216378%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216257216754%_))))
                                            (let ((_%tl216349216383%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216347216378%_)))
                                                  (_%hd216348216381%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216347216378%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216349216383%_))
                                                  (let ((_%e216350216386%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216349216383%_))))
                                                    (let ((_%tl216352216391%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216350216386%_)))
                                                          (_%hd216351216389%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216350216386%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216352216391%_))
                                                          (_%__kont220718220719%_
                                                           _%hd216351216389%_
                                                           _%hd216348216381%_
                                                           _%hd216256216752%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216247216357%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216247216357%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216247216357%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216294216580%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216257216754%_))
                                      (let ((_%e216332216475%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216257216754%_))))
                                        (let ((_%tl216334216480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216332216475%_)))
                                              (_%hd216333216478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216332216475%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216334216480%_))
                                              (let ((_%e216335216483%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216334216480%_))))
                                                (let ((_%tl216337216488%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216335216483%_)))
                                                      (_%hd216336216486%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216335216483%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216337216488%_))
                                                      (_%__match220917220918%_
                                                       _%e216252216741%_
                                                       _%hd216253216744%_
                                                       _%tl216254216746%_
                                                       _%e216255216749%_
                                                       _%hd216256216752%_
                                                       _%tl216257216754%_
                                                       _%e216258216757%_
                                                       _%hd216259216760%_
                                                       _%tl216260216762%_
                                                       _%e216283216551%_
                                                       _%hd216284216554%_
                                                       _%tl216285216556%_
                                                       _%e216286216559%_
                                                       _%hd216287216562%_
                                                       _%tl216288216564%_
                                                       _%e216289216567%_
                                                       _%hd216290216570%_
                                                       _%tl216291216572%_
                                                       _%e216292216575%_
                                                       _%hd216293216578%_
                                                       _%tl216294216580%_
                                                       _%e216332216475%_
                                                       _%hd216333216478%_
                                                       _%tl216334216480%_
                                                       _%e216335216483%_
                                                       _%hd216336216486%_
                                                       _%tl216337216488%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216247216357%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216247216357%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216247216357%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216257216754%_))
                                      (let ((_%e216347216378%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216257216754%_))))
                                        (let ((_%tl216349216383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216347216378%_)))
                                              (_%hd216348216381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216347216378%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216349216383%_))
                                              (let ((_%e216350216386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216349216383%_))))
                                                (let ((_%tl216352216391%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216350216386%_)))
                                                      (_%hd216351216389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216350216386%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216352216391%_))
                                                      (_%__kont220718220719%_
                                                       _%hd216351216389%_
                                                       _%hd216348216381%_
                                                       _%hd216256216752%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216247216357%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216247216357%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216247216357%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216294216580%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216257216754%_))
                                  (let ((_%e216332216475%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216257216754%_))))
                                    (let ((_%tl216334216480%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216332216475%_)))
                                          (_%hd216333216478%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216332216475%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216334216480%_))
                                          (let ((_%e216335216483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216334216480%_))))
                                            (let ((_%tl216337216488%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216335216483%_)))
                                                  (_%hd216336216486%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216335216483%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216337216488%_))
                                                  (_%__match220917220918%_
                                                   _%e216252216741%_
                                                   _%hd216253216744%_
                                                   _%tl216254216746%_
                                                   _%e216255216749%_
                                                   _%hd216256216752%_
                                                   _%tl216257216754%_
                                                   _%e216258216757%_
                                                   _%hd216259216760%_
                                                   _%tl216260216762%_
                                                   _%e216283216551%_
                                                   _%hd216284216554%_
                                                   _%tl216285216556%_
                                                   _%e216286216559%_
                                                   _%hd216287216562%_
                                                   _%tl216288216564%_
                                                   _%e216289216567%_
                                                   _%hd216290216570%_
                                                   _%tl216291216572%_
                                                   _%e216292216575%_
                                                   _%hd216293216578%_
                                                   _%tl216294216580%_
                                                   _%e216332216475%_
                                                   _%hd216333216478%_
                                                   _%tl216334216480%_
                                                   _%e216335216483%_
                                                   _%hd216336216486%_
                                                   _%tl216337216488%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216247216357%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216247216357%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216247216357%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216257216754%_))
                                  (let ((_%e216347216378%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216257216754%_))))
                                    (let ((_%tl216349216383%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216347216378%_)))
                                          (_%hd216348216381%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216347216378%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216349216383%_))
                                          (let ((_%e216350216386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216349216383%_))))
                                            (let ((_%tl216352216391%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216350216386%_)))
                                                  (_%hd216351216389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216350216386%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216352216391%_))
                                                  (_%__kont220718220719%_
                                                   _%hd216351216389%_
                                                   _%hd216348216381%_
                                                   _%hd216256216752%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216247216357%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216247216357%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216247216357%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216294216580%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216257216754%_))
                          (let ((_%e216332216475%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216257216754%_))))
                            (let ((_%tl216334216480%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216332216475%_)))
                                  (_%hd216333216478%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216332216475%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216334216480%_))
                                  (let ((_%e216335216483%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216334216480%_))))
                                    (let ((_%tl216337216488%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216335216483%_)))
                                          (_%hd216336216486%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216335216483%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216337216488%_))
                                          (_%__match220917220918%_
                                           _%e216252216741%_
                                           _%hd216253216744%_
                                           _%tl216254216746%_
                                           _%e216255216749%_
                                           _%hd216256216752%_
                                           _%tl216257216754%_
                                           _%e216258216757%_
                                           _%hd216259216760%_
                                           _%tl216260216762%_
                                           _%e216283216551%_
                                           _%hd216284216554%_
                                           _%tl216285216556%_
                                           _%e216286216559%_
                                           _%hd216287216562%_
                                           _%tl216288216564%_
                                           _%e216289216567%_
                                           _%hd216290216570%_
                                           _%tl216291216572%_
                                           _%e216292216575%_
                                           _%hd216293216578%_
                                           _%tl216294216580%_
                                           _%e216332216475%_
                                           _%hd216333216478%_
                                           _%tl216334216480%_
                                           _%e216335216483%_
                                           _%hd216336216486%_
                                           _%tl216337216488%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216247216357%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216247216357%_)))))
                          (let () (declare (not safe)) (_%g216247216357%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216257216754%_))
                          (let ((_%e216347216378%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216257216754%_))))
                            (let ((_%tl216349216383%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216347216378%_)))
                                  (_%hd216348216381%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216347216378%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216349216383%_))
                                  (let ((_%e216350216386%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216349216383%_))))
                                    (let ((_%tl216352216391%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216350216386%_)))
                                          (_%hd216351216389%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216350216386%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216352216391%_))
                                          (_%__kont220718220719%_
                                           _%hd216351216389%_
                                           _%hd216348216381%_
                                           _%hd216256216752%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216247216357%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216247216357%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g216247216357%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216257216754%_))
                                                      (let ((_%e216347216378%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216257216754%_))))
                (let ((_%tl216349216383%_
                       (let () (declare (not safe)) (##cdr _%e216347216378%_)))
                      (_%hd216348216381%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216347216378%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216349216383%_))
                      (let ((_%e216350216386%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216349216383%_))))
                        (let ((_%tl216352216391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216350216386%_)))
                              (_%hd216351216389%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216350216386%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216352216391%_))
                              (_%__kont220718220719%_
                               _%hd216351216389%_
                               _%hd216348216381%_
                               _%hd216256216752%_)
                              (let ()
                                (declare (not safe))
                                (_%g216247216357%_)))))
                      (let () (declare (not safe)) (_%g216247216357%_)))))
              (let () (declare (not safe)) (_%g216247216357%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216257216754%_))
                                                  (let ((_%e216347216378%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216257216754%_))))
                                                    (let ((_%tl216349216383%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216347216378%_)))
                                                          (_%hd216348216381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216347216378%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216349216383%_))
                                                          (let ((_%e216350216386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216349216383%_))))
                    (let ((_%tl216352216391%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216350216386%_)))
                          (_%hd216351216389%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216350216386%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216352216391%_))
                          (_%__kont220718220719%_
                           _%hd216351216389%_
                           _%hd216348216381%_
                           _%hd216256216752%_)
                          (let () (declare (not safe)) (_%g216247216357%_)))))
                  (let () (declare (not safe)) (_%g216247216357%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216247216357%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216257216754%_))
                                          (let ((_%e216347216378%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216257216754%_))))
                                            (let ((_%tl216349216383%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216347216378%_)))
                                                  (_%hd216348216381%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216347216378%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216349216383%_))
                                                  (let ((_%e216350216386%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216349216383%_))))
                                                    (let ((_%tl216352216391%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216350216386%_)))
                                                          (_%hd216351216389%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216350216386%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216352216391%_))
                                                          (_%__kont220718220719%_
                                                           _%hd216351216389%_
                                                           _%hd216348216381%_
                                                           _%hd216256216752%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216247216357%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216247216357%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216247216357%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216257216754%_))
                                      (let ((_%e216347216378%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216257216754%_))))
                                        (let ((_%tl216349216383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216347216378%_)))
                                              (_%hd216348216381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216347216378%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216349216383%_))
                                              (let ((_%e216350216386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216349216383%_))))
                                                (let ((_%tl216352216391%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216350216386%_)))
                                                      (_%hd216351216389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216350216386%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216352216391%_))
                                                      (_%__kont220718220719%_
                                                       _%hd216351216389%_
                                                       _%hd216348216381%_
                                                       _%hd216256216752%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216247216357%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216247216357%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216247216357%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216257216754%_))
                                  (let ((_%e216347216378%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216257216754%_))))
                                    (let ((_%tl216349216383%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216347216378%_)))
                                          (_%hd216348216381%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216347216378%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216349216383%_))
                                          (let ((_%e216350216386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216349216383%_))))
                                            (let ((_%tl216352216391%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216350216386%_)))
                                                  (_%hd216351216389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216350216386%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216352216391%_))
                                                  (_%__kont220718220719%_
                                                   _%hd216351216389%_
                                                   _%hd216348216381%_
                                                   _%hd216256216752%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216247216357%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216247216357%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216247216357%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216257216754%_))
                          (let ((_%e216347216378%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216257216754%_))))
                            (let ((_%tl216349216383%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216347216378%_)))
                                  (_%hd216348216381%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216347216378%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216349216383%_))
                                  (let ((_%e216350216386%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216349216383%_))))
                                    (let ((_%tl216352216391%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216350216386%_)))
                                          (_%hd216351216389%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216350216386%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216352216391%_))
                                          (_%__kont220718220719%_
                                           _%hd216351216389%_
                                           _%hd216348216381%_
                                           _%hd216256216752%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216247216357%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216247216357%_)))))
                          (let () (declare (not safe)) (_%g216247216357%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl216257216754%_))
                  (let ((_%e216347216378%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216257216754%_))))
                    (let ((_%tl216349216383%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216347216378%_)))
                          (_%hd216348216381%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216347216378%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216349216383%_))
                          (let ((_%e216350216386%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216349216383%_))))
                            (let ((_%tl216352216391%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216350216386%_)))
                                  (_%hd216351216389%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216350216386%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216352216391%_))
                                  (_%__kont220718220719%_
                                   _%hd216351216389%_
                                   _%hd216348216381%_
                                   _%hd216256216752%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g216247216357%_)))))
                          (let () (declare (not safe)) (_%g216247216357%_)))))
                  (let () (declare (not safe)) (_%g216247216357%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216257216754%_))
                                                      (let ((_%e216347216378%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216257216754%_))))
                (let ((_%tl216349216383%_
                       (let () (declare (not safe)) (##cdr _%e216347216378%_)))
                      (_%hd216348216381%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216347216378%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216349216383%_))
                      (let ((_%e216350216386%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216349216383%_))))
                        (let ((_%tl216352216391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216350216386%_)))
                              (_%hd216351216389%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216350216386%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216352216391%_))
                              (_%__kont220718220719%_
                               _%hd216351216389%_
                               _%hd216348216381%_
                               _%hd216256216752%_)
                              (let ()
                                (declare (not safe))
                                (_%g216247216357%_)))))
                      (let () (declare (not safe)) (_%g216247216357%_)))))
              (let () (declare (not safe)) (_%g216247216357%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216257216754%_))
                                              (let ((_%e216347216378%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216257216754%_))))
                                                (let ((_%tl216349216383%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216347216378%_)))
                                                      (_%hd216348216381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216347216378%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216349216383%_))
                                                      (let ((_%e216350216386%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216349216383%_))))
                (let ((_%tl216352216391%_
                       (let () (declare (not safe)) (##cdr _%e216350216386%_)))
                      (_%hd216351216389%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216350216386%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216352216391%_))
                      (_%__kont220718220719%_
                       _%hd216351216389%_
                       _%hd216348216381%_
                       _%hd216256216752%_)
                      (let () (declare (not safe)) (_%g216247216357%_)))))
              (let () (declare (not safe)) (_%g216247216357%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g216247216357%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216257216754%_))
                                      (let ((_%e216347216378%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216257216754%_))))
                                        (let ((_%tl216349216383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216347216378%_)))
                                              (_%hd216348216381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216347216378%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216349216383%_))
                                              (let ((_%e216350216386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216349216383%_))))
                                                (let ((_%tl216352216391%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216350216386%_)))
                                                      (_%hd216351216389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216350216386%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216352216391%_))
                                                      (_%__kont220718220719%_
                                                       _%hd216351216389%_
                                                       _%hd216348216381%_
                                                       _%hd216256216752%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216247216357%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216247216357%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216247216357%_))))))
                          (let () (declare (not safe)) (_%g216247216357%_)))))
                  (let () (declare (not safe)) (_%g216247216357%_))))))))))
