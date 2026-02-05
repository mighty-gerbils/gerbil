(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1770333068)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp220959 (list gxc#::basic-xform::t))
            (__tmp220958 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp220959
         '()
         __tmp220958
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args220236%_
        (apply make-instance gxc#::optimize-call::t _%$args220236%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp220960
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
        (__make-atomic-promise __tmp220960)))
    (define gxc#apply-optimize-call
      (lambda (_%stx220228%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self220231%_
                (let ((__obj220950
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj220950))
               (__tmp220961
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220231%_ _%stx220228%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220961
           gxc#current-compile-method
           _%self220231%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp220963 (list gxc#::void::t))
            (__tmp220962 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp220963
         '()
         __tmp220962
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args220225%_
        (apply make-instance gxc#::check-return-type::t _%$args220225%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp220964
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
        (__make-atomic-promise __tmp220964)))
    (define gxc#apply-check-return-type
      (lambda (_%stx220217%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self220220%_
                (let ((__obj220952
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj220952))
               (__tmp220965
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220220%_ _%stx220217%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220965
           gxc#current-compile-method
           _%self220220%_))))
    (define gxc#optimize-call%
      (lambda (_%self219824%_ _%stx219825%_)
        (let* ((_%__stx220305220306%_ _%stx219825%_)
               (_%g219828219874%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220305220306%_)))))
          (let ((_%__kont220307220308%_
                 (lambda (_%g219830220013%_ _%g219831220014%_)
                   (let* ((_%rator-id220034%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g219831220014%_)))
                          (_%rator-type220036%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id220034%_))))
                     (if (or (not _%rator-type220036%_)
                             (eq? (##structure-ref
                                   _%rator-type220036%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self219824%_ _%stx219825%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type220036%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp220966
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type220036%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id220034%_
                                  '" => "
                                  _%rator-type220036%_
                                  '" "
                                  __tmp220966))
                               (let* ((_%optimized220051%_
                                       (let ((__method220953
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type220036%_
                                                 'optimize-call))))
                                         (if __method220953
                                             (let ((__tmp220967
                                                    (let ((__tmp220968
                                                           (lambda (_%g220043220046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g220044220048%_)
                     (cons _%g220043220046%_ _%g220044220048%_))))
              (declare (not safe))
              (__foldr1 __tmp220968 '() _%g219830220013%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method220953
                                                _%rator-type220036%_
                                                _%self219824%_
                                                _%stx219825%_
                                                __tmp220967))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type220036%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx220253220254%_
                                       _%optimized220051%_)
                                      (_%g220054220083%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx220253220254%_)))))
                                 (let ((_%__kont220255220256%_
                                        (lambda (_%g220056220149%_
                                                 _%g220057220150%_)
                                          (let* ((_%optimized-rator-id220177%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g220057220150%_)))
                                                 (_%rator-type220182%_
                                                  (let ((_%$e220179%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id220177%_))))
                                                    (if _%$e220179%_
                                                        _%$e220179%_
                                                        _%rator-type220036%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type220182%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id220177%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type220182%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type220182%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized220051%_
                                                (let ((__tmp220969
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g220057220150%_ '()))
                           (let ((__tmp220970
                                  (lambda (_%g220190220193%_ _%g220191220195%_)
                                    (cons _%g220190220193%_
                                          _%g220191220195%_))))
                             (declare (not safe))
                             (__foldr1 __tmp220970 '() _%g220056220149%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp220969
                                                   _%stx219825%_))))))
                                       (_%__kont220259220260%_
                                        (lambda () _%optimized220051%_)))
                                   (let ((_%__match220302220303%_
                                          (lambda (_%e220058220095%_
                                                   _%hd220059220098%_
                                                   _%tl220060220100%_
                                                   _%e220061220103%_
                                                   _%hd220062220106%_
                                                   _%tl220063220108%_
                                                   _%e220064220111%_
                                                   _%hd220065220114%_
                                                   _%tl220066220116%_
                                                   _%e220067220119%_
                                                   _%hd220068220122%_
                                                   _%tl220069220124%_
                                                   _%__splice220257220258%_
                                                   _%target220070220127%_
                                                   _%tl220072220129%_)
                                            (letrec ((_%loop220073220132%_
                                                      (lambda (_%hd220071220135%_
                                                               _%arg220077220137%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd220071220135%_))
                                                            (let ((_%e220074220139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd220071220135%_))))
                      (let ((_%lp-tl220076220144%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e220074220139%_)))
                            (_%lp-hd220075220142%_
                             (let ()
                               (declare (not safe))
                               (##car _%e220074220139%_))))
                        (_%loop220073220132%_
                         _%lp-tl220076220144%_
                         (cons _%lp-hd220075220142%_ _%arg220077220137%_))))
                    (let ((_%arg220078220147%_ (reverse _%arg220077220137%_)))
                      (_%__kont220255220256%_
                       _%arg220078220147%_
                       _%hd220068220122%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop220073220132%_
                                               _%target220070220127%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx220253220254%_))
                                         (let ((_%e220058220095%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx220253220254%_))))
                                           (let ((_%tl220060220100%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e220058220095%_)))
                                                 (_%hd220059220098%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e220058220095%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd220059220098%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd220059220098%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl220060220100%_))
                                                         (let ((_%e220061220103%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl220060220100%_))))
                   (let ((_%tl220063220108%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e220061220103%_)))
                         (_%hd220062220106%_
                          (let ()
                            (declare (not safe))
                            (##car _%e220061220103%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd220062220106%_))
                         (let ((_%e220064220111%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd220062220106%_))))
                           (let ((_%tl220066220116%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e220064220111%_)))
                                 (_%hd220065220114%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e220064220111%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd220065220114%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd220065220114%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl220066220116%_))
                                         (let ((_%e220067220119%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl220066220116%_))))
                                           (let ((_%tl220069220124%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e220067220119%_)))
                                                 (_%hd220068220122%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e220067220119%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl220069220124%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl220063220108%_))
                                                     (let ((_%__splice220257220258%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl220063220108%_
                                                               '0))))
                                                       (let ((_%tl220072220129%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice220257220258%_ '1)))
                     (_%target220070220127%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice220257220258%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl220072220129%_))
                     (_%__match220302220303%_
                      _%e220058220095%_
                      _%hd220059220098%_
                      _%tl220060220100%_
                      _%e220061220103%_
                      _%hd220062220106%_
                      _%tl220063220108%_
                      _%e220064220111%_
                      _%hd220065220114%_
                      _%tl220066220116%_
                      _%e220067220119%_
                      _%hd220068220122%_
                      _%tl220069220124%_
                      _%__splice220257220258%_
                      _%target220070220127%_
                      _%tl220072220129%_)
                     (_%__kont220259220260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont220259220260%_))
                                                 (_%__kont220259220260%_))))
                                         (_%__kont220259220260%_))
                                     (_%__kont220259220260%_))
                                 (_%__kont220259220260%_))))
                         (_%__kont220259220260%_))))
                 (_%__kont220259220260%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont220259220260%_))
                                                 (_%__kont220259220260%_))))
                                         (_%__kont220259220260%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type220036%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type220036%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp220971
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g219831220014%_
                                                                '()))
                                                    (map (lambda (_%g220201220203%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self219824%_
                                                              _%g220201220203%_)))
                                                         (let ((__tmp220972
                                                                (lambda (_%g220205220208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g220206220210%_)
                          (cons _%g220205220208%_ _%g220206220210%_))))
                   (declare (not safe))
                   (__foldr1 __tmp220972 '() _%g219830220013%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp220971
                                    _%stx219825%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx219825%_
                                    _%rator-type220036%_))))))))
                (_%__kont220311220312%_
                 (lambda (_%g219853219917%_ _%g219854219918%_)
                   (let ((_%rator-type219935%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g219854219918%_))))
                     (if (and _%rator-type219935%_
                              (eq? (##structure-ref
                                    _%rator-type219935%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type219935%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type219935%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type219935%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp220973
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self219824%_
                                               _%g219854219918%_))
                                            (map (lambda (_%g219937219939%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self219824%_
                                                      _%g219937219939%_)))
                                                 (let ((__tmp220974
                                                        (lambda (_%g219941219944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g219942219946%_)
                  (cons _%g219941219944%_ _%g219942219946%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp220974
                                                    '()
                                                    _%g219853219917%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp220973 _%stx219825%_))
                         (if (or (not _%rator-type219935%_)
                                 (let ((__tmp220975
                                        (##structure-ref
                                         _%rator-type219935%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp220975 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self219824%_ _%stx219825%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx219825%_
                                _%rator-type219935%_))))))))
            (let* ((_%__match220372220373%_
                    (lambda (_%e219855219879%_
                             _%hd219856219882%_
                             _%tl219857219884%_
                             _%e219858219887%_
                             _%hd219859219890%_
                             _%tl219860219892%_
                             _%__splice220313220314%_
                             _%target219861219895%_
                             _%tl219863219897%_)
                      (letrec ((_%loop219864219900%_
                                (lambda (_%hd219862219903%_
                                         _%rand219868219905%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219862219903%_))
                                      (let ((_%e219865219907%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219862219903%_))))
                                        (let ((_%lp-tl219867219912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219865219907%_)))
                                              (_%lp-hd219866219910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219865219907%_))))
                                          (_%loop219864219900%_
                                           _%lp-tl219867219912%_
                                           (cons _%lp-hd219866219910%_
                                                 _%rand219868219905%_))))
                                      (let ((_%rand219869219915%_
                                             (reverse _%rand219868219905%_)))
                                        (_%__kont220311220312%_
                                         _%rand219869219915%_
                                         _%hd219859219890%_))))))
                        (_%loop219864219900%_ _%target219861219895%_ '()))))
                   (_%__match220352220353%_
                    (lambda (_%e219832219959%_
                             _%hd219833219962%_
                             _%tl219834219964%_
                             _%e219835219967%_
                             _%hd219836219970%_
                             _%tl219837219972%_
                             _%e219838219975%_
                             _%hd219839219978%_
                             _%tl219840219980%_
                             _%e219841219983%_
                             _%hd219842219986%_
                             _%tl219843219988%_
                             _%__splice220309220310%_
                             _%target219844219991%_
                             _%tl219846219993%_)
                      (letrec ((_%loop219847219996%_
                                (lambda (_%hd219845219999%_
                                         _%rand219851220001%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219845219999%_))
                                      (let ((_%e219848220003%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219845219999%_))))
                                        (let ((_%lp-tl219850220008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219848220003%_)))
                                              (_%lp-hd219849220006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219848220003%_))))
                                          (_%loop219847219996%_
                                           _%lp-tl219850220008%_
                                           (cons _%lp-hd219849220006%_
                                                 _%rand219851220001%_))))
                                      (let ((_%rand219852220011%_
                                             (reverse _%rand219851220001%_)))
                                        (_%__kont220307220308%_
                                         _%rand219852220011%_
                                         _%hd219842219986%_))))))
                        (_%loop219847219996%_ _%target219844219991%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220305220306%_))
                  (let ((_%e219832219959%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220305220306%_))))
                    (let ((_%tl219834219964%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e219832219959%_)))
                          (_%hd219833219962%_
                           (let ()
                             (declare (not safe))
                             (##car _%e219832219959%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl219834219964%_))
                          (let ((_%e219835219967%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl219834219964%_))))
                            (let ((_%tl219837219972%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e219835219967%_)))
                                  (_%hd219836219970%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e219835219967%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd219836219970%_))
                                  (let ((_%e219838219975%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd219836219970%_))))
                                    (let ((_%tl219840219980%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e219838219975%_)))
                                          (_%hd219839219978%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e219838219975%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd219839219978%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd219839219978%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl219840219980%_))
                                                  (let ((_%e219841219983%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl219840219980%_))))
                                                    (let ((_%tl219843219988%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e219841219983%_)))
                                                          (_%hd219842219986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e219841219983%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219843219988%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl219837219972%_))
                      (let ((_%__splice220309220310%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl219837219972%_
                                '0))))
                        (let ((_%tl219846219993%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220309220310%_ '1)))
                              (_%target219844219991%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220309220310%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219846219993%_))
                              (_%__match220352220353%_
                               _%e219832219959%_
                               _%hd219833219962%_
                               _%tl219834219964%_
                               _%e219835219967%_
                               _%hd219836219970%_
                               _%tl219837219972%_
                               _%e219838219975%_
                               _%hd219839219978%_
                               _%tl219840219980%_
                               _%e219841219983%_
                               _%hd219842219986%_
                               _%tl219843219988%_
                               _%__splice220309220310%_
                               _%target219844219991%_
                               _%tl219846219993%_)
                              (let ()
                                (declare (not safe))
                                (_%g219828219874%_)))))
                      (let () (declare (not safe)) (_%g219828219874%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl219837219972%_))
                      (let ((_%__splice220313220314%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl219837219972%_
                                '0))))
                        (let ((_%tl219863219897%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220313220314%_ '1)))
                              (_%target219861219895%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220313220314%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219863219897%_))
                              (_%__match220372220373%_
                               _%e219832219959%_
                               _%hd219833219962%_
                               _%tl219834219964%_
                               _%e219835219967%_
                               _%hd219836219970%_
                               _%tl219837219972%_
                               _%__splice220313220314%_
                               _%target219861219895%_
                               _%tl219863219897%_)
                              (let ()
                                (declare (not safe))
                                (_%g219828219874%_)))))
                      (let () (declare (not safe)) (_%g219828219874%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl219837219972%_))
                                                      (let ((_%__splice220313220314%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl219837219972%_
                        '0))))
                (let ((_%tl219863219897%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220313220314%_ '1)))
                      (_%target219861219895%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220313220314%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl219863219897%_))
                      (_%__match220372220373%_
                       _%e219832219959%_
                       _%hd219833219962%_
                       _%tl219834219964%_
                       _%e219835219967%_
                       _%hd219836219970%_
                       _%tl219837219972%_
                       _%__splice220313220314%_
                       _%target219861219895%_
                       _%tl219863219897%_)
                      (let () (declare (not safe)) (_%g219828219874%_)))))
              (let () (declare (not safe)) (_%g219828219874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl219837219972%_))
                                                  (let ((_%__splice220313220314%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl219837219972%_
                                                            '0))))
                                                    (let ((_%tl219863219897%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220313220314%_
                                                              '1)))
                                                          (_%target219861219895%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220313220314%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219863219897%_))
                                                          (_%__match220372220373%_
                                                           _%e219832219959%_
                                                           _%hd219833219962%_
                                                           _%tl219834219964%_
                                                           _%e219835219967%_
                                                           _%hd219836219970%_
                                                           _%tl219837219972%_
                                                           _%__splice220313220314%_
                                                           _%target219861219895%_
                                                           _%tl219863219897%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g219828219874%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g219828219874%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl219837219972%_))
                                              (let ((_%__splice220313220314%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl219837219972%_
                                                        '0))))
                                                (let ((_%tl219863219897%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220313220314%_
                                                          '1)))
                                                      (_%target219861219895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220313220314%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl219863219897%_))
                                                      (_%__match220372220373%_
                                                       _%e219832219959%_
                                                       _%hd219833219962%_
                                                       _%tl219834219964%_
                                                       _%e219835219967%_
                                                       _%hd219836219970%_
                                                       _%tl219837219972%_
                                                       _%__splice220313220314%_
                                                       _%target219861219895%_
                                                       _%tl219863219897%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g219828219874%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g219828219874%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl219837219972%_))
                                      (let ((_%__splice220313220314%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl219837219972%_
                                                '0))))
                                        (let ((_%tl219863219897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220313220314%_
                                                  '1)))
                                              (_%target219861219895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220313220314%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl219863219897%_))
                                              (_%__match220372220373%_
                                               _%e219832219959%_
                                               _%hd219833219962%_
                                               _%tl219834219964%_
                                               _%e219835219967%_
                                               _%hd219836219970%_
                                               _%tl219837219972%_
                                               _%__splice220313220314%_
                                               _%target219861219895%_
                                               _%tl219863219897%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g219828219874%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g219828219874%_))))))
                          (let () (declare (not safe)) (_%g219828219874%_)))))
                  (let () (declare (not safe)) (_%g219828219874%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self219786%_ _%ctx219787%_ _%stx219788%_ _%args219789%_)
        (let ((_%self219792%_ _%self219786%_))
          (if (let ((__method220954
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self219792%_ 'check-arguments))))
                (if __method220954
                    (let ()
                      (declare (not safe))
                      (__method220954
                       _%self219792%_
                       _%ctx219787%_
                       _%stx219788%_
                       _%args219789%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self219792%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature219802%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self219792%_ '2 '#f '#f)))
                     (_%signature219804%_ _%signature219802%_)
                     (_%$e219814%_
                      (if _%signature219804%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature219804%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e219814%_
                    ((lambda (_%unchecked219817%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked219817%_))
                           (let ((__tmp220976
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked219817%_
                                                          '()))
                                              (map (lambda (_%g219818219820%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx219787%_
                                                        _%g219818219820%_)))
                                                   _%args219789%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp220976
                              _%stx219788%_
                              _%ctx219787%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx219787%_ _%stx219788%_))))
                     _%$e219814%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx219787%_ _%stx219788%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx219787%_ _%stx219788%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass220238 __method-table220239)
        (let ((__check-arguments220240
               (let ((__tmp220977
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
                 (__make-promise __tmp220977))))
          (lambda (_%self219786%_ _%ctx219787%_ _%stx219788%_ _%args219789%_)
            (let ((_%self219792%_ _%self219786%_))
              (if ((force __check-arguments220240)
                   _%self219792%_
                   _%ctx219787%_
                   _%stx219788%_
                   _%args219789%_)
                  (let* ((_%signature219802%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self219792%_
                             '2
                             '#f
                             '#f)))
                         (_%signature219804%_ _%signature219802%_)
                         (_%$e219814%_
                          (if _%signature219804%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature219804%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e219814%_
                        ((lambda (_%unchecked219817%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked219817%_))
                               (let ((__tmp220978
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked219817%_
                                                              '()))
                                                  (map (lambda (_%g219818219820%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx219787%_
                                                            _%g219818219820%_)))
                                                       _%args219789%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp220978
                                  _%stx219788%_
                                  _%ctx219787%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx219787%_
                                  _%stx219788%_))))
                         _%$e219814%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx219787%_ _%stx219788%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx219787%_ _%stx219788%_))))))))
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
      (lambda (_%self219539%_ _%ctx219540%_ _%stx219541%_ _%args219542%_)
        (let* ((_%self219545%_ _%self219539%_)
               (_%signature219554219556%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self219545%_ '2 '#f '#f))))
          (if _%signature219554219556%_
              (let* ((_%signature219558%_ _%signature219554219556%_)
                     (_%argument-types219559219561%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature219558%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types219559219561%_
                    (let* ((_%argument-types219563%_
                            _%argument-types219559219561%_)
                           (_%argument-types219568%_
                            (let ((__tmp220979
                                   (lambda (_%t219566%_)
                                     (if _%t219566%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219541%_
                                            _%t219566%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp220979
                               _%argument-types219563%_))))
                      (let _%loop219570%_ ((_%rest-args219572%_ _%args219542%_)
                                           (_%rest-types219573%_
                                            _%argument-types219568%_)
                                           (_%result219574%_ '#t))
                        (let* ((_%rest-args219575219583%_ _%rest-args219572%_)
                               (_%else219577219591%_
                                (lambda () _%result219574%_))
                               (_%K219579219652%_
                                (lambda (_%rest-args219594%_ _%arg219595%_)
                                  (let* ((_%rest-types219596219607%_
                                          _%rest-types219573%_)
                                         (_%E219600219611%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types219596219607%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K219603219640%_
                                           (lambda (_%rest-types219637%_
                                                    _%type219638%_)
                                             (_%loop219570%_
                                              _%rest-args219594%_
                                              _%rest-types219637%_
                                              (if (gxc#check-expression-type!
                                                   _%stx219541%_
                                                   _%arg219595%_
                                                   _%type219638%_)
                                                  _%result219574%_
                                                  '#f))))
                                          (_%K219602219631%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx219541%_
                                                _%argument-types219568%_))))
                                          (_%K219601219621%_
                                           (lambda (_%tail-type219615%_)
                                             (if (let ((__tmp220980
                                                        (lambda (_%g219616219618%_)
                                                          (gxc#check-expression-type!
                                                           _%stx219541%_
                                                           _%g219616219618%_
                                                           _%tail-type219615%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp220980
                                                    _%rest-args219594%_))
                                                 _%result219574%_
                                                 '#f))))
                                      (let ((_%try-match219598219634%_
                                             (lambda ()
                                               (if (null? _%rest-types219596219607%_)
                                                   (_%K219602219631%_)
                                                   (let ((_%tail-type219624%_
                                                          _%rest-types219596219607%_))
                                                     (_%K219601219621%_
                                                      _%tail-type219624%_))))))
                                        (if (pair? _%rest-types219596219607%_)
                                            (let ((_%tl219605219645%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types219596219607%_)))
                                                  (_%hd219604219643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types219596219607%_))))
                                              (let ((_%type219648%_
                                                     _%hd219604219643%_)
                                                    (_%rest-types219650%_
                                                     _%tl219605219645%_))
                                                (_%K219603219640%_
                                                 _%rest-types219650%_
                                                 _%type219648%_)))
                                            (_%try-match219598219634%_))))))))
                          (if (pair? _%rest-args219575219583%_)
                              (let ((_%hd219580219655%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args219575219583%_)))
                                    (_%tl219581219657%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args219575219583%_))))
                                (let* ((_%arg219660%_ _%hd219580219655%_)
                                       (_%rest-args219662%_
                                        _%tl219581219657%_))
                                  (_%K219579219652%_
                                   _%rest-args219662%_
                                   _%arg219660%_)))
                              (_%else219577219591%_)))))
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
      (lambda (_%self219350%_ _%ctx219351%_ _%stx219352%_ _%args219353%_)
        (let* ((_%self219356%_ _%self219350%_)
               (_%g219366219376%_
                (lambda (_%g219367219373%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219367219373%_))))
               (_%g219365219414%_
                (lambda (_%g219367219379%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219367219379%_))
                      (let ((_%e219369219381%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219367219379%_))))
                        (let ((_%hd219370219384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219369219381%_)))
                              (_%tl219371219386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219369219381%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219371219386%_))
                              ((lambda (_%g219368219389%_)
                                 (let* ((_%klass219401%_
                                         (let ((__tmp220981
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self219356%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219352%_
                                            __tmp220981)))
                                        (_%object219403%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx219351%_
                                            _%g219368219389%_)))
                                        (_%instance?219408%_
                                         (let ((_%$e219405%_
                                                (gxc#expression-type?
                                                 _%object219403%_
                                                 _%klass219401%_)))
                                           (if _%$e219405%_
                                               _%$e219405%_
                                               (gxc#expression-type?
                                                _%g219368219389%_
                                                _%klass219401%_)))))
                                   (if _%instance?219408%_
                                       (let ((__tmp220982
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object219403%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g219368219389%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object219403%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220982
                                          _%stx219352%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx219351%_
                                          _%stx219352%_)))))
                               _%hd219370219384%_)
                              (_%g219366219376%_ _%g219367219379%_))))
                      (_%g219366219376%_ _%g219367219379%_)))))
          (_%g219365219414%_ _%args219353%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self219146%_ _%ctx219147%_ _%stx219148%_ _%args219149%_)
        (let* ((_%self219152%_ _%self219146%_)
               (_%g219162219172%_
                (lambda (_%g219163219169%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219163219169%_))))
               (_%g219161219225%_
                (lambda (_%g219163219175%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219163219175%_))
                      (let ((_%e219165219177%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219163219175%_))))
                        (let ((_%hd219166219180%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219165219177%_)))
                              (_%tl219167219182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219165219177%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219167219182%_))
                              ((lambda (_%g219164219185%_)
                                 (let* ((_%klass219197%_
                                         (let ((__tmp220983
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self219152%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219148%_
                                            __tmp220983)))
                                        (_%object219199%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx219147%_
                                            _%g219164219185%_)))
                                        (_%instance?219204%_
                                         (let ((_%$e219201%_
                                                (gxc#expression-type?
                                                 _%object219199%_
                                                 _%klass219197%_)))
                                           (if _%$e219201%_
                                               _%$e219201%_
                                               (gxc#expression-type?
                                                _%g219164219185%_
                                                _%klass219197%_))))
                                        (_%klass219207%_ _%klass219197%_))
                                   (if _%instance?219204%_
                                       (let ((__tmp220984
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object219199%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g219164219185%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object219199%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220984
                                          _%stx219148%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass219207%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp220985
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass219207%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object219199%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp220985
                                              _%stx219148%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass219207%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp220986
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass219207%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object219199%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220986
                                                  _%stx219148%_))
                                               (let ((__tmp220987
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self219152%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object219199%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220987
                                                  _%stx219148%_)))))))
                               _%hd219166219180%_)
                              (_%g219162219172%_ _%g219163219175%_))))
                      (_%g219162219172%_ _%g219163219175%_)))))
          (_%g219161219225%_ _%args219149%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx218814%_)
        (let* ((_%__stx220382220383%_ _%stx218814%_)
               (_%g218819218860%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220382220383%_)))))
          (let ((_%__kont220384220385%_ (lambda () '#t))
                (_%__kont220386220387%_ (lambda () '#t))
                (_%__kont220388220389%_
                 (lambda (_%g218833218926%_ _%g218834218927%_)
                   (let ((_%rator-type218948218950%_
                          (let ((__tmp220988
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g218834218927%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp220988))))
                     (if _%rator-type218948218950%_
                         (let* ((_%rator-type218952%_
                                 _%rator-type218948218950%_)
                                (_%rator-signature218953218955%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type218952%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type218952%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature218953218955%_
                               (let* ((_%rator-signature218957%_
                                       _%rator-signature218953218955%_)
                                      (_%rator-effect218958218960%_
                                       (if _%rator-signature218957%_
                                           (##direct-structure-ref
                                            _%rator-signature218957%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect218958218960%_
                                     (let ((_%rator-effect218962%_
                                            _%rator-effect218958218960%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect218962%_)
                                               (equal? '(alloc)
                                                       _%rator-effect218962%_))
                                           (let ((__tmp220989
                                                  (let ((__tmp220990
                                                         (lambda (_%g218967218970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g218968218972%_)
                   (cons _%g218967218970%_ _%g218968218972%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp220990
                                                     '()
                                                     _%g218833218926%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp220989))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont220392220393%_ (lambda () '#f)))
            (let ((_%__match220471220472%_
                   (lambda (_%e218835218872%_
                            _%hd218836218875%_
                            _%tl218837218877%_
                            _%e218838218880%_
                            _%hd218839218883%_
                            _%tl218840218885%_
                            _%e218841218888%_
                            _%hd218842218891%_
                            _%tl218843218893%_
                            _%e218844218896%_
                            _%hd218845218899%_
                            _%tl218846218901%_
                            _%__splice220390220391%_
                            _%target218847218904%_
                            _%tl218849218906%_)
                     (letrec ((_%loop218850218909%_
                               (lambda (_%hd218848218912%_
                                        _%rand218854218914%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd218848218912%_))
                                     (let ((_%e218851218916%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd218848218912%_))))
                                       (let ((_%lp-tl218853218921%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e218851218916%_)))
                                             (_%lp-hd218852218919%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e218851218916%_))))
                                         (_%loop218850218909%_
                                          _%lp-tl218853218921%_
                                          (cons _%lp-hd218852218919%_
                                                _%rand218854218914%_))))
                                     (let ((_%rand218855218924%_
                                            (reverse _%rand218854218914%_)))
                                       (_%__kont220388220389%_
                                        _%rand218855218924%_
                                        _%hd218845218899%_))))))
                       (_%loop218850218909%_ _%target218847218904%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220382220383%_))
                  (let ((_%e218821219003%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220382220383%_))))
                    (let ((_%tl218823219008%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218821219003%_)))
                          (_%hd218822219006%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218821219003%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd218822219006%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd218822219006%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218823219008%_))
                                  (let ((_%e218824219011%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218823219008%_))))
                                    (let ((_%tl218826219016%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218824219011%_)))
                                          (_%hd218825219014%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218824219011%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl218826219016%_))
                                          (_%__kont220384220385%_)
                                          (_%__kont220392220393%_))))
                                  (_%__kont220392220393%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd218822219006%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218823219008%_))
                                      (let ((_%e218830218988%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl218823219008%_))))
                                        (let ((_%tl218832218993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218830218988%_)))
                                              (_%hd218831218991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218830218988%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218832218993%_))
                                              (_%__kont220386220387%_)
                                              (_%__kont220392220393%_))))
                                      (_%__kont220392220393%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd218822219006%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl218823219008%_))
                                          (let ((_%e218838218880%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl218823219008%_))))
                                            (let ((_%tl218840218885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e218838218880%_)))
                                                  (_%hd218839218883%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e218838218880%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd218839218883%_))
                                                  (let ((_%e218841218888%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd218839218883%_))))
                                                    (let ((_%tl218843218893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e218841218888%_)))
                                                          (_%hd218842218891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e218841218888%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd218842218891%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd218842218891%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl218843218893%_))
                          (let ((_%e218844218896%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl218843218893%_))))
                            (let ((_%tl218846218901%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218844218896%_)))
                                  (_%hd218845218899%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218844218896%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218846218901%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl218840218885%_))
                                      (let ((_%__splice220390220391%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl218840218885%_
                                                '0))))
                                        (let ((_%tl218849218906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220390220391%_
                                                  '1)))
                                              (_%target218847218904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220390220391%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218849218906%_))
                                              (_%__match220471220472%_
                                               _%e218821219003%_
                                               _%hd218822219006%_
                                               _%tl218823219008%_
                                               _%e218838218880%_
                                               _%hd218839218883%_
                                               _%tl218840218885%_
                                               _%e218841218888%_
                                               _%hd218842218891%_
                                               _%tl218843218893%_
                                               _%e218844218896%_
                                               _%hd218845218899%_
                                               _%tl218846218901%_
                                               _%__splice220390220391%_
                                               _%target218847218904%_
                                               _%tl218849218906%_)
                                              (_%__kont220392220393%_))))
                                      (_%__kont220392220393%_))
                                  (_%__kont220392220393%_))))
                          (_%__kont220392220393%_))
                      (_%__kont220392220393%_))
                  (_%__kont220392220393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont220392220393%_))))
                                          (_%__kont220392220393%_))
                                      (_%__kont220392220393%_))))
                          (_%__kont220392220393%_))))
                  (_%__kont220392220393%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx218809%_ _%klass218810%_)
        (let ((_%expr-type218812%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx218809%_))))
          (if _%expr-type218812%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type218812%_ _%klass218810%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx218787%_ _%expr218788%_ _%type218789%_)
        (if (not _%type218789%_)
            '#f
            (let ((_%$e218792%_
                   (eq? (##structure-ref _%type218789%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e218792%_
                  _%$e218792%_
                  (let ((_%expr-type218796%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr218788%_))))
                    (if (not _%expr-type218796%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type218796%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e218800%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type218796%_
                                      'gxc#!abort::t))))
                              (if _%$e218800%_
                                  _%$e218800%_
                                  (let ((_%$e218803%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type218796%_
                                            _%type218789%_))))
                                    (if _%$e218803%_
                                        _%$e218803%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type218789%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type218789%_
                                                   _%expr-type218796%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx218787%_
                                                   _%expr218788%_
                                                   _%expr-type218796%_
                                                   _%type218789%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self218601%_ _%ctx218602%_ _%stx218603%_ _%args218604%_)
        (let* ((_%self218607%_ _%self218601%_)
               (_%klass218617%_
                (let ((__tmp220991
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self218607%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx218603%_ __tmp220991)))
               (_%fields218619%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass218617%_
                           '5
                           '#f
                           '#f))))
               (_%args218625%_
                (map (lambda (_%g218620218622%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx218602%_ _%g218620218622%_)))
                     _%args218604%_))
               (_%inline-make-object218627%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self218607%_
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
                           _%self218607%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields218619%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass218630%_ _%klass218617%_)
               (_%$e218644%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass218630%_ '6 '#f '#f))))
          (if _%$e218644%_
              ((lambda (_%ctor218647%_)
                 (let ((_%$obj218649%_
                        (let ((__tmp220992
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp220992)))
                       (_%ctor-impl218650%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass218630%_
                           _%ctor218647%_))))
                   (let ((__tmp220993
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj218649%_ '())
                                                  (cons _%inline-make-object218627%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl218650%_
                                                            (let ((__tmp220994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl218650%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj218649%_ '()))
                                             _%args218625%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp220994
                       _%stx218603%_
                       _%ctx218602%_))
                    (let ((_%$ctor218652%_
                           (let ((__tmp220995
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp220995))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor218652%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218607%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj218649%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor218647%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor218652%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor218652%_ '()))
                              (cons (cons '%#ref (cons _%$obj218649%_ '()))
                                    _%args218625%_)))
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
                             _%self218607%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor218647%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj218649%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp220993 _%stx218603%_))))
               _%$e218644%_)
              (let ((_%$e218654%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass218630%_
                        '10
                        '#f
                        '#f))))
                (if _%$e218654%_
                    ((lambda (_%metaclass218657%_)
                       (let* ((_%$obj218659%_
                               (let ((__tmp220996
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp220996)))
                              (_%metakons218661%_
                               (let ((__tmp220997
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx218603%_
                                         _%metaclass218657%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp220997
                                  'instance-init!)))
                              (__tmp220998
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj218659%_
                                                             '())
                                                       (cons _%inline-make-object218627%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons218661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp220999
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons218661%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self218607%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj218659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args218625%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp220999
                            _%stx218603%_
                            _%ctx218602%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self218607%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj218659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args218625%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj218659%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp220998 _%stx218603%_)))
                     _%$e218654%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass218630%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp221000
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args218625%_))))
                              (declare (not safe))
                              (##fx= __tmp221000 _%fields218619%_))
                            (let ((__tmp221001
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self218607%_
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
                                              _%self218607%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args218625%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp221001
                               _%stx218603%_))
                            (let ((__tmp221003
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self218607%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp221002
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass218630%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx218603%_
                               __tmp221003
                               __tmp221002)))
                        (let ((_%$obj218666%_
                               (let ((__tmp221004
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp221004))))
                          (let _%lp218668%_ ((_%rest218670%_ _%args218625%_)
                                             (_%initializers218671%_ '()))
                            (let* ((_%__stx220474220475%_ _%rest218670%_)
                                   (_%g218675218696%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx220474220475%_)))))
                              (let ((_%__kont220476220477%_
                                     (lambda (_%g218677218750%_
                                              _%g218678218751%_
                                              _%g218679218752%_)
                                       (let* ((_%slot218779%_
                                               (let ((__tmp221005
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g218679218752%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp221005)))
                                              (_%off218781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass218630%_
                                                  _%slot218779%_))))
                                         (if _%off218781%_
                                             (_%lp218668%_
                                              _%g218677218750%_
                                              (cons (cons _%off218781%_
                                                          _%g218678218751%_)
                                                    _%initializers218671%_))
                                             (let ((__tmp221006
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218607%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx218603%_
                                                __tmp221006
                                                _%slot218779%_))))))
                                    (_%__kont220478220479%_
                                     (lambda ()
                                       (let ((__tmp221007
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj218666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object218627%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp221010
                                     (cons (cons '%#ref
                                                 (cons _%$obj218666%_ '()))
                                           '()))
                                    (__tmp221008
                                     (let ((__tmp221009
                                            (lambda (_%i218710%_ _%r218711%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self218607%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i218710%_) '()))
                              (cons (cons '%#ref (cons _%$obj218666%_ '()))
                                    (cons (cdr _%i218710%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r218711%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp221009
                                        '()
                                        _%initializers218671%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp221010 __tmp221008)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221007
                                          _%stx218603%_))))
                                    (_%__kont220480220481%_
                                     (lambda ()
                                       (let ((__tmp221011
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj218666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object218627%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args218625%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj218666%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221011
                                          _%stx218603%_)))))
                                (let* ((_%g218673218713%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx220474220475%_))
                                              (_%__kont220478220479%_)
                                              (_%__kont220480220481%_))))
                                       (_%__match220511220512%_
                                        (lambda (_%e218680218718%_
                                                 _%hd218681218721%_
                                                 _%tl218682218723%_
                                                 _%e218683218726%_
                                                 _%hd218684218729%_
                                                 _%tl218685218731%_
                                                 _%e218686218734%_
                                                 _%hd218687218737%_
                                                 _%tl218688218739%_
                                                 _%e218689218742%_
                                                 _%hd218690218745%_
                                                 _%tl218691218747%_)
                                          (let ((_%g218677218750%_
                                                 _%tl218691218747%_)
                                                (_%g218678218751%_
                                                 _%hd218690218745%_)
                                                (_%g218679218752%_
                                                 _%hd218687218737%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g218679218752%_))
                                                (_%__kont220476220477%_
                                                 _%g218677218750%_
                                                 _%g218678218751%_
                                                 _%g218679218752%_)
                                                (_%__kont220480220481%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx220474220475%_))
                                      (let ((_%e218680218718%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx220474220475%_))))
                                        (let ((_%tl218682218723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218680218718%_)))
                                              (_%hd218681218721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218680218718%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd218681218721%_))
                                              (let ((_%e218683218726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd218681218721%_))))
                                                (let ((_%tl218685218731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e218683218726%_)))
                                                      (_%hd218684218729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e218683218726%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd218684218729%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd218684218729%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl218685218731%_))
                      (let ((_%e218686218734%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl218685218731%_))))
                        (let ((_%tl218688218739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218686218734%_)))
                              (_%hd218687218737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218686218734%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218688218739%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218682218723%_))
                                  (let ((_%e218689218742%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218682218723%_))))
                                    (let ((_%tl218691218747%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218689218742%_)))
                                          (_%hd218690218745%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218689218742%_))))
                                      (_%__match220511220512%_
                                       _%e218680218718%_
                                       _%hd218681218721%_
                                       _%tl218682218723%_
                                       _%e218683218726%_
                                       _%hd218684218729%_
                                       _%tl218685218731%_
                                       _%e218686218734%_
                                       _%hd218687218737%_
                                       _%tl218688218739%_
                                       _%e218689218742%_
                                       _%hd218690218745%_
                                       _%tl218691218747%_)))
                                  (_%__kont220480220481%_))
                              (_%__kont220480220481%_))))
                      (_%__kont220480220481%_))
                  (_%__kont220480220481%_))
              (_%__kont220480220481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont220480220481%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g218673218713%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self218384%_ _%ctx218385%_ _%stx218386%_ _%args218387%_)
        (let* ((_%self218390%_ _%self218384%_)
               (_%arguments-ok?218400%_
                (let ((__method220955
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self218390%_ 'check-arguments))))
                  (if __method220955
                      (let ()
                        (declare (not safe))
                        (__method220955
                         _%self218390%_
                         _%ctx218385%_
                         _%stx218386%_
                         _%args218387%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self218390%_
                                 'check-arguments))
                        '#!void))))
               (_%g218402218412%_
                (lambda (_%g218403218409%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218403218409%_))))
               (_%g218401218476%_
                (lambda (_%g218403218415%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218403218415%_))
                      (let ((_%e218405218417%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g218403218415%_))))
                        (let ((_%hd218406218420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218405218417%_)))
                              (_%tl218407218422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218405218417%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218407218422%_))
                              ((lambda (_%g218404218425%_)
                                 (let* ((_%klass218438%_
                                         (let ((__tmp221012
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218390%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx218386%_
                                            __tmp221012)))
                                        (_%field218440%_
                                         (let ((__tmp221013
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218390%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass218438%_
                                            __tmp221013)))
                                        (_%object218442%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx218385%_
                                            _%g218404218425%_)))
                                        (_%klass218445%_ _%klass218438%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass218445%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp221014
                                              (cons (if (or _%arguments-ok?218400%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218390%_
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
                                 _%self218390%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field218440%_ '()))
                        (cons _%object218442%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221014
                                          _%stx218386%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass218445%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp221015
                                                  (cons (if (or _%arguments-ok?218400%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218390%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218390%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field218440%_ '()))
                            (cons _%object218442%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221015
                                              _%stx218386%_))
                                           (let ((_%$e218464%_
                                                  (let ((__tmp221016
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self218390%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass218445%_
                                                     __tmp221016))))
                                             (if _%$e218464%_
                                                 ((lambda (_%klass218467%_)
                                                    (let ((__tmp221017
                                                           (cons (if (or _%arguments-ok?218400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218390%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self218390%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field218440%_ '()))
                                     (cons _%object218442%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp221017 _%stx218386%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e218464%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self218390%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp221018
                                                            (let ((_%$obj218473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp221019
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp221019))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj218473%_ '())
                                              (cons _%object218442%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass218445%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj218473%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218390%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218440%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj218473%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?218400%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj218473%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self218390%_
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
                                                             _%self218390%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj218473%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self218390%_
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
               (gxc#xform-wrap-source __tmp221018 _%stx218386%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp221020
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object218442%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218390%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp221020 _%stx218386%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd218406218420%_)
                              (_%g218402218412%_ _%g218403218415%_))))
                      (_%g218402218412%_ _%g218403218415%_)))))
          (_%g218401218476%_ _%args218387%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass220242 __method-table220243)
        (let ((__check-arguments220244
               (let ((__tmp221021
                      (lambda ()
                        (let ((__method220245
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220243
                                  'check-arguments
                                  '#f))))
                          (if __method220245
                              __method220245
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp221021)))
              (__slot220246
               (let ((__slot220247
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass220242 'slot))))
                 (if __slot220247
                     __slot220247
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self218384%_ _%ctx218385%_ _%stx218386%_ _%args218387%_)
            (let* ((_%self218390%_ _%self218384%_)
                   (_%arguments-ok?218400%_
                    ((force __check-arguments220244)
                     _%self218390%_
                     _%ctx218385%_
                     _%stx218386%_
                     _%args218387%_))
                   (_%g218402218412%_
                    (lambda (_%g218403218409%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g218403218409%_))))
                   (_%g218401218476%_
                    (lambda (_%g218403218415%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g218403218415%_))
                          (let ((_%e218405218417%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g218403218415%_))))
                            (let ((_%hd218406218420%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218405218417%_)))
                                  (_%tl218407218422%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218405218417%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218407218422%_))
                                  ((lambda (_%g218404218425%_)
                                     (let* ((_%klass218438%_
                                             (let ((__tmp221022
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218390%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx218386%_
                                                __tmp221022)))
                                            (_%field218440%_
                                             (let ((__tmp221023
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218390%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass218438%_
                                                __tmp221023)))
                                            (_%object218442%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx218385%_
                                                _%g218404218425%_)))
                                            (_%klass218445%_ _%klass218438%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass218445%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp221024
                                                  (cons (if (or _%arguments-ok?218400%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218390%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218390%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field218440%_ '()))
                            (cons _%object218442%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221024
                                              _%stx218386%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass218445%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp221025
                                                      (cons (if (or _%arguments-ok?218400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self218390%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218390%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field218440%_ '()))
                                (cons _%object218442%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp221025
                                                  _%stx218386%_))
                                               (let ((_%$e218464%_
                                                      (let ((__tmp221026
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self218390%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass218445%_ __tmp221026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e218464%_
                                                     ((lambda (_%klass218467%_)
                                                        (let ((__tmp221027
                                                               (cons (if (or _%arguments-ok?218400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218390%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self218390%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field218440%_ '()))
                                         (cons _%object218442%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp221027 _%stx218386%_)))
              _%$e218464%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self218390%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp221028
                                                                (let ((_%$obj218473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp221029
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp221029))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj218473%_ '())
                                                  (cons _%object218442%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass218445%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj218473%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218390%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field218440%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj218473%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?218400%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj218473%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self218390%_
                               __slot220246
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
                        (##unchecked-structure-ref _%self218390%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj218473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218390%_
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
                   (gxc#xform-wrap-source __tmp221028 _%stx218386%_))
                 (let ((__tmp221030
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object218442%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218390%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp221030 _%stx218386%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd218406218420%_)
                                  (_%g218402218412%_ _%g218403218415%_))))
                          (_%g218402218412%_ _%g218403218415%_)))))
              (_%g218401218476%_ _%args218387%_))))))
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
      (lambda (_%self218148%_ _%ctx218149%_ _%stx218150%_ _%args218151%_)
        (let* ((_%self218154%_ _%self218148%_)
               (_%arguments-ok?218164%_
                (let ((__method220956
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self218154%_ 'check-arguments))))
                  (if __method220956
                      (let ()
                        (declare (not safe))
                        (__method220956
                         _%self218154%_
                         _%ctx218149%_
                         _%stx218150%_
                         _%args218151%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self218154%_
                                 'check-arguments))
                        '#!void))))
               (_%g218166218180%_
                (lambda (_%g218167218177%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218167218177%_))))
               (_%g218165218259%_
                (lambda (_%g218167218183%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218167218183%_))
                      (let ((_%e218170218185%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g218167218183%_))))
                        (let ((_%hd218171218188%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218170218185%_)))
                              (_%tl218172218190%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218170218185%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218172218190%_))
                              (let ((_%e218173218193%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl218172218190%_))))
                                (let ((_%hd218174218196%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218173218193%_)))
                                      (_%tl218175218198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218173218193%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl218175218198%_))
                                      ((lambda (_%g218168218201%_
                                                _%g218169218202%_)
                                         (let* ((_%klass218218%_
                                                 (let ((__tmp221031
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218154%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx218150%_
                                                    __tmp221031)))
                                                (_%field218220%_
                                                 (let ((__tmp221032
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218154%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass218218%_
                                                    __tmp221032)))
                                                (_%object218222%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx218149%_
                                                    _%g218169218202%_)))
                                                (_%value218224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx218149%_
                                                    _%g218168218201%_)))
                                                (_%klass218227%_
                                                 _%klass218218%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass218227%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp221033
                                                      (cons (if (or _%arguments-ok?218164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self218154%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218154%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field218220%_ '()))
                                (cons _%object218222%_
                                      (cons _%value218224%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp221033
                                                  _%stx218150%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass218227%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp221034
                                                          (cons (if (or _%arguments-ok?218164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self218154%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218154%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218220%_ '()))
                                    (cons _%object218222%_
                                          (cons _%value218224%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp221034
                                                      _%stx218150%_))
                                                   (let ((_%$e218247%_
                                                          (let ((__tmp221035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218154%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass218227%_
                     __tmp221035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e218247%_
                                                         ((lambda (_%klass218250%_)
                                                            (let ((__tmp221036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?218164%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218154%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self218154%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field218220%_ '()))
                                             (cons _%object218222%_
                                                   (cons _%value218224%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221036 _%stx218150%_)))
                  _%$e218247%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self218154%_ '4 '#f '#f))
                     (let ((__tmp221037
                            (let ((_%$obj218256%_
                                   (let ((__tmp221038
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp221038))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj218256%_ '())
                                                      (cons _%object218222%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass218227%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj218256%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self218154%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field218220%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj218256%_
                                                              '()))
                                                  (cons _%value218224%_
                                                        '())))))
                          (cons (if _%arguments-ok?218164%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self218154%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value218224%_ '())))))
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
                             _%self218154%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj218256%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218154%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value218224%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp221037 _%stx218150%_))
                     (let ((__tmp221039
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object218222%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self218154%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value218224%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp221039
                        _%stx218150%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd218174218196%_
                                       _%hd218171218188%_)
                                      (_%g218166218180%_ _%g218167218183%_))))
                              (_%g218166218180%_ _%g218167218183%_))))
                      (_%g218166218180%_ _%g218167218183%_)))))
          (_%g218165218259%_ _%args218151%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass220248 __method-table220249)
        (let ((__check-arguments220250
               (let ((__tmp221040
                      (lambda ()
                        (let ((__method220251
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220249
                                  'check-arguments
                                  '#f))))
                          (if __method220251
                              __method220251
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp221040))))
          (lambda (_%self218148%_ _%ctx218149%_ _%stx218150%_ _%args218151%_)
            (let* ((_%self218154%_ _%self218148%_)
                   (_%arguments-ok?218164%_
                    ((force __check-arguments220250)
                     _%self218154%_
                     _%ctx218149%_
                     _%stx218150%_
                     _%args218151%_))
                   (_%g218166218180%_
                    (lambda (_%g218167218177%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g218167218177%_))))
                   (_%g218165218259%_
                    (lambda (_%g218167218183%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g218167218183%_))
                          (let ((_%e218170218185%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g218167218183%_))))
                            (let ((_%hd218171218188%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218170218185%_)))
                                  (_%tl218172218190%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218170218185%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218172218190%_))
                                  (let ((_%e218173218193%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218172218190%_))))
                                    (let ((_%hd218174218196%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218173218193%_)))
                                          (_%tl218175218198%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218173218193%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl218175218198%_))
                                          ((lambda (_%g218168218201%_
                                                    _%g218169218202%_)
                                             (let* ((_%klass218218%_
                                                     (let ((__tmp221041
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218154%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx218150%_
                                                        __tmp221041)))
                                                    (_%field218220%_
                                                     (let ((__tmp221042
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218154%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass218218%_
                                                        __tmp221042)))
                                                    (_%object218222%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx218149%_
                                                        _%g218169218202%_)))
                                                    (_%value218224%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx218149%_
                                                        _%g218168218201%_)))
                                                    (_%klass218227%_
                                                     _%klass218218%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass218227%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp221043
                                                          (cons (if (or _%arguments-ok?218164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self218154%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218154%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218220%_ '()))
                                    (cons _%object218222%_
                                          (cons _%value218224%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp221043
                                                      _%stx218150%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass218227%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp221044
                                                              (cons (if (or _%arguments-ok?218164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self218154%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218154%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field218220%_ '()))
                                        (cons _%object218222%_
                                              (cons _%value218224%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp221044 _%stx218150%_))
               (let ((_%$e218247%_
                      (let ((__tmp221045
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218154%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass218227%_
                         __tmp221045))))
                 (if _%$e218247%_
                     ((lambda (_%klass218250%_)
                        (let ((__tmp221046
                               (cons (if (or _%arguments-ok?218164%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self218154%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self218154%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field218220%_
                                                             '()))
                                                 (cons _%object218222%_
                                                       (cons _%value218224%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp221046 _%stx218150%_)))
                      _%$e218247%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218154%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp221047
                                (let ((_%$obj218256%_
                                       (let ((__tmp221048
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp221048))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj218256%_
                                                                '())
                                                          (cons _%object218222%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass218227%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj218256%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self218154%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field218220%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value218224%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?218164%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj218256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self218154%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value218224%_ '())))))
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
                                 _%self218154%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj218256%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218154%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value218224%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp221047 _%stx218150%_))
                         (let ((__tmp221049
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object218222%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self218154%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value218224%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp221049
                            _%stx218150%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd218174218196%_
                                           _%hd218171218188%_)
                                          (_%g218166218180%_
                                           _%g218167218183%_))))
                                  (_%g218166218180%_ _%g218167218183%_))))
                          (_%g218166218180%_ _%g218167218183%_)))))
              (_%g218165218259%_ _%args218151%_))))))
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
      (lambda (_%self217964%_ _%ctx217965%_ _%stx217966%_ _%args217967%_)
        (let* ((_%self217970%_ _%self217964%_)
               (_%self217979217989%_ _%self217970%_)
               (_%E217981217992%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self217979217989%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K217982218002%_
                (lambda (_%inline217995%_ _%dispatch217996%_ _%arity217997%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self217970%_
                         _%args217967%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx217966%_
                         _%arity217997%_)))
                  (if _%inline217995%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp221050 (_%inline217995%_ _%stx217966%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp221050
                           _%stx217966%_
                           _%ctx217965%_)))
                      (if (and _%dispatch217996%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch217996%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch217996%_))
                            (let ((__tmp221051
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch217996%_
                                                           '()))
                                               _%args217967%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp221051
                               _%stx217966%_
                               _%ctx217965%_)))
                          (gxc#!procedure::optimize-call
                           _%self217970%_
                           _%ctx217965%_
                           _%stx217966%_
                           _%args217967%_)))))
               (_%e217983218005%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217979217989%_ '1 '#f '#f)))
               (_%e217984218008%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217979217989%_ '2 '#f '#f)))
               (_%e217985218011%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217979217989%_ '3 '#f '#f)))
               (_%arity218014%_ _%e217985218011%_)
               (_%e217986218016%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217979217989%_ '4 '#f '#f)))
               (_%dispatch218019%_ _%e217986218016%_)
               (_%e217987218021%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217979217989%_ '5 '#f '#f)))
               (_%inline218024%_ _%e217987218021%_))
          (_%K217982218002%_
           _%inline218024%_
           _%dispatch218019%_
           _%arity218014%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self217816%_ _%ctx217817%_ _%stx217818%_ _%args217819%_)
        (let* ((_%self217822%_ _%self217816%_)
               (_%$e217836%_
                (let ((__tmp221053
                       (lambda (_%g217831217833%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g217831217833%_
                            _%args217819%_))))
                      (__tmp221052
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self217822%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp221053 __tmp221052))))
          (if _%$e217836%_
              ((lambda (_%clause217839%_)
                 (let ((__method220957
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause217839%_ 'optimize-call))))
                   (if __method220957
                       (let ()
                         (declare (not safe))
                         (__method220957
                          _%clause217839%_
                          _%ctx217817%_
                          _%stx217818%_
                          _%args217819%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause217839%_
                                  'optimize-call))
                         '#!void))))
               _%$e217836%_)
              (let ((__tmp221054
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self217822%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx217818%_
                 __tmp221054))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self217557%_ _%ctx217558%_ _%stx217559%_ _%args217560%_)
        (let* ((_%self217563%_ _%self217557%_)
               (_%self217572217581%_ _%self217563%_)
               (_%E217574217584%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self217572217581%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K217575217675%_
                (lambda (_%dispatch217587%_ _%table217588%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch217587%_))
                      (let* ((_%g217589217599%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch217587%_)))
                             (_%else217591217607%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch217587%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx217558%_
                                   _%stx217559%_))))
                             (_%K217593217656%_
                              (lambda (_%main217610%_ _%keys217611%_)
                                (let ((_g221055_
                                       (gxc#!kw-lambda-split-args
                                        _%stx217559%_
                                        _%args217560%_)))
                                  (begin
                                    (let ((_g221056_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g221055_)
                                                 (##values-length _g221055_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g221056_ 2)))
                                          (error "Context expects 2 values"
                                                 _g221056_)))
                                    (let ((_%pargs217613%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g221055_ 0)))
                                          (_%kwargs217614%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g221055_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main217610%_))
                                        (if _%table217588%_
                                            (let ((_%xargs217622%_
                                                   (map (lambda (_%key217616%_)
                                                          (let ((_%$e217618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key217616%_ _%kwargs217614%_))))
                    (if _%$e217618%_ _%$e217618%_ '(%#ref absent-value))))
                _%keys217611%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw217624%_)
                                                 (if (memq (car _%kw217624%_)
                                                           _%keys217611%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx217559%_
                                                        _%keys217611%_
                                                        _%kw217624%_))))
                                               _%kwargs217614%_)
                                              (let ((__tmp221057
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main217610%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs217613%_
                                  _%xargs217622%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp221057
                                                 _%stx217559%_
                                                 _%ctx217558%_)))
                                            (let* ((_%kwt217626%_
                                                    (let ((__tmp221058
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp221058)))
                                                   (_%kwvars217630%_
                                                    (map (lambda (_%_217628%_)
                                                           (let ((__tmp221059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp221059)))
                 _%kwargs217614%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind217635%_
                                                    (map (lambda (_%kw217632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217633%_)
                   (cons (cons _%kwvar217633%_ '())
                         (cons (cdr _%kw217632%_) '())))
                 _%kwargs217614%_
                 _%kwvars217630%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset217640%_
                                                    (map (lambda (_%kw217637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217638%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt217626%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw217637%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar217638%_
                                                             '()))
                                                 '()))))))
                 _%kwargs217614%_
                 _%kwvars217630%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs217645%_
                                                    (map (lambda (_%kw217642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217643%_)
                   (cons (car _%kw217642%_)
                         (cons '%#ref (cons _%kwvar217643%_ '()))))
                 _%kwargs217614%_
                 _%kwvars217630%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs217653%_
                                                    (map (lambda (_%key217647%_)
                                                           (let ((_%$e217649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key217647%_ _%xkwargs217645%_))))
                     (if _%$e217649%_ _%$e217649%_ '(%#ref absent-value))))
                 _%keys217611%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp221060
                                                    (cons '%#let-values
                                                          (cons _%kwbind217635%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt217626%_ '())
                                                      (cons (let ((__tmp221061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs217614%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221061 _%stx217559%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp221062
                                                             (cons (let ((__tmp221063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main217610%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt217626%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs217613%_
                                                       _%xargs217653%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp221063 _%stx217559%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp221062 _%kwset217640%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp221060
                                               _%stx217559%_
                                               _%ctx217558%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g217589217599%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e217594217659%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217589217599%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e217595217662%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217589217599%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e217596217665%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217589217599%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys217668%_ _%e217596217665%_)
                                   (_%e217597217670%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217589217599%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main217673%_ _%e217597217670%_))
                              (_%K217593217656%_
                               _%main217673%_
                               _%keys217668%_))
                            (_%else217591217607%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx217558%_ _%stx217559%_)))))
               (_%e217576217678%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217572217581%_ '1 '#f '#f)))
               (_%e217577217681%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217572217581%_ '2 '#f '#f)))
               (_%e217578217684%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217572217581%_ '3 '#f '#f)))
               (_%table217687%_ _%e217578217684%_)
               (_%e217579217689%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217572217581%_ '4 '#f '#f)))
               (_%dispatch217692%_ _%e217579217689%_))
          (_%K217575217675%_ _%dispatch217692%_ _%table217687%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx217170%_ _%args217171%_)
        (let _%lp217173%_ ((_%rest217175%_ _%args217171%_)
                           (_%pargs217176%_ '())
                           (_%kwargs217177%_ '()))
          (let* ((_%__stx220516220517%_ _%rest217175%_)
                 (_%g217183217235%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx220516220517%_)))))
            (let ((_%__kont220518220519%_
                   (lambda (_%g217185217414%_ _%g217186217415%_)
                     (_%lp217173%_
                      _%g217185217414%_
                      (cons _%g217186217415%_ _%pargs217176%_)
                      _%kwargs217177%_)))
                  (_%__kont220520220521%_
                   (lambda (_%g217200217360%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1
                                cons
                                _%g217200217360%_
                                _%pargs217176%_))
                             (reverse _%kwargs217177%_))))
                  (_%__kont220522220523%_
                   (lambda (_%g217211217307%_
                            _%g217212217308%_
                            _%g217213217309%_)
                     (let ((_%kw217326%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g217213217309%_))))
                       (if (assq _%kw217326%_ _%kwargs217177%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx217170%_
                              _%kw217326%_))
                           (_%lp217173%_
                            _%g217211217307%_
                            _%pargs217176%_
                            (cons (cons _%kw217326%_ _%g217212217308%_)
                                  _%kwargs217177%_))))))
                  (_%__kont220524220525%_
                   (lambda (_%g217226217255%_ _%g217227217256%_)
                     (_%lp217173%_
                      _%g217226217255%_
                      (cons _%g217227217256%_ _%pargs217176%_)
                      _%kwargs217177%_)))
                  (_%__kont220526220527%_
                   (lambda ()
                     (values (reverse _%pargs217176%_)
                             (reverse _%kwargs217177%_)))))
              (let ((_%__match220623220624%_
                     (lambda (_%e217214217275%_
                              _%hd217215217278%_
                              _%tl217216217280%_
                              _%e217217217283%_
                              _%hd217218217286%_
                              _%tl217219217288%_
                              _%e217220217291%_
                              _%hd217221217294%_
                              _%tl217222217296%_
                              _%e217223217299%_
                              _%hd217224217302%_
                              _%tl217225217304%_)
                       (let ((_%g217211217307%_ _%tl217225217304%_)
                             (_%g217212217308%_ _%hd217224217302%_)
                             (_%g217213217309%_ _%hd217221217294%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g217213217309%_))
                             (_%__kont220522220523%_
                              _%g217211217307%_
                              _%g217212217308%_
                              _%g217213217309%_)
                             (_%__kont220524220525%_
                              _%tl217216217280%_
                              _%hd217215217278%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx220516220517%_))
                    (let ((_%e217187217379%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx220516220517%_))))
                      (let ((_%tl217189217384%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217187217379%_)))
                            (_%hd217188217382%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217187217379%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd217188217382%_))
                            (let ((_%e217190217387%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd217188217382%_))))
                              (let ((_%tl217192217392%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e217190217387%_)))
                                    (_%hd217191217390%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e217190217387%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd217191217390%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd217191217390%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217192217392%_))
                                            (let ((_%e217193217395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl217192217392%_))))
                                              (let ((_%tl217195217400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217193217395%_)))
                                                    (_%hd217194217398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217193217395%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd217194217398%_))
                                                    (let ((_%e217196217403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd217194217398%_))))
                                                      (if (equal? _%e217196217403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl217195217400%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl217189217384%_))
                          (let ((_%e217197217406%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl217189217384%_))))
                            (let ((_%tl217199217411%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217197217406%_)))
                                  (_%hd217198217409%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217197217406%_))))
                              (_%__kont220518220519%_
                               _%tl217199217411%_
                               _%hd217198217409%_)))
                          (_%__kont220524220525%_
                           _%tl217189217384%_
                           _%hd217188217382%_))
                      (_%__kont220524220525%_
                       _%tl217189217384%_
                       _%hd217188217382%_))
                  (if (equal? _%e217196217403%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217195217400%_))
                          (_%__kont220520220521%_ _%tl217189217384%_)
                          (_%__kont220524220525%_
                           _%tl217189217384%_
                           _%hd217188217382%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217195217400%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217189217384%_))
                              (let ((_%e217223217299%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl217189217384%_))))
                                (let ((_%tl217225217304%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217223217299%_)))
                                      (_%hd217224217302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217223217299%_))))
                                  (_%__match220623220624%_
                                   _%e217187217379%_
                                   _%hd217188217382%_
                                   _%tl217189217384%_
                                   _%e217190217387%_
                                   _%hd217191217390%_
                                   _%tl217192217392%_
                                   _%e217193217395%_
                                   _%hd217194217398%_
                                   _%tl217195217400%_
                                   _%e217223217299%_
                                   _%hd217224217302%_
                                   _%tl217225217304%_)))
                              (_%__kont220524220525%_
                               _%tl217189217384%_
                               _%hd217188217382%_))
                          (_%__kont220524220525%_
                           _%tl217189217384%_
                           _%hd217188217382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl217195217400%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl217189217384%_))
                                                            (let ((_%e217223217299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl217189217384%_))))
                      (let ((_%tl217225217304%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217223217299%_)))
                            (_%hd217224217302%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217223217299%_))))
                        (_%__match220623220624%_
                         _%e217187217379%_
                         _%hd217188217382%_
                         _%tl217189217384%_
                         _%e217190217387%_
                         _%hd217191217390%_
                         _%tl217192217392%_
                         _%e217193217395%_
                         _%hd217194217398%_
                         _%tl217195217400%_
                         _%e217223217299%_
                         _%hd217224217302%_
                         _%tl217225217304%_)))
                    (_%__kont220524220525%_
                     _%tl217189217384%_
                     _%hd217188217382%_))
                (_%__kont220524220525%_
                 _%tl217189217384%_
                 _%hd217188217382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont220524220525%_
                                             _%tl217189217384%_
                                             _%hd217188217382%_))
                                        (_%__kont220524220525%_
                                         _%tl217189217384%_
                                         _%hd217188217382%_))
                                    (_%__kont220524220525%_
                                     _%tl217189217384%_
                                     _%hd217188217382%_))))
                            (_%__kont220524220525%_
                             _%tl217189217384%_
                             _%hd217188217382%_))))
                    (_%__kont220526220527%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self217154%_ _%ctx217155%_ _%stx217156%_ _%args217157%_)
        (let ((_%self217160%_ _%self217154%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx217155%_ _%stx217156%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self216844%_ _%stx216845%_)
        (let* ((_%__stx220632220633%_ _%stx216845%_)
               (_%g216848216888%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220632220633%_)))))
          (let ((_%__kont220634220635%_
                 (lambda (_%g216850216992%_ _%g216851216993%_)
                   (let ((_%$e217020%_
                          (member 'return:
                                  (let ((__tmp221064
                                         (lambda (_%g217012217015%_
                                                  _%g217013217017%_)
                                           (cons _%g217012217015%_
                                                 _%g217013217017%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp221064
                                     '()
                                     _%g216851216993%_))
                                  gx#stx-eq?)))
                     (if _%$e217020%_
                         ((lambda (_%tail217023%_)
                            (let ((_%type217025%_
                                   (let ((__tmp221065
                                          (let ((__tmp221066
                                                 (cadr _%tail217023%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp221066))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx216845%_
                                      __tmp221065))))
                              (gxc#check-return-type!
                               _%stx216845%_
                               _%g216850216992%_
                               _%type217025%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self216844%_
                                 _%g216850216992%_))))
                          _%$e217020%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self216844%_
                            _%g216850216992%_))))))
                (_%__kont220638220639%_
                 (lambda (_%g216873216917%_ _%g216874216918%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self216844%_ _%g216873216917%_)))))
            (let ((_%__match220669220670%_
                   (lambda (_%e216852216938%_
                            _%hd216853216941%_
                            _%tl216854216943%_
                            _%e216855216946%_
                            _%hd216856216949%_
                            _%tl216857216951%_
                            _%e216858216954%_
                            _%hd216859216957%_
                            _%tl216860216959%_
                            _%__splice220636220637%_
                            _%target216861216962%_
                            _%tl216863216964%_)
                     (letrec ((_%loop216864216967%_
                               (lambda (_%hd216862216970%_
                                        _%signature216868216972%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd216862216970%_))
                                     (let ((_%e216865216974%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd216862216970%_))))
                                       (let ((_%lp-tl216867216979%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e216865216974%_)))
                                             (_%lp-hd216866216977%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e216865216974%_))))
                                         (_%loop216864216967%_
                                          _%lp-tl216867216979%_
                                          (cons _%lp-hd216866216977%_
                                                _%signature216868216972%_))))
                                     (let ((_%signature216869216982%_
                                            (reverse _%signature216868216972%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl216857216951%_))
                                           (let ((_%e216870216984%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl216857216951%_))))
                                             (let ((_%tl216872216989%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e216870216984%_)))
                                                   (_%hd216871216987%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e216870216984%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl216872216989%_))
                                                   (_%__kont220634220635%_
                                                    _%hd216871216987%_
                                                    _%signature216869216982%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g216848216888%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g216848216888%_))))))))
                       (_%loop216864216967%_ _%target216861216962%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220632220633%_))
                  (let ((_%e216852216938%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220632220633%_))))
                    (let ((_%tl216854216943%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216852216938%_)))
                          (_%hd216853216941%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216852216938%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216854216943%_))
                          (let ((_%e216855216946%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216854216943%_))))
                            (let ((_%tl216857216951%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216855216946%_)))
                                  (_%hd216856216949%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216855216946%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd216856216949%_))
                                  (let ((_%e216858216954%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216856216949%_))))
                                    (let ((_%tl216860216959%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216858216954%_)))
                                          (_%hd216859216957%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216858216954%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd216859216957%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd216859216957%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl216860216959%_))
                                                  (let ((_%__splice220636220637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl216860216959%_
                                                            '0))))
                                                    (let ((_%tl216863216964%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220636220637%_
                                                              '1)))
                                                          (_%target216861216962%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220636220637%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216863216964%_))
                                                          (_%__match220669220670%_
                                                           _%e216852216938%_
                                                           _%hd216853216941%_
                                                           _%tl216854216943%_
                                                           _%e216855216946%_
                                                           _%hd216856216949%_
                                                           _%tl216857216951%_
                                                           _%e216858216954%_
                                                           _%hd216859216957%_
                                                           _%tl216860216959%_
                                                           _%__splice220636220637%_
                                                           _%target216861216962%_
                                                           _%tl216863216964%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl216857216951%_))
                      (let ((_%e216881216909%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216857216951%_))))
                        (let ((_%tl216883216914%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216881216909%_)))
                              (_%hd216882216912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216881216909%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216883216914%_))
                              (_%__kont220638220639%_
                               _%hd216882216912%_
                               _%hd216856216949%_)
                              (let ()
                                (declare (not safe))
                                (_%g216848216888%_)))))
                      (let () (declare (not safe)) (_%g216848216888%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216857216951%_))
                                                      (let ((_%e216881216909%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216857216951%_))))
                (let ((_%tl216883216914%_
                       (let () (declare (not safe)) (##cdr _%e216881216909%_)))
                      (_%hd216882216912%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216881216909%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216883216914%_))
                      (_%__kont220638220639%_
                       _%hd216882216912%_
                       _%hd216856216949%_)
                      (let () (declare (not safe)) (_%g216848216888%_)))))
              (let () (declare (not safe)) (_%g216848216888%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216857216951%_))
                                                  (let ((_%e216881216909%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216857216951%_))))
                                                    (let ((_%tl216883216914%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216881216909%_)))
                                                          (_%hd216882216912%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216881216909%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216883216914%_))
                                                          (_%__kont220638220639%_
                                                           _%hd216882216912%_
                                                           _%hd216856216949%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216848216888%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216848216888%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216857216951%_))
                                              (let ((_%e216881216909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216857216951%_))))
                                                (let ((_%tl216883216914%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216881216909%_)))
                                                      (_%hd216882216912%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216881216909%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216883216914%_))
                                                      (_%__kont220638220639%_
                                                       _%hd216882216912%_
                                                       _%hd216856216949%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216848216888%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216848216888%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216857216951%_))
                                      (let ((_%e216881216909%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216857216951%_))))
                                        (let ((_%tl216883216914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216881216909%_)))
                                              (_%hd216882216912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216881216909%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216883216914%_))
                                              (_%__kont220638220639%_
                                               _%hd216882216912%_
                                               _%hd216856216949%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g216848216888%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216848216888%_))))))
                          (let () (declare (not safe)) (_%g216848216888%_)))))
                  (let () (declare (not safe)) (_%g216848216888%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx216819%_ _%expr216820%_ _%type216821%_)
        (let ((_%$e216823%_ (not _%type216821%_)))
          (if _%$e216823%_
              _%$e216823%_
              (let ((_%$e216826%_
                     (eq? (##structure-ref _%type216821%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e216826%_
                    _%$e216826%_
                    (let ((_%$e216829%_
                           (eq? (##structure-ref
                                 _%type216821%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e216829%_
                          _%$e216829%_
                          (let ((_%expr-type216833%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr216820%_))))
                            (if (not _%expr-type216833%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx216819%_
                                   _%type216821%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type216833%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx216819%_
                                       _%type216821%_
                                       _%expr-type216833%_))
                                    (let ((_%$e216837%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type216833%_
                                              'gxc#!abort::t))))
                                      (if _%$e216837%_
                                          _%$e216837%_
                                          (let ((_%$e216840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type216833%_
                                                    _%type216821%_))))
                                            (if _%$e216840%_
                                                _%$e216840%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx216819%_
                                                   _%type216821%_
                                                   _%expr-type216833%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self216245%_ _%stx216246%_)
        (let* ((_%__stx220714220715%_ _%stx216246%_)
               (_%g216251216361%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220714220715%_)))))
          (let ((_%__kont220716220717%_
                 (lambda (_%g216253216793%_
                          _%g216254216794%_
                          _%g216255216795%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g216255216795%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self216245%_ _%g216254216794%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self216245%_
                          _%g216253216793%_)))))
                (_%__kont220718220719%_
                 (lambda (_%g216274216619%_
                          _%g216275216620%_
                          _%g216276216621%_
                          _%g216277216622%_)
                   (let ((_%$e216654%_
                          (let ((__tmp221067
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g216277216622%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp221067))))
                     (if _%$e216654%_
                         ((lambda (_%pred-type216657%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type216657%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type216657%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test216662%_
                                        (let ((__tmp221068
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g216277216622%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g216276216621%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp221068
                                           _%stx216246%_
                                           _%self216245%_)))
                                       (_%K216666%_
                                        (let ((__tmp221069
                                               (lambda ()
                                                 (let ((__tmp221072
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self216245%_
                                                             _%g216275216620%_))))
                                                       (__tmp221070
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g216276216621%_))
                            (let ((__tmp221071
                                   (##structure-ref
                                    _%pred-type216657%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx216246%_
                               __tmp221071)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp221072
                                                    gxc#current-compile-path-type
                                                    __tmp221070)))))
                                          (declare (not safe))
                                          (__make-promise __tmp221069)))
                                       (_%E216669%_
                                        (let ((__tmp221073
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self216245%_
                                                    _%g216274216619%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp221073)))
                                       (_%__stx220692220693%_ _%test216662%_)
                                       (_%g216673216687%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx220692220693%_)))))
                                  (let ((_%__kont220694220695%_
                                         (lambda (_%g216675216715%_
                                                  _%g216676216716%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g216675216715%_))
                                               (force _%K216666%_)
                                               (force _%E216669%_))))
                                        (_%__kont220696220697%_
                                         (lambda ()
                                           (let ((__tmp221074
                                                  (cons '%#if
                                                        (cons _%test216662%_
                                                              (cons (force _%K216666%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E216669%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221074
                                              _%stx216246%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx220692220693%_))
                                        (let ((_%e216677216699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx220692220693%_))))
                                          (let ((_%tl216679216704%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e216677216699%_)))
                                                (_%hd216678216702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e216677216699%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl216679216704%_))
                                                (let ((_%e216680216707%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl216679216704%_))))
                                                  (let ((_%tl216682216712%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e216680216707%_)))
                                                        (_%hd216681216710%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e216680216707%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl216682216712%_))
                                                        (_%__kont220694220695%_
                                                         _%hd216681216710%_
                                                         _%hd216678216702%_)
                                                        (_%__kont220696220697%_))))
                                                (_%__kont220696220697%_))))
                                        (_%__kont220696220697%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self216245%_
                                   _%stx216246%_))))
                          _%$e216654%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self216245%_
                            _%stx216246%_))))))
                (_%__kont220720220721%_
                 (lambda (_%g216311216495%_
                          _%g216312216496%_
                          _%g216313216497%_
                          _%g216314216498%_)
                   (gxc#optimize-if%
                    _%self216245%_
                    (let ((__tmp221075
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g216313216497%_
                                       (cons _%g216311216495%_
                                             (cons _%g216312216496%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221075 _%stx216246%_)))))
                (_%__kont220722220723%_
                 (lambda (_%g216342216398%_
                          _%g216343216399%_
                          _%g216344216400%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self216245%_ _%stx216246%_)))))
            (let ((_%__match220921220922%_
                   (lambda (_%e216315216423%_
                            _%hd216316216426%_
                            _%tl216317216428%_
                            _%e216318216431%_
                            _%hd216319216434%_
                            _%tl216320216436%_
                            _%e216321216439%_
                            _%hd216322216442%_
                            _%tl216323216444%_
                            _%e216324216447%_
                            _%hd216325216450%_
                            _%tl216326216452%_
                            _%e216327216455%_
                            _%hd216328216458%_
                            _%tl216329216460%_
                            _%e216330216463%_
                            _%hd216331216466%_
                            _%tl216332216468%_
                            _%e216333216471%_
                            _%hd216334216474%_
                            _%tl216335216476%_
                            _%e216336216479%_
                            _%hd216337216482%_
                            _%tl216338216484%_
                            _%e216339216487%_
                            _%hd216340216490%_
                            _%tl216341216492%_)
                     (let ((_%g216311216495%_ _%hd216340216490%_)
                           (_%g216312216496%_ _%hd216337216482%_)
                           (_%g216313216497%_ _%hd216334216474%_)
                           (_%g216314216498%_ _%hd216331216466%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g216314216498%_ 'not))
                           (_%__kont220720220721%_
                            _%g216311216495%_
                            _%g216312216496%_
                            _%g216313216497%_
                            _%g216314216498%_)
                           (_%__kont220722220723%_
                            _%hd216340216490%_
                            _%hd216337216482%_
                            _%hd216319216434%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220714220715%_))
                  (let ((_%e216256216745%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220714220715%_))))
                    (let ((_%tl216258216750%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216256216745%_)))
                          (_%hd216257216748%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216256216745%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216258216750%_))
                          (let ((_%e216259216753%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216258216750%_))))
                            (let ((_%tl216261216758%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216259216753%_)))
                                  (_%hd216260216756%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216259216753%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd216260216756%_))
                                  (let ((_%e216262216761%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216260216756%_))))
                                    (let ((_%tl216264216766%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216262216761%_)))
                                          (_%hd216263216764%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216262216761%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd216263216764%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd216263216764%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216264216766%_))
                                                  (let ((_%e216265216769%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216264216766%_))))
                                                    (let ((_%tl216267216774%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216265216769%_)))
                                                          (_%hd216266216772%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216265216769%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216267216774%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl216261216758%_))
                      (let ((_%e216268216777%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216261216758%_))))
                        (let ((_%tl216270216782%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216268216777%_)))
                              (_%hd216269216780%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216268216777%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216270216782%_))
                              (let ((_%e216271216785%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216270216782%_))))
                                (let ((_%tl216273216790%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216271216785%_)))
                                      (_%hd216272216788%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216271216785%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216273216790%_))
                                      (_%__kont220716220717%_
                                       _%hd216272216788%_
                                       _%hd216269216780%_
                                       _%hd216266216772%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g216251216361%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g216251216361%_)))))
                      (let () (declare (not safe)) (_%g216251216361%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216261216758%_))
                      (let ((_%e216351216382%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216261216758%_))))
                        (let ((_%tl216353216387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216351216382%_)))
                              (_%hd216352216385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216351216382%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216353216387%_))
                              (let ((_%e216354216390%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216353216387%_))))
                                (let ((_%tl216356216395%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216354216390%_)))
                                      (_%hd216355216393%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216354216390%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216356216395%_))
                                      (_%__kont220722220723%_
                                       _%hd216355216393%_
                                       _%hd216352216385%_
                                       _%hd216260216756%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g216251216361%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g216251216361%_)))))
                      (let () (declare (not safe)) (_%g216251216361%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216261216758%_))
                                                      (let ((_%e216351216382%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216261216758%_))))
                (let ((_%tl216353216387%_
                       (let () (declare (not safe)) (##cdr _%e216351216382%_)))
                      (_%hd216352216385%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216351216382%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216353216387%_))
                      (let ((_%e216354216390%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216353216387%_))))
                        (let ((_%tl216356216395%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216354216390%_)))
                              (_%hd216355216393%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216354216390%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216356216395%_))
                              (_%__kont220722220723%_
                               _%hd216355216393%_
                               _%hd216352216385%_
                               _%hd216260216756%_)
                              (let ()
                                (declare (not safe))
                                (_%g216251216361%_)))))
                      (let () (declare (not safe)) (_%g216251216361%_)))))
              (let () (declare (not safe)) (_%g216251216361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd216263216764%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216264216766%_))
                                                      (let ((_%e216287216555%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216264216766%_))))
                (let ((_%tl216289216560%_
                       (let () (declare (not safe)) (##cdr _%e216287216555%_)))
                      (_%hd216288216558%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216287216555%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd216288216558%_))
                      (let ((_%e216290216563%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd216288216558%_))))
                        (let ((_%tl216292216568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216290216563%_)))
                              (_%hd216291216566%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216290216563%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd216291216566%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd216291216566%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216292216568%_))
                                      (let ((_%e216293216571%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216292216568%_))))
                                        (let ((_%tl216295216576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216293216571%_)))
                                              (_%hd216294216574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216293216571%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216295216576%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216289216560%_))
                                                  (let ((_%e216296216579%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216289216560%_))))
                                                    (let ((_%tl216298216584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216296216579%_)))
                                                          (_%hd216297216582%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216296216579%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd216297216582%_))
                                                          (let ((_%e216299216587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd216297216582%_))))
                    (let ((_%tl216301216592%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216299216587%_)))
                          (_%hd216300216590%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216299216587%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd216300216590%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd216300216590%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216301216592%_))
                                  (let ((_%e216302216595%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216301216592%_))))
                                    (let ((_%tl216304216600%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216302216595%_)))
                                          (_%hd216303216598%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216302216595%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216304216600%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216298216584%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216261216758%_))
                                                  (let ((_%e216305216603%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216261216758%_))))
                                                    (let ((_%tl216307216608%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216305216603%_)))
                                                          (_%hd216306216606%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216305216603%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216307216608%_))
                                                          (let ((_%e216308216611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216307216608%_))))
                    (let ((_%tl216310216616%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216308216611%_)))
                          (_%hd216309216614%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216308216611%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216310216616%_))
                          (_%__kont220718220719%_
                           _%hd216309216614%_
                           _%hd216306216606%_
                           _%hd216303216598%_
                           _%hd216294216574%_)
                          (let () (declare (not safe)) (_%g216251216361%_)))))
                  (let () (declare (not safe)) (_%g216251216361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216251216361%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216261216758%_))
                                                  (let ((_%e216351216382%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216261216758%_))))
                                                    (let ((_%tl216353216387%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216351216382%_)))
                                                          (_%hd216352216385%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216351216382%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216353216387%_))
                                                          (let ((_%e216354216390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216353216387%_))))
                    (let ((_%tl216356216395%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216354216390%_)))
                          (_%hd216355216393%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216354216390%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216356216395%_))
                          (_%__kont220722220723%_
                           _%hd216355216393%_
                           _%hd216352216385%_
                           _%hd216260216756%_)
                          (let () (declare (not safe)) (_%g216251216361%_)))))
                  (let () (declare (not safe)) (_%g216251216361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216251216361%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216298216584%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216261216758%_))
                                                  (let ((_%e216336216479%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216261216758%_))))
                                                    (let ((_%tl216338216484%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216336216479%_)))
                                                          (_%hd216337216482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216336216479%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216338216484%_))
                                                          (let ((_%e216339216487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216338216484%_))))
                    (let ((_%tl216341216492%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216339216487%_)))
                          (_%hd216340216490%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216339216487%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216341216492%_))
                          (_%__match220921220922%_
                           _%e216256216745%_
                           _%hd216257216748%_
                           _%tl216258216750%_
                           _%e216259216753%_
                           _%hd216260216756%_
                           _%tl216261216758%_
                           _%e216262216761%_
                           _%hd216263216764%_
                           _%tl216264216766%_
                           _%e216287216555%_
                           _%hd216288216558%_
                           _%tl216289216560%_
                           _%e216290216563%_
                           _%hd216291216566%_
                           _%tl216292216568%_
                           _%e216293216571%_
                           _%hd216294216574%_
                           _%tl216295216576%_
                           _%e216296216579%_
                           _%hd216297216582%_
                           _%tl216298216584%_
                           _%e216336216479%_
                           _%hd216337216482%_
                           _%tl216338216484%_
                           _%e216339216487%_
                           _%hd216340216490%_
                           _%tl216341216492%_)
                          (let () (declare (not safe)) (_%g216251216361%_)))))
                  (let () (declare (not safe)) (_%g216251216361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216251216361%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216261216758%_))
                                                  (let ((_%e216351216382%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216261216758%_))))
                                                    (let ((_%tl216353216387%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216351216382%_)))
                                                          (_%hd216352216385%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216351216382%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216353216387%_))
                                                          (let ((_%e216354216390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216353216387%_))))
                    (let ((_%tl216356216395%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216354216390%_)))
                          (_%hd216355216393%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216354216390%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216356216395%_))
                          (_%__kont220722220723%_
                           _%hd216355216393%_
                           _%hd216352216385%_
                           _%hd216260216756%_)
                          (let () (declare (not safe)) (_%g216251216361%_)))))
                  (let () (declare (not safe)) (_%g216251216361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216251216361%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216298216584%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216261216758%_))
                                          (let ((_%e216336216479%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216261216758%_))))
                                            (let ((_%tl216338216484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216336216479%_)))
                                                  (_%hd216337216482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216336216479%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216338216484%_))
                                                  (let ((_%e216339216487%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216338216484%_))))
                                                    (let ((_%tl216341216492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216339216487%_)))
                                                          (_%hd216340216490%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216339216487%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216341216492%_))
                                                          (_%__match220921220922%_
                                                           _%e216256216745%_
                                                           _%hd216257216748%_
                                                           _%tl216258216750%_
                                                           _%e216259216753%_
                                                           _%hd216260216756%_
                                                           _%tl216261216758%_
                                                           _%e216262216761%_
                                                           _%hd216263216764%_
                                                           _%tl216264216766%_
                                                           _%e216287216555%_
                                                           _%hd216288216558%_
                                                           _%tl216289216560%_
                                                           _%e216290216563%_
                                                           _%hd216291216566%_
                                                           _%tl216292216568%_
                                                           _%e216293216571%_
                                                           _%hd216294216574%_
                                                           _%tl216295216576%_
                                                           _%e216296216579%_
                                                           _%hd216297216582%_
                                                           _%tl216298216584%_
                                                           _%e216336216479%_
                                                           _%hd216337216482%_
                                                           _%tl216338216484%_
                                                           _%e216339216487%_
                                                           _%hd216340216490%_
                                                           _%tl216341216492%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216251216361%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216251216361%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216251216361%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216261216758%_))
                                          (let ((_%e216351216382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216261216758%_))))
                                            (let ((_%tl216353216387%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216351216382%_)))
                                                  (_%hd216352216385%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216351216382%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216353216387%_))
                                                  (let ((_%e216354216390%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216353216387%_))))
                                                    (let ((_%tl216356216395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216354216390%_)))
                                                          (_%hd216355216393%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216354216390%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216356216395%_))
                                                          (_%__kont220722220723%_
                                                           _%hd216355216393%_
                                                           _%hd216352216385%_
                                                           _%hd216260216756%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216251216361%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216251216361%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216251216361%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216298216584%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216261216758%_))
                                      (let ((_%e216336216479%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216261216758%_))))
                                        (let ((_%tl216338216484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216336216479%_)))
                                              (_%hd216337216482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216336216479%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216338216484%_))
                                              (let ((_%e216339216487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216338216484%_))))
                                                (let ((_%tl216341216492%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216339216487%_)))
                                                      (_%hd216340216490%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216339216487%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216341216492%_))
                                                      (_%__match220921220922%_
                                                       _%e216256216745%_
                                                       _%hd216257216748%_
                                                       _%tl216258216750%_
                                                       _%e216259216753%_
                                                       _%hd216260216756%_
                                                       _%tl216261216758%_
                                                       _%e216262216761%_
                                                       _%hd216263216764%_
                                                       _%tl216264216766%_
                                                       _%e216287216555%_
                                                       _%hd216288216558%_
                                                       _%tl216289216560%_
                                                       _%e216290216563%_
                                                       _%hd216291216566%_
                                                       _%tl216292216568%_
                                                       _%e216293216571%_
                                                       _%hd216294216574%_
                                                       _%tl216295216576%_
                                                       _%e216296216579%_
                                                       _%hd216297216582%_
                                                       _%tl216298216584%_
                                                       _%e216336216479%_
                                                       _%hd216337216482%_
                                                       _%tl216338216484%_
                                                       _%e216339216487%_
                                                       _%hd216340216490%_
                                                       _%tl216341216492%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216251216361%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216251216361%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216251216361%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216261216758%_))
                                      (let ((_%e216351216382%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216261216758%_))))
                                        (let ((_%tl216353216387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216351216382%_)))
                                              (_%hd216352216385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216351216382%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216353216387%_))
                                              (let ((_%e216354216390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216353216387%_))))
                                                (let ((_%tl216356216395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216354216390%_)))
                                                      (_%hd216355216393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216354216390%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216356216395%_))
                                                      (_%__kont220722220723%_
                                                       _%hd216355216393%_
                                                       _%hd216352216385%_
                                                       _%hd216260216756%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216251216361%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216251216361%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216251216361%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216298216584%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216261216758%_))
                                  (let ((_%e216336216479%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216261216758%_))))
                                    (let ((_%tl216338216484%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216336216479%_)))
                                          (_%hd216337216482%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216336216479%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216338216484%_))
                                          (let ((_%e216339216487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216338216484%_))))
                                            (let ((_%tl216341216492%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216339216487%_)))
                                                  (_%hd216340216490%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216339216487%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216341216492%_))
                                                  (_%__match220921220922%_
                                                   _%e216256216745%_
                                                   _%hd216257216748%_
                                                   _%tl216258216750%_
                                                   _%e216259216753%_
                                                   _%hd216260216756%_
                                                   _%tl216261216758%_
                                                   _%e216262216761%_
                                                   _%hd216263216764%_
                                                   _%tl216264216766%_
                                                   _%e216287216555%_
                                                   _%hd216288216558%_
                                                   _%tl216289216560%_
                                                   _%e216290216563%_
                                                   _%hd216291216566%_
                                                   _%tl216292216568%_
                                                   _%e216293216571%_
                                                   _%hd216294216574%_
                                                   _%tl216295216576%_
                                                   _%e216296216579%_
                                                   _%hd216297216582%_
                                                   _%tl216298216584%_
                                                   _%e216336216479%_
                                                   _%hd216337216482%_
                                                   _%tl216338216484%_
                                                   _%e216339216487%_
                                                   _%hd216340216490%_
                                                   _%tl216341216492%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216251216361%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216251216361%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216251216361%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216261216758%_))
                                  (let ((_%e216351216382%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216261216758%_))))
                                    (let ((_%tl216353216387%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216351216382%_)))
                                          (_%hd216352216385%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216351216382%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216353216387%_))
                                          (let ((_%e216354216390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216353216387%_))))
                                            (let ((_%tl216356216395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216354216390%_)))
                                                  (_%hd216355216393%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216354216390%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216356216395%_))
                                                  (_%__kont220722220723%_
                                                   _%hd216355216393%_
                                                   _%hd216352216385%_
                                                   _%hd216260216756%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216251216361%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216251216361%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216251216361%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216298216584%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216261216758%_))
                          (let ((_%e216336216479%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216261216758%_))))
                            (let ((_%tl216338216484%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216336216479%_)))
                                  (_%hd216337216482%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216336216479%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216338216484%_))
                                  (let ((_%e216339216487%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216338216484%_))))
                                    (let ((_%tl216341216492%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216339216487%_)))
                                          (_%hd216340216490%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216339216487%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216341216492%_))
                                          (_%__match220921220922%_
                                           _%e216256216745%_
                                           _%hd216257216748%_
                                           _%tl216258216750%_
                                           _%e216259216753%_
                                           _%hd216260216756%_
                                           _%tl216261216758%_
                                           _%e216262216761%_
                                           _%hd216263216764%_
                                           _%tl216264216766%_
                                           _%e216287216555%_
                                           _%hd216288216558%_
                                           _%tl216289216560%_
                                           _%e216290216563%_
                                           _%hd216291216566%_
                                           _%tl216292216568%_
                                           _%e216293216571%_
                                           _%hd216294216574%_
                                           _%tl216295216576%_
                                           _%e216296216579%_
                                           _%hd216297216582%_
                                           _%tl216298216584%_
                                           _%e216336216479%_
                                           _%hd216337216482%_
                                           _%tl216338216484%_
                                           _%e216339216487%_
                                           _%hd216340216490%_
                                           _%tl216341216492%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216251216361%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216251216361%_)))))
                          (let () (declare (not safe)) (_%g216251216361%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216261216758%_))
                          (let ((_%e216351216382%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216261216758%_))))
                            (let ((_%tl216353216387%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216351216382%_)))
                                  (_%hd216352216385%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216351216382%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216353216387%_))
                                  (let ((_%e216354216390%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216353216387%_))))
                                    (let ((_%tl216356216395%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216354216390%_)))
                                          (_%hd216355216393%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216354216390%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216356216395%_))
                                          (_%__kont220722220723%_
                                           _%hd216355216393%_
                                           _%hd216352216385%_
                                           _%hd216260216756%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216251216361%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216251216361%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g216251216361%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216261216758%_))
                                                      (let ((_%e216351216382%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216261216758%_))))
                (let ((_%tl216353216387%_
                       (let () (declare (not safe)) (##cdr _%e216351216382%_)))
                      (_%hd216352216385%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216351216382%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216353216387%_))
                      (let ((_%e216354216390%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216353216387%_))))
                        (let ((_%tl216356216395%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216354216390%_)))
                              (_%hd216355216393%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216354216390%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216356216395%_))
                              (_%__kont220722220723%_
                               _%hd216355216393%_
                               _%hd216352216385%_
                               _%hd216260216756%_)
                              (let ()
                                (declare (not safe))
                                (_%g216251216361%_)))))
                      (let () (declare (not safe)) (_%g216251216361%_)))))
              (let () (declare (not safe)) (_%g216251216361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216261216758%_))
                                                  (let ((_%e216351216382%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216261216758%_))))
                                                    (let ((_%tl216353216387%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216351216382%_)))
                                                          (_%hd216352216385%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216351216382%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216353216387%_))
                                                          (let ((_%e216354216390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216353216387%_))))
                    (let ((_%tl216356216395%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216354216390%_)))
                          (_%hd216355216393%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216354216390%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216356216395%_))
                          (_%__kont220722220723%_
                           _%hd216355216393%_
                           _%hd216352216385%_
                           _%hd216260216756%_)
                          (let () (declare (not safe)) (_%g216251216361%_)))))
                  (let () (declare (not safe)) (_%g216251216361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216251216361%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216261216758%_))
                                          (let ((_%e216351216382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216261216758%_))))
                                            (let ((_%tl216353216387%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216351216382%_)))
                                                  (_%hd216352216385%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216351216382%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216353216387%_))
                                                  (let ((_%e216354216390%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216353216387%_))))
                                                    (let ((_%tl216356216395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216354216390%_)))
                                                          (_%hd216355216393%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216354216390%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216356216395%_))
                                                          (_%__kont220722220723%_
                                                           _%hd216355216393%_
                                                           _%hd216352216385%_
                                                           _%hd216260216756%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216251216361%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216251216361%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216251216361%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216261216758%_))
                                      (let ((_%e216351216382%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216261216758%_))))
                                        (let ((_%tl216353216387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216351216382%_)))
                                              (_%hd216352216385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216351216382%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216353216387%_))
                                              (let ((_%e216354216390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216353216387%_))))
                                                (let ((_%tl216356216395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216354216390%_)))
                                                      (_%hd216355216393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216354216390%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216356216395%_))
                                                      (_%__kont220722220723%_
                                                       _%hd216355216393%_
                                                       _%hd216352216385%_
                                                       _%hd216260216756%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216251216361%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216251216361%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216251216361%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216261216758%_))
                                  (let ((_%e216351216382%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216261216758%_))))
                                    (let ((_%tl216353216387%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216351216382%_)))
                                          (_%hd216352216385%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216351216382%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216353216387%_))
                                          (let ((_%e216354216390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216353216387%_))))
                                            (let ((_%tl216356216395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216354216390%_)))
                                                  (_%hd216355216393%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216354216390%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216356216395%_))
                                                  (_%__kont220722220723%_
                                                   _%hd216355216393%_
                                                   _%hd216352216385%_
                                                   _%hd216260216756%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216251216361%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216251216361%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216251216361%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216261216758%_))
                          (let ((_%e216351216382%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216261216758%_))))
                            (let ((_%tl216353216387%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216351216382%_)))
                                  (_%hd216352216385%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216351216382%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216353216387%_))
                                  (let ((_%e216354216390%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216353216387%_))))
                                    (let ((_%tl216356216395%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216354216390%_)))
                                          (_%hd216355216393%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216354216390%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216356216395%_))
                                          (_%__kont220722220723%_
                                           _%hd216355216393%_
                                           _%hd216352216385%_
                                           _%hd216260216756%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216251216361%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216251216361%_)))))
                          (let () (declare (not safe)) (_%g216251216361%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl216261216758%_))
                  (let ((_%e216351216382%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216261216758%_))))
                    (let ((_%tl216353216387%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216351216382%_)))
                          (_%hd216352216385%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216351216382%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216353216387%_))
                          (let ((_%e216354216390%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216353216387%_))))
                            (let ((_%tl216356216395%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216354216390%_)))
                                  (_%hd216355216393%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216354216390%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216356216395%_))
                                  (_%__kont220722220723%_
                                   _%hd216355216393%_
                                   _%hd216352216385%_
                                   _%hd216260216756%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g216251216361%_)))))
                          (let () (declare (not safe)) (_%g216251216361%_)))))
                  (let () (declare (not safe)) (_%g216251216361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216261216758%_))
                                                      (let ((_%e216351216382%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216261216758%_))))
                (let ((_%tl216353216387%_
                       (let () (declare (not safe)) (##cdr _%e216351216382%_)))
                      (_%hd216352216385%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216351216382%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216353216387%_))
                      (let ((_%e216354216390%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216353216387%_))))
                        (let ((_%tl216356216395%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216354216390%_)))
                              (_%hd216355216393%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216354216390%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216356216395%_))
                              (_%__kont220722220723%_
                               _%hd216355216393%_
                               _%hd216352216385%_
                               _%hd216260216756%_)
                              (let ()
                                (declare (not safe))
                                (_%g216251216361%_)))))
                      (let () (declare (not safe)) (_%g216251216361%_)))))
              (let () (declare (not safe)) (_%g216251216361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216261216758%_))
                                              (let ((_%e216351216382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216261216758%_))))
                                                (let ((_%tl216353216387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216351216382%_)))
                                                      (_%hd216352216385%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216351216382%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216353216387%_))
                                                      (let ((_%e216354216390%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216353216387%_))))
                (let ((_%tl216356216395%_
                       (let () (declare (not safe)) (##cdr _%e216354216390%_)))
                      (_%hd216355216393%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216354216390%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216356216395%_))
                      (_%__kont220722220723%_
                       _%hd216355216393%_
                       _%hd216352216385%_
                       _%hd216260216756%_)
                      (let () (declare (not safe)) (_%g216251216361%_)))))
              (let () (declare (not safe)) (_%g216251216361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g216251216361%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216261216758%_))
                                      (let ((_%e216351216382%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216261216758%_))))
                                        (let ((_%tl216353216387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216351216382%_)))
                                              (_%hd216352216385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216351216382%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216353216387%_))
                                              (let ((_%e216354216390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216353216387%_))))
                                                (let ((_%tl216356216395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216354216390%_)))
                                                      (_%hd216355216393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216354216390%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216356216395%_))
                                                      (_%__kont220722220723%_
                                                       _%hd216355216393%_
                                                       _%hd216352216385%_
                                                       _%hd216260216756%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216251216361%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216251216361%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216251216361%_))))))
                          (let () (declare (not safe)) (_%g216251216361%_)))))
                  (let () (declare (not safe)) (_%g216251216361%_))))))))))
