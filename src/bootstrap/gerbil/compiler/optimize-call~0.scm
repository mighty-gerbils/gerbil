(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1770338929)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp220962 (list gxc#::basic-xform::t))
            (__tmp220961 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp220962
         '()
         __tmp220961
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args220239%_
        (apply make-instance gxc#::optimize-call::t _%$args220239%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp220963
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
        (__make-atomic-promise __tmp220963)))
    (define gxc#apply-optimize-call
      (lambda (_%stx220231%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self220234%_
                (let ((__obj220953
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj220953))
               (__tmp220964
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220234%_ _%stx220231%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220964
           gxc#current-compile-method
           _%self220234%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp220966 (list gxc#::void::t))
            (__tmp220965 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp220966
         '()
         __tmp220965
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args220228%_
        (apply make-instance gxc#::check-return-type::t _%$args220228%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp220967
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
        (__make-atomic-promise __tmp220967)))
    (define gxc#apply-check-return-type
      (lambda (_%stx220220%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self220223%_
                (let ((__obj220955
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj220955))
               (__tmp220968
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220223%_ _%stx220220%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220968
           gxc#current-compile-method
           _%self220223%_))))
    (define gxc#optimize-call%
      (lambda (_%self219827%_ _%stx219828%_)
        (let* ((_%__stx220308220309%_ _%stx219828%_)
               (_%g219831219877%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220308220309%_)))))
          (let ((_%__kont220310220311%_
                 (lambda (_%g219833220016%_ _%g219834220017%_)
                   (let* ((_%rator-id220037%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g219834220017%_)))
                          (_%rator-type220039%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id220037%_))))
                     (if (or (not _%rator-type220039%_)
                             (eq? (##structure-ref
                                   _%rator-type220039%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self219827%_ _%stx219828%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type220039%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp220969
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type220039%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id220037%_
                                  '" => "
                                  _%rator-type220039%_
                                  '" "
                                  __tmp220969))
                               (let* ((_%optimized220054%_
                                       (let ((__method220956
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type220039%_
                                                 'optimize-call))))
                                         (if __method220956
                                             (let ((__tmp220970
                                                    (let ((__tmp220971
                                                           (lambda (_%g220046220049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g220047220051%_)
                     (cons _%g220046220049%_ _%g220047220051%_))))
              (declare (not safe))
              (__foldr1 __tmp220971 '() _%g219833220016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method220956
                                                _%rator-type220039%_
                                                _%self219827%_
                                                _%stx219828%_
                                                __tmp220970))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type220039%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx220256220257%_
                                       _%optimized220054%_)
                                      (_%g220057220086%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx220256220257%_)))))
                                 (let ((_%__kont220258220259%_
                                        (lambda (_%g220059220152%_
                                                 _%g220060220153%_)
                                          (let* ((_%optimized-rator-id220180%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g220060220153%_)))
                                                 (_%rator-type220185%_
                                                  (let ((_%$e220182%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id220180%_))))
                                                    (if _%$e220182%_
                                                        _%$e220182%_
                                                        _%rator-type220039%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type220185%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id220180%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type220185%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type220185%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized220054%_
                                                (let ((__tmp220972
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g220060220153%_ '()))
                           (let ((__tmp220973
                                  (lambda (_%g220193220196%_ _%g220194220198%_)
                                    (cons _%g220193220196%_
                                          _%g220194220198%_))))
                             (declare (not safe))
                             (__foldr1 __tmp220973 '() _%g220059220152%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp220972
                                                   _%stx219828%_))))))
                                       (_%__kont220262220263%_
                                        (lambda () _%optimized220054%_)))
                                   (let ((_%__match220305220306%_
                                          (lambda (_%e220061220098%_
                                                   _%hd220062220101%_
                                                   _%tl220063220103%_
                                                   _%e220064220106%_
                                                   _%hd220065220109%_
                                                   _%tl220066220111%_
                                                   _%e220067220114%_
                                                   _%hd220068220117%_
                                                   _%tl220069220119%_
                                                   _%e220070220122%_
                                                   _%hd220071220125%_
                                                   _%tl220072220127%_
                                                   _%__splice220260220261%_
                                                   _%target220073220130%_
                                                   _%tl220075220132%_)
                                            (letrec ((_%loop220076220135%_
                                                      (lambda (_%hd220074220138%_
                                                               _%arg220080220140%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd220074220138%_))
                                                            (let ((_%e220077220142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd220074220138%_))))
                      (let ((_%lp-tl220079220147%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e220077220142%_)))
                            (_%lp-hd220078220145%_
                             (let ()
                               (declare (not safe))
                               (##car _%e220077220142%_))))
                        (_%loop220076220135%_
                         _%lp-tl220079220147%_
                         (cons _%lp-hd220078220145%_ _%arg220080220140%_))))
                    (let ((_%arg220081220150%_ (reverse _%arg220080220140%_)))
                      (_%__kont220258220259%_
                       _%arg220081220150%_
                       _%hd220071220125%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop220076220135%_
                                               _%target220073220130%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx220256220257%_))
                                         (let ((_%e220061220098%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx220256220257%_))))
                                           (let ((_%tl220063220103%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e220061220098%_)))
                                                 (_%hd220062220101%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e220061220098%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd220062220101%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd220062220101%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl220063220103%_))
                                                         (let ((_%e220064220106%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl220063220103%_))))
                   (let ((_%tl220066220111%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e220064220106%_)))
                         (_%hd220065220109%_
                          (let ()
                            (declare (not safe))
                            (##car _%e220064220106%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd220065220109%_))
                         (let ((_%e220067220114%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd220065220109%_))))
                           (let ((_%tl220069220119%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e220067220114%_)))
                                 (_%hd220068220117%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e220067220114%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd220068220117%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd220068220117%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl220069220119%_))
                                         (let ((_%e220070220122%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl220069220119%_))))
                                           (let ((_%tl220072220127%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e220070220122%_)))
                                                 (_%hd220071220125%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e220070220122%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl220072220127%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl220066220111%_))
                                                     (let ((_%__splice220260220261%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl220066220111%_
                                                               '0))))
                                                       (let ((_%tl220075220132%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice220260220261%_ '1)))
                     (_%target220073220130%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice220260220261%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl220075220132%_))
                     (_%__match220305220306%_
                      _%e220061220098%_
                      _%hd220062220101%_
                      _%tl220063220103%_
                      _%e220064220106%_
                      _%hd220065220109%_
                      _%tl220066220111%_
                      _%e220067220114%_
                      _%hd220068220117%_
                      _%tl220069220119%_
                      _%e220070220122%_
                      _%hd220071220125%_
                      _%tl220072220127%_
                      _%__splice220260220261%_
                      _%target220073220130%_
                      _%tl220075220132%_)
                     (_%__kont220262220263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont220262220263%_))
                                                 (_%__kont220262220263%_))))
                                         (_%__kont220262220263%_))
                                     (_%__kont220262220263%_))
                                 (_%__kont220262220263%_))))
                         (_%__kont220262220263%_))))
                 (_%__kont220262220263%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont220262220263%_))
                                                 (_%__kont220262220263%_))))
                                         (_%__kont220262220263%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type220039%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type220039%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp220974
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g219834220017%_
                                                                '()))
                                                    (map (lambda (_%g220204220206%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self219827%_
                                                              _%g220204220206%_)))
                                                         (let ((__tmp220975
                                                                (lambda (_%g220208220211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g220209220213%_)
                          (cons _%g220208220211%_ _%g220209220213%_))))
                   (declare (not safe))
                   (__foldr1 __tmp220975 '() _%g219833220016%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp220974
                                    _%stx219828%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx219828%_
                                    _%rator-type220039%_))))))))
                (_%__kont220314220315%_
                 (lambda (_%g219856219920%_ _%g219857219921%_)
                   (let ((_%rator-type219938%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g219857219921%_))))
                     (if (and _%rator-type219938%_
                              (eq? (##structure-ref
                                    _%rator-type219938%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type219938%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type219938%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type219938%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp220976
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self219827%_
                                               _%g219857219921%_))
                                            (map (lambda (_%g219940219942%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self219827%_
                                                      _%g219940219942%_)))
                                                 (let ((__tmp220977
                                                        (lambda (_%g219944219947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g219945219949%_)
                  (cons _%g219944219947%_ _%g219945219949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp220977
                                                    '()
                                                    _%g219856219920%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp220976 _%stx219828%_))
                         (if (or (not _%rator-type219938%_)
                                 (let ((__tmp220978
                                        (##structure-ref
                                         _%rator-type219938%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp220978 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self219827%_ _%stx219828%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx219828%_
                                _%rator-type219938%_))))))))
            (let* ((_%__match220375220376%_
                    (lambda (_%e219858219882%_
                             _%hd219859219885%_
                             _%tl219860219887%_
                             _%e219861219890%_
                             _%hd219862219893%_
                             _%tl219863219895%_
                             _%__splice220316220317%_
                             _%target219864219898%_
                             _%tl219866219900%_)
                      (letrec ((_%loop219867219903%_
                                (lambda (_%hd219865219906%_
                                         _%rand219871219908%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219865219906%_))
                                      (let ((_%e219868219910%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219865219906%_))))
                                        (let ((_%lp-tl219870219915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219868219910%_)))
                                              (_%lp-hd219869219913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219868219910%_))))
                                          (_%loop219867219903%_
                                           _%lp-tl219870219915%_
                                           (cons _%lp-hd219869219913%_
                                                 _%rand219871219908%_))))
                                      (let ((_%rand219872219918%_
                                             (reverse _%rand219871219908%_)))
                                        (_%__kont220314220315%_
                                         _%rand219872219918%_
                                         _%hd219862219893%_))))))
                        (_%loop219867219903%_ _%target219864219898%_ '()))))
                   (_%__match220355220356%_
                    (lambda (_%e219835219962%_
                             _%hd219836219965%_
                             _%tl219837219967%_
                             _%e219838219970%_
                             _%hd219839219973%_
                             _%tl219840219975%_
                             _%e219841219978%_
                             _%hd219842219981%_
                             _%tl219843219983%_
                             _%e219844219986%_
                             _%hd219845219989%_
                             _%tl219846219991%_
                             _%__splice220312220313%_
                             _%target219847219994%_
                             _%tl219849219996%_)
                      (letrec ((_%loop219850219999%_
                                (lambda (_%hd219848220002%_
                                         _%rand219854220004%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219848220002%_))
                                      (let ((_%e219851220006%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219848220002%_))))
                                        (let ((_%lp-tl219853220011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219851220006%_)))
                                              (_%lp-hd219852220009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219851220006%_))))
                                          (_%loop219850219999%_
                                           _%lp-tl219853220011%_
                                           (cons _%lp-hd219852220009%_
                                                 _%rand219854220004%_))))
                                      (let ((_%rand219855220014%_
                                             (reverse _%rand219854220004%_)))
                                        (_%__kont220310220311%_
                                         _%rand219855220014%_
                                         _%hd219845219989%_))))))
                        (_%loop219850219999%_ _%target219847219994%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220308220309%_))
                  (let ((_%e219835219962%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220308220309%_))))
                    (let ((_%tl219837219967%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e219835219962%_)))
                          (_%hd219836219965%_
                           (let ()
                             (declare (not safe))
                             (##car _%e219835219962%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl219837219967%_))
                          (let ((_%e219838219970%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl219837219967%_))))
                            (let ((_%tl219840219975%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e219838219970%_)))
                                  (_%hd219839219973%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e219838219970%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd219839219973%_))
                                  (let ((_%e219841219978%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd219839219973%_))))
                                    (let ((_%tl219843219983%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e219841219978%_)))
                                          (_%hd219842219981%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e219841219978%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd219842219981%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd219842219981%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl219843219983%_))
                                                  (let ((_%e219844219986%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl219843219983%_))))
                                                    (let ((_%tl219846219991%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e219844219986%_)))
                                                          (_%hd219845219989%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e219844219986%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219846219991%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl219840219975%_))
                      (let ((_%__splice220312220313%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl219840219975%_
                                '0))))
                        (let ((_%tl219849219996%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220312220313%_ '1)))
                              (_%target219847219994%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220312220313%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219849219996%_))
                              (_%__match220355220356%_
                               _%e219835219962%_
                               _%hd219836219965%_
                               _%tl219837219967%_
                               _%e219838219970%_
                               _%hd219839219973%_
                               _%tl219840219975%_
                               _%e219841219978%_
                               _%hd219842219981%_
                               _%tl219843219983%_
                               _%e219844219986%_
                               _%hd219845219989%_
                               _%tl219846219991%_
                               _%__splice220312220313%_
                               _%target219847219994%_
                               _%tl219849219996%_)
                              (let ()
                                (declare (not safe))
                                (_%g219831219877%_)))))
                      (let () (declare (not safe)) (_%g219831219877%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl219840219975%_))
                      (let ((_%__splice220316220317%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl219840219975%_
                                '0))))
                        (let ((_%tl219866219900%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220316220317%_ '1)))
                              (_%target219864219898%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220316220317%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219866219900%_))
                              (_%__match220375220376%_
                               _%e219835219962%_
                               _%hd219836219965%_
                               _%tl219837219967%_
                               _%e219838219970%_
                               _%hd219839219973%_
                               _%tl219840219975%_
                               _%__splice220316220317%_
                               _%target219864219898%_
                               _%tl219866219900%_)
                              (let ()
                                (declare (not safe))
                                (_%g219831219877%_)))))
                      (let () (declare (not safe)) (_%g219831219877%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl219840219975%_))
                                                      (let ((_%__splice220316220317%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl219840219975%_
                        '0))))
                (let ((_%tl219866219900%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220316220317%_ '1)))
                      (_%target219864219898%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220316220317%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl219866219900%_))
                      (_%__match220375220376%_
                       _%e219835219962%_
                       _%hd219836219965%_
                       _%tl219837219967%_
                       _%e219838219970%_
                       _%hd219839219973%_
                       _%tl219840219975%_
                       _%__splice220316220317%_
                       _%target219864219898%_
                       _%tl219866219900%_)
                      (let () (declare (not safe)) (_%g219831219877%_)))))
              (let () (declare (not safe)) (_%g219831219877%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl219840219975%_))
                                                  (let ((_%__splice220316220317%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl219840219975%_
                                                            '0))))
                                                    (let ((_%tl219866219900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220316220317%_
                                                              '1)))
                                                          (_%target219864219898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220316220317%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219866219900%_))
                                                          (_%__match220375220376%_
                                                           _%e219835219962%_
                                                           _%hd219836219965%_
                                                           _%tl219837219967%_
                                                           _%e219838219970%_
                                                           _%hd219839219973%_
                                                           _%tl219840219975%_
                                                           _%__splice220316220317%_
                                                           _%target219864219898%_
                                                           _%tl219866219900%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g219831219877%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g219831219877%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl219840219975%_))
                                              (let ((_%__splice220316220317%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl219840219975%_
                                                        '0))))
                                                (let ((_%tl219866219900%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220316220317%_
                                                          '1)))
                                                      (_%target219864219898%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220316220317%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl219866219900%_))
                                                      (_%__match220375220376%_
                                                       _%e219835219962%_
                                                       _%hd219836219965%_
                                                       _%tl219837219967%_
                                                       _%e219838219970%_
                                                       _%hd219839219973%_
                                                       _%tl219840219975%_
                                                       _%__splice220316220317%_
                                                       _%target219864219898%_
                                                       _%tl219866219900%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g219831219877%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g219831219877%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl219840219975%_))
                                      (let ((_%__splice220316220317%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl219840219975%_
                                                '0))))
                                        (let ((_%tl219866219900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220316220317%_
                                                  '1)))
                                              (_%target219864219898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220316220317%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl219866219900%_))
                                              (_%__match220375220376%_
                                               _%e219835219962%_
                                               _%hd219836219965%_
                                               _%tl219837219967%_
                                               _%e219838219970%_
                                               _%hd219839219973%_
                                               _%tl219840219975%_
                                               _%__splice220316220317%_
                                               _%target219864219898%_
                                               _%tl219866219900%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g219831219877%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g219831219877%_))))))
                          (let () (declare (not safe)) (_%g219831219877%_)))))
                  (let () (declare (not safe)) (_%g219831219877%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self219789%_ _%ctx219790%_ _%stx219791%_ _%args219792%_)
        (let ((_%self219795%_ _%self219789%_))
          (if (let ((__method220957
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self219795%_ 'check-arguments))))
                (if __method220957
                    (let ()
                      (declare (not safe))
                      (__method220957
                       _%self219795%_
                       _%ctx219790%_
                       _%stx219791%_
                       _%args219792%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self219795%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature219805%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self219795%_ '2 '#f '#f)))
                     (_%signature219807%_ _%signature219805%_)
                     (_%$e219817%_
                      (if _%signature219807%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature219807%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e219817%_
                    ((lambda (_%unchecked219820%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked219820%_))
                           (let ((__tmp220979
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked219820%_
                                                          '()))
                                              (map (lambda (_%g219821219823%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx219790%_
                                                        _%g219821219823%_)))
                                                   _%args219792%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp220979
                              _%stx219791%_
                              _%ctx219790%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx219790%_ _%stx219791%_))))
                     _%$e219817%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx219790%_ _%stx219791%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx219790%_ _%stx219791%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass220241 __method-table220242)
        (let ((__check-arguments220243
               (let ((__tmp220980
                      (lambda ()
                        (let ((__method220244
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220242
                                  'check-arguments
                                  '#f))))
                          (if __method220244
                              __method220244
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp220980))))
          (lambda (_%self219789%_ _%ctx219790%_ _%stx219791%_ _%args219792%_)
            (let ((_%self219795%_ _%self219789%_))
              (if ((force __check-arguments220243)
                   _%self219795%_
                   _%ctx219790%_
                   _%stx219791%_
                   _%args219792%_)
                  (let* ((_%signature219805%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self219795%_
                             '2
                             '#f
                             '#f)))
                         (_%signature219807%_ _%signature219805%_)
                         (_%$e219817%_
                          (if _%signature219807%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature219807%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e219817%_
                        ((lambda (_%unchecked219820%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked219820%_))
                               (let ((__tmp220981
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked219820%_
                                                              '()))
                                                  (map (lambda (_%g219821219823%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx219790%_
                                                            _%g219821219823%_)))
                                                       _%args219792%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp220981
                                  _%stx219791%_
                                  _%ctx219790%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx219790%_
                                  _%stx219791%_))))
                         _%$e219817%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx219790%_ _%stx219791%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx219790%_ _%stx219791%_))))))))
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
      (lambda (_%self219542%_ _%ctx219543%_ _%stx219544%_ _%args219545%_)
        (let* ((_%self219548%_ _%self219542%_)
               (_%signature219557219559%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self219548%_ '2 '#f '#f))))
          (if _%signature219557219559%_
              (let* ((_%signature219561%_ _%signature219557219559%_)
                     (_%argument-types219562219564%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature219561%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types219562219564%_
                    (let* ((_%argument-types219566%_
                            _%argument-types219562219564%_)
                           (_%argument-types219571%_
                            (let ((__tmp220982
                                   (lambda (_%t219569%_)
                                     (if _%t219569%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219544%_
                                            _%t219569%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp220982
                               _%argument-types219566%_))))
                      (let _%loop219573%_ ((_%rest-args219575%_ _%args219545%_)
                                           (_%rest-types219576%_
                                            _%argument-types219571%_)
                                           (_%result219577%_ '#t))
                        (let* ((_%rest-args219578219586%_ _%rest-args219575%_)
                               (_%else219580219594%_
                                (lambda () _%result219577%_))
                               (_%K219582219655%_
                                (lambda (_%rest-args219597%_ _%arg219598%_)
                                  (let* ((_%rest-types219599219610%_
                                          _%rest-types219576%_)
                                         (_%E219603219614%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types219599219610%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K219606219643%_
                                           (lambda (_%rest-types219640%_
                                                    _%type219641%_)
                                             (_%loop219573%_
                                              _%rest-args219597%_
                                              _%rest-types219640%_
                                              (if (gxc#check-expression-type!
                                                   _%stx219544%_
                                                   _%arg219598%_
                                                   _%type219641%_)
                                                  _%result219577%_
                                                  '#f))))
                                          (_%K219605219634%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx219544%_
                                                _%argument-types219571%_))))
                                          (_%K219604219624%_
                                           (lambda (_%tail-type219618%_)
                                             (if (let ((__tmp220983
                                                        (lambda (_%g219619219621%_)
                                                          (gxc#check-expression-type!
                                                           _%stx219544%_
                                                           _%g219619219621%_
                                                           _%tail-type219618%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp220983
                                                    _%rest-args219597%_))
                                                 _%result219577%_
                                                 '#f))))
                                      (let ((_%try-match219601219637%_
                                             (lambda ()
                                               (if (null? _%rest-types219599219610%_)
                                                   (_%K219605219634%_)
                                                   (let ((_%tail-type219627%_
                                                          _%rest-types219599219610%_))
                                                     (_%K219604219624%_
                                                      _%tail-type219627%_))))))
                                        (if (pair? _%rest-types219599219610%_)
                                            (let ((_%tl219608219648%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types219599219610%_)))
                                                  (_%hd219607219646%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types219599219610%_))))
                                              (let ((_%type219651%_
                                                     _%hd219607219646%_)
                                                    (_%rest-types219653%_
                                                     _%tl219608219648%_))
                                                (_%K219606219643%_
                                                 _%rest-types219653%_
                                                 _%type219651%_)))
                                            (_%try-match219601219637%_))))))))
                          (if (pair? _%rest-args219578219586%_)
                              (let ((_%hd219583219658%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args219578219586%_)))
                                    (_%tl219584219660%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args219578219586%_))))
                                (let* ((_%arg219663%_ _%hd219583219658%_)
                                       (_%rest-args219665%_
                                        _%tl219584219660%_))
                                  (_%K219582219655%_
                                   _%rest-args219665%_
                                   _%arg219663%_)))
                              (_%else219580219594%_)))))
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
      (lambda (_%self219353%_ _%ctx219354%_ _%stx219355%_ _%args219356%_)
        (let* ((_%self219359%_ _%self219353%_)
               (_%g219369219379%_
                (lambda (_%g219370219376%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219370219376%_))))
               (_%g219368219417%_
                (lambda (_%g219370219382%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219370219382%_))
                      (let ((_%e219372219384%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219370219382%_))))
                        (let ((_%hd219373219387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219372219384%_)))
                              (_%tl219374219389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219372219384%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219374219389%_))
                              ((lambda (_%g219371219392%_)
                                 (let* ((_%klass219404%_
                                         (let ((__tmp220984
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self219359%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219355%_
                                            __tmp220984)))
                                        (_%object219406%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx219354%_
                                            _%g219371219392%_)))
                                        (_%instance?219411%_
                                         (let ((_%$e219408%_
                                                (gxc#expression-type?
                                                 _%object219406%_
                                                 _%klass219404%_)))
                                           (if _%$e219408%_
                                               _%$e219408%_
                                               (gxc#expression-type?
                                                _%g219371219392%_
                                                _%klass219404%_)))))
                                   (if _%instance?219411%_
                                       (let ((__tmp220985
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object219406%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g219371219392%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object219406%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220985
                                          _%stx219355%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx219354%_
                                          _%stx219355%_)))))
                               _%hd219373219387%_)
                              (_%g219369219379%_ _%g219370219382%_))))
                      (_%g219369219379%_ _%g219370219382%_)))))
          (_%g219368219417%_ _%args219356%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self219149%_ _%ctx219150%_ _%stx219151%_ _%args219152%_)
        (let* ((_%self219155%_ _%self219149%_)
               (_%g219165219175%_
                (lambda (_%g219166219172%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219166219172%_))))
               (_%g219164219228%_
                (lambda (_%g219166219178%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219166219178%_))
                      (let ((_%e219168219180%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219166219178%_))))
                        (let ((_%hd219169219183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219168219180%_)))
                              (_%tl219170219185%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219168219180%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219170219185%_))
                              ((lambda (_%g219167219188%_)
                                 (let* ((_%klass219200%_
                                         (let ((__tmp220986
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self219155%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219151%_
                                            __tmp220986)))
                                        (_%object219202%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx219150%_
                                            _%g219167219188%_)))
                                        (_%instance?219207%_
                                         (let ((_%$e219204%_
                                                (gxc#expression-type?
                                                 _%object219202%_
                                                 _%klass219200%_)))
                                           (if _%$e219204%_
                                               _%$e219204%_
                                               (gxc#expression-type?
                                                _%g219167219188%_
                                                _%klass219200%_))))
                                        (_%klass219210%_ _%klass219200%_))
                                   (if _%instance?219207%_
                                       (let ((__tmp220987
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object219202%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g219167219188%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object219202%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220987
                                          _%stx219151%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass219210%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp220988
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass219210%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object219202%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp220988
                                              _%stx219151%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass219210%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp220989
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass219210%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object219202%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220989
                                                  _%stx219151%_))
                                               (let ((__tmp220990
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self219155%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object219202%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220990
                                                  _%stx219151%_)))))))
                               _%hd219169219183%_)
                              (_%g219165219175%_ _%g219166219178%_))))
                      (_%g219165219175%_ _%g219166219178%_)))))
          (_%g219164219228%_ _%args219152%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx218817%_)
        (let* ((_%__stx220385220386%_ _%stx218817%_)
               (_%g218822218863%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220385220386%_)))))
          (let ((_%__kont220387220388%_ (lambda () '#t))
                (_%__kont220389220390%_ (lambda () '#t))
                (_%__kont220391220392%_
                 (lambda (_%g218836218929%_ _%g218837218930%_)
                   (let ((_%rator-type218951218953%_
                          (let ((__tmp220991
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g218837218930%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp220991))))
                     (if _%rator-type218951218953%_
                         (let* ((_%rator-type218955%_
                                 _%rator-type218951218953%_)
                                (_%rator-signature218956218958%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type218955%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type218955%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature218956218958%_
                               (let* ((_%rator-signature218960%_
                                       _%rator-signature218956218958%_)
                                      (_%rator-effect218961218963%_
                                       (if _%rator-signature218960%_
                                           (##direct-structure-ref
                                            _%rator-signature218960%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect218961218963%_
                                     (let ((_%rator-effect218965%_
                                            _%rator-effect218961218963%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect218965%_)
                                               (equal? '(alloc)
                                                       _%rator-effect218965%_))
                                           (let ((__tmp220992
                                                  (let ((__tmp220993
                                                         (lambda (_%g218970218973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g218971218975%_)
                   (cons _%g218970218973%_ _%g218971218975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp220993
                                                     '()
                                                     _%g218836218929%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp220992))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont220395220396%_ (lambda () '#f)))
            (let ((_%__match220474220475%_
                   (lambda (_%e218838218875%_
                            _%hd218839218878%_
                            _%tl218840218880%_
                            _%e218841218883%_
                            _%hd218842218886%_
                            _%tl218843218888%_
                            _%e218844218891%_
                            _%hd218845218894%_
                            _%tl218846218896%_
                            _%e218847218899%_
                            _%hd218848218902%_
                            _%tl218849218904%_
                            _%__splice220393220394%_
                            _%target218850218907%_
                            _%tl218852218909%_)
                     (letrec ((_%loop218853218912%_
                               (lambda (_%hd218851218915%_
                                        _%rand218857218917%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd218851218915%_))
                                     (let ((_%e218854218919%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd218851218915%_))))
                                       (let ((_%lp-tl218856218924%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e218854218919%_)))
                                             (_%lp-hd218855218922%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e218854218919%_))))
                                         (_%loop218853218912%_
                                          _%lp-tl218856218924%_
                                          (cons _%lp-hd218855218922%_
                                                _%rand218857218917%_))))
                                     (let ((_%rand218858218927%_
                                            (reverse _%rand218857218917%_)))
                                       (_%__kont220391220392%_
                                        _%rand218858218927%_
                                        _%hd218848218902%_))))))
                       (_%loop218853218912%_ _%target218850218907%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220385220386%_))
                  (let ((_%e218824219006%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220385220386%_))))
                    (let ((_%tl218826219011%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218824219006%_)))
                          (_%hd218825219009%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218824219006%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd218825219009%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd218825219009%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218826219011%_))
                                  (let ((_%e218827219014%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218826219011%_))))
                                    (let ((_%tl218829219019%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218827219014%_)))
                                          (_%hd218828219017%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218827219014%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl218829219019%_))
                                          (_%__kont220387220388%_)
                                          (_%__kont220395220396%_))))
                                  (_%__kont220395220396%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd218825219009%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218826219011%_))
                                      (let ((_%e218833218991%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl218826219011%_))))
                                        (let ((_%tl218835218996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218833218991%_)))
                                              (_%hd218834218994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218833218991%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218835218996%_))
                                              (_%__kont220389220390%_)
                                              (_%__kont220395220396%_))))
                                      (_%__kont220395220396%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd218825219009%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl218826219011%_))
                                          (let ((_%e218841218883%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl218826219011%_))))
                                            (let ((_%tl218843218888%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e218841218883%_)))
                                                  (_%hd218842218886%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e218841218883%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd218842218886%_))
                                                  (let ((_%e218844218891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd218842218886%_))))
                                                    (let ((_%tl218846218896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e218844218891%_)))
                                                          (_%hd218845218894%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e218844218891%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd218845218894%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd218845218894%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl218846218896%_))
                          (let ((_%e218847218899%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl218846218896%_))))
                            (let ((_%tl218849218904%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218847218899%_)))
                                  (_%hd218848218902%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218847218899%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218849218904%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl218843218888%_))
                                      (let ((_%__splice220393220394%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl218843218888%_
                                                '0))))
                                        (let ((_%tl218852218909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220393220394%_
                                                  '1)))
                                              (_%target218850218907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220393220394%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218852218909%_))
                                              (_%__match220474220475%_
                                               _%e218824219006%_
                                               _%hd218825219009%_
                                               _%tl218826219011%_
                                               _%e218841218883%_
                                               _%hd218842218886%_
                                               _%tl218843218888%_
                                               _%e218844218891%_
                                               _%hd218845218894%_
                                               _%tl218846218896%_
                                               _%e218847218899%_
                                               _%hd218848218902%_
                                               _%tl218849218904%_
                                               _%__splice220393220394%_
                                               _%target218850218907%_
                                               _%tl218852218909%_)
                                              (_%__kont220395220396%_))))
                                      (_%__kont220395220396%_))
                                  (_%__kont220395220396%_))))
                          (_%__kont220395220396%_))
                      (_%__kont220395220396%_))
                  (_%__kont220395220396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont220395220396%_))))
                                          (_%__kont220395220396%_))
                                      (_%__kont220395220396%_))))
                          (_%__kont220395220396%_))))
                  (_%__kont220395220396%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx218812%_ _%klass218813%_)
        (let ((_%expr-type218815%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx218812%_))))
          (if _%expr-type218815%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type218815%_ _%klass218813%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx218790%_ _%expr218791%_ _%type218792%_)
        (if (not _%type218792%_)
            '#f
            (let ((_%$e218795%_
                   (eq? (##structure-ref _%type218792%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e218795%_
                  _%$e218795%_
                  (let ((_%expr-type218799%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr218791%_))))
                    (if (not _%expr-type218799%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type218799%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e218803%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type218799%_
                                      'gxc#!abort::t))))
                              (if _%$e218803%_
                                  _%$e218803%_
                                  (let ((_%$e218806%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type218799%_
                                            _%type218792%_))))
                                    (if _%$e218806%_
                                        _%$e218806%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type218792%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type218792%_
                                                   _%expr-type218799%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx218790%_
                                                   _%expr218791%_
                                                   _%expr-type218799%_
                                                   _%type218792%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self218604%_ _%ctx218605%_ _%stx218606%_ _%args218607%_)
        (let* ((_%self218610%_ _%self218604%_)
               (_%klass218620%_
                (let ((__tmp220994
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self218610%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx218606%_ __tmp220994)))
               (_%fields218622%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass218620%_
                           '5
                           '#f
                           '#f))))
               (_%args218628%_
                (map (lambda (_%g218623218625%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx218605%_ _%g218623218625%_)))
                     _%args218607%_))
               (_%inline-make-object218630%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self218610%_
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
                           _%self218610%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields218622%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass218633%_ _%klass218620%_)
               (_%$e218647%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass218633%_ '6 '#f '#f))))
          (if _%$e218647%_
              ((lambda (_%ctor218650%_)
                 (let ((_%$obj218652%_
                        (let ((__tmp220995
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp220995)))
                       (_%ctor-impl218653%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass218633%_
                           _%ctor218650%_))))
                   (let ((__tmp220996
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj218652%_ '())
                                                  (cons _%inline-make-object218630%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl218653%_
                                                            (let ((__tmp220997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl218653%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj218652%_ '()))
                                             _%args218628%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp220997
                       _%stx218606%_
                       _%ctx218605%_))
                    (let ((_%$ctor218655%_
                           (let ((__tmp220998
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp220998))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor218655%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218610%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj218652%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor218650%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor218655%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor218655%_ '()))
                              (cons (cons '%#ref (cons _%$obj218652%_ '()))
                                    _%args218628%_)))
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
                             _%self218610%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor218650%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj218652%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp220996 _%stx218606%_))))
               _%$e218647%_)
              (let ((_%$e218657%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass218633%_
                        '10
                        '#f
                        '#f))))
                (if _%$e218657%_
                    ((lambda (_%metaclass218660%_)
                       (let* ((_%$obj218662%_
                               (let ((__tmp220999
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp220999)))
                              (_%metakons218664%_
                               (let ((__tmp221000
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx218606%_
                                         _%metaclass218660%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp221000
                                  'instance-init!)))
                              (__tmp221001
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj218662%_
                                                             '())
                                                       (cons _%inline-make-object218630%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons218664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp221002
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons218664%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self218610%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj218662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args218628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp221002
                            _%stx218606%_
                            _%ctx218605%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self218610%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj218662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args218628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj218662%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp221001 _%stx218606%_)))
                     _%$e218657%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass218633%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp221003
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args218628%_))))
                              (declare (not safe))
                              (##fx= __tmp221003 _%fields218622%_))
                            (let ((__tmp221004
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self218610%_
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
                                              _%self218610%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args218628%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp221004
                               _%stx218606%_))
                            (let ((__tmp221006
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self218610%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp221005
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass218633%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx218606%_
                               __tmp221006
                               __tmp221005)))
                        (let ((_%$obj218669%_
                               (let ((__tmp221007
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp221007))))
                          (let _%lp218671%_ ((_%rest218673%_ _%args218628%_)
                                             (_%initializers218674%_ '()))
                            (let* ((_%__stx220477220478%_ _%rest218673%_)
                                   (_%g218678218699%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx220477220478%_)))))
                              (let ((_%__kont220479220480%_
                                     (lambda (_%g218680218753%_
                                              _%g218681218754%_
                                              _%g218682218755%_)
                                       (let* ((_%slot218782%_
                                               (let ((__tmp221008
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g218682218755%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp221008)))
                                              (_%off218784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass218633%_
                                                  _%slot218782%_))))
                                         (if _%off218784%_
                                             (_%lp218671%_
                                              _%g218680218753%_
                                              (cons (cons _%off218784%_
                                                          _%g218681218754%_)
                                                    _%initializers218674%_))
                                             (let ((__tmp221009
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218610%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx218606%_
                                                __tmp221009
                                                _%slot218782%_))))))
                                    (_%__kont220481220482%_
                                     (lambda ()
                                       (let ((__tmp221010
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj218669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object218630%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp221013
                                     (cons (cons '%#ref
                                                 (cons _%$obj218669%_ '()))
                                           '()))
                                    (__tmp221011
                                     (let ((__tmp221012
                                            (lambda (_%i218713%_ _%r218714%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self218610%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i218713%_) '()))
                              (cons (cons '%#ref (cons _%$obj218669%_ '()))
                                    (cons (cdr _%i218713%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r218714%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp221012
                                        '()
                                        _%initializers218674%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp221013 __tmp221011)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221010
                                          _%stx218606%_))))
                                    (_%__kont220483220484%_
                                     (lambda ()
                                       (let ((__tmp221014
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj218669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object218630%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args218628%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj218669%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221014
                                          _%stx218606%_)))))
                                (let* ((_%g218676218716%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx220477220478%_))
                                              (_%__kont220481220482%_)
                                              (_%__kont220483220484%_))))
                                       (_%__match220514220515%_
                                        (lambda (_%e218683218721%_
                                                 _%hd218684218724%_
                                                 _%tl218685218726%_
                                                 _%e218686218729%_
                                                 _%hd218687218732%_
                                                 _%tl218688218734%_
                                                 _%e218689218737%_
                                                 _%hd218690218740%_
                                                 _%tl218691218742%_
                                                 _%e218692218745%_
                                                 _%hd218693218748%_
                                                 _%tl218694218750%_)
                                          (let ((_%g218680218753%_
                                                 _%tl218694218750%_)
                                                (_%g218681218754%_
                                                 _%hd218693218748%_)
                                                (_%g218682218755%_
                                                 _%hd218690218740%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g218682218755%_))
                                                (_%__kont220479220480%_
                                                 _%g218680218753%_
                                                 _%g218681218754%_
                                                 _%g218682218755%_)
                                                (_%__kont220483220484%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx220477220478%_))
                                      (let ((_%e218683218721%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx220477220478%_))))
                                        (let ((_%tl218685218726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218683218721%_)))
                                              (_%hd218684218724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218683218721%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd218684218724%_))
                                              (let ((_%e218686218729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd218684218724%_))))
                                                (let ((_%tl218688218734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e218686218729%_)))
                                                      (_%hd218687218732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e218686218729%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd218687218732%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd218687218732%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl218688218734%_))
                      (let ((_%e218689218737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl218688218734%_))))
                        (let ((_%tl218691218742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218689218737%_)))
                              (_%hd218690218740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218689218737%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218691218742%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218685218726%_))
                                  (let ((_%e218692218745%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218685218726%_))))
                                    (let ((_%tl218694218750%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218692218745%_)))
                                          (_%hd218693218748%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218692218745%_))))
                                      (_%__match220514220515%_
                                       _%e218683218721%_
                                       _%hd218684218724%_
                                       _%tl218685218726%_
                                       _%e218686218729%_
                                       _%hd218687218732%_
                                       _%tl218688218734%_
                                       _%e218689218737%_
                                       _%hd218690218740%_
                                       _%tl218691218742%_
                                       _%e218692218745%_
                                       _%hd218693218748%_
                                       _%tl218694218750%_)))
                                  (_%__kont220483220484%_))
                              (_%__kont220483220484%_))))
                      (_%__kont220483220484%_))
                  (_%__kont220483220484%_))
              (_%__kont220483220484%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont220483220484%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g218676218716%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self218387%_ _%ctx218388%_ _%stx218389%_ _%args218390%_)
        (let* ((_%self218393%_ _%self218387%_)
               (_%arguments-ok?218403%_
                (let ((__method220958
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self218393%_ 'check-arguments))))
                  (if __method220958
                      (let ()
                        (declare (not safe))
                        (__method220958
                         _%self218393%_
                         _%ctx218388%_
                         _%stx218389%_
                         _%args218390%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self218393%_
                                 'check-arguments))
                        '#!void))))
               (_%g218405218415%_
                (lambda (_%g218406218412%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218406218412%_))))
               (_%g218404218479%_
                (lambda (_%g218406218418%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218406218418%_))
                      (let ((_%e218408218420%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g218406218418%_))))
                        (let ((_%hd218409218423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218408218420%_)))
                              (_%tl218410218425%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218408218420%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218410218425%_))
                              ((lambda (_%g218407218428%_)
                                 (let* ((_%klass218441%_
                                         (let ((__tmp221015
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218393%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx218389%_
                                            __tmp221015)))
                                        (_%field218443%_
                                         (let ((__tmp221016
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218393%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass218441%_
                                            __tmp221016)))
                                        (_%object218445%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx218388%_
                                            _%g218407218428%_)))
                                        (_%klass218448%_ _%klass218441%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass218448%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp221017
                                              (cons (if (or _%arguments-ok?218403%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218393%_
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
                                 _%self218393%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field218443%_ '()))
                        (cons _%object218445%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221017
                                          _%stx218389%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass218448%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp221018
                                                  (cons (if (or _%arguments-ok?218403%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218393%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218393%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field218443%_ '()))
                            (cons _%object218445%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221018
                                              _%stx218389%_))
                                           (let ((_%$e218467%_
                                                  (let ((__tmp221019
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self218393%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass218448%_
                                                     __tmp221019))))
                                             (if _%$e218467%_
                                                 ((lambda (_%klass218470%_)
                                                    (let ((__tmp221020
                                                           (cons (if (or _%arguments-ok?218403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218393%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self218393%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field218443%_ '()))
                                     (cons _%object218445%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp221020 _%stx218389%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e218467%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self218393%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp221021
                                                            (let ((_%$obj218476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp221022
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp221022))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj218476%_ '())
                                              (cons _%object218445%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass218448%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj218476%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218393%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218443%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj218476%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?218403%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj218476%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self218393%_
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
                                                             _%self218393%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj218476%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self218393%_
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
               (gxc#xform-wrap-source __tmp221021 _%stx218389%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp221023
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object218445%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218393%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp221023 _%stx218389%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd218409218423%_)
                              (_%g218405218415%_ _%g218406218418%_))))
                      (_%g218405218415%_ _%g218406218418%_)))))
          (_%g218404218479%_ _%args218390%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass220245 __method-table220246)
        (let ((__check-arguments220247
               (let ((__tmp221024
                      (lambda ()
                        (let ((__method220248
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220246
                                  'check-arguments
                                  '#f))))
                          (if __method220248
                              __method220248
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp221024)))
              (__slot220249
               (let ((__slot220250
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass220245 'slot))))
                 (if __slot220250
                     __slot220250
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self218387%_ _%ctx218388%_ _%stx218389%_ _%args218390%_)
            (let* ((_%self218393%_ _%self218387%_)
                   (_%arguments-ok?218403%_
                    ((force __check-arguments220247)
                     _%self218393%_
                     _%ctx218388%_
                     _%stx218389%_
                     _%args218390%_))
                   (_%g218405218415%_
                    (lambda (_%g218406218412%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g218406218412%_))))
                   (_%g218404218479%_
                    (lambda (_%g218406218418%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g218406218418%_))
                          (let ((_%e218408218420%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g218406218418%_))))
                            (let ((_%hd218409218423%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218408218420%_)))
                                  (_%tl218410218425%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218408218420%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218410218425%_))
                                  ((lambda (_%g218407218428%_)
                                     (let* ((_%klass218441%_
                                             (let ((__tmp221025
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218393%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx218389%_
                                                __tmp221025)))
                                            (_%field218443%_
                                             (let ((__tmp221026
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218393%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass218441%_
                                                __tmp221026)))
                                            (_%object218445%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx218388%_
                                                _%g218407218428%_)))
                                            (_%klass218448%_ _%klass218441%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass218448%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp221027
                                                  (cons (if (or _%arguments-ok?218403%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218393%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218393%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field218443%_ '()))
                            (cons _%object218445%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221027
                                              _%stx218389%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass218448%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp221028
                                                      (cons (if (or _%arguments-ok?218403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self218393%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218393%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field218443%_ '()))
                                (cons _%object218445%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp221028
                                                  _%stx218389%_))
                                               (let ((_%$e218467%_
                                                      (let ((__tmp221029
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self218393%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass218448%_ __tmp221029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e218467%_
                                                     ((lambda (_%klass218470%_)
                                                        (let ((__tmp221030
                                                               (cons (if (or _%arguments-ok?218403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218393%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self218393%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field218443%_ '()))
                                         (cons _%object218445%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp221030 _%stx218389%_)))
              _%$e218467%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self218393%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp221031
                                                                (let ((_%$obj218476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp221032
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp221032))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj218476%_ '())
                                                  (cons _%object218445%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass218448%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj218476%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218393%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field218443%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj218476%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?218403%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj218476%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self218393%_
                               __slot220249
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
                        (##unchecked-structure-ref _%self218393%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj218476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218393%_
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
                   (gxc#xform-wrap-source __tmp221031 _%stx218389%_))
                 (let ((__tmp221033
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object218445%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218393%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp221033 _%stx218389%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd218409218423%_)
                                  (_%g218405218415%_ _%g218406218418%_))))
                          (_%g218405218415%_ _%g218406218418%_)))))
              (_%g218404218479%_ _%args218390%_))))))
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
      (lambda (_%self218151%_ _%ctx218152%_ _%stx218153%_ _%args218154%_)
        (let* ((_%self218157%_ _%self218151%_)
               (_%arguments-ok?218167%_
                (let ((__method220959
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self218157%_ 'check-arguments))))
                  (if __method220959
                      (let ()
                        (declare (not safe))
                        (__method220959
                         _%self218157%_
                         _%ctx218152%_
                         _%stx218153%_
                         _%args218154%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self218157%_
                                 'check-arguments))
                        '#!void))))
               (_%g218169218183%_
                (lambda (_%g218170218180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218170218180%_))))
               (_%g218168218262%_
                (lambda (_%g218170218186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218170218186%_))
                      (let ((_%e218173218188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g218170218186%_))))
                        (let ((_%hd218174218191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218173218188%_)))
                              (_%tl218175218193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218173218188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218175218193%_))
                              (let ((_%e218176218196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl218175218193%_))))
                                (let ((_%hd218177218199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218176218196%_)))
                                      (_%tl218178218201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218176218196%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl218178218201%_))
                                      ((lambda (_%g218171218204%_
                                                _%g218172218205%_)
                                         (let* ((_%klass218221%_
                                                 (let ((__tmp221034
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218157%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx218153%_
                                                    __tmp221034)))
                                                (_%field218223%_
                                                 (let ((__tmp221035
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218157%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass218221%_
                                                    __tmp221035)))
                                                (_%object218225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx218152%_
                                                    _%g218172218205%_)))
                                                (_%value218227%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx218152%_
                                                    _%g218171218204%_)))
                                                (_%klass218230%_
                                                 _%klass218221%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass218230%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp221036
                                                      (cons (if (or _%arguments-ok?218167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self218157%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218157%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field218223%_ '()))
                                (cons _%object218225%_
                                      (cons _%value218227%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp221036
                                                  _%stx218153%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass218230%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp221037
                                                          (cons (if (or _%arguments-ok?218167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self218157%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218157%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218223%_ '()))
                                    (cons _%object218225%_
                                          (cons _%value218227%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp221037
                                                      _%stx218153%_))
                                                   (let ((_%$e218250%_
                                                          (let ((__tmp221038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218157%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass218230%_
                     __tmp221038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e218250%_
                                                         ((lambda (_%klass218253%_)
                                                            (let ((__tmp221039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?218167%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218157%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self218157%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field218223%_ '()))
                                             (cons _%object218225%_
                                                   (cons _%value218227%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221039 _%stx218153%_)))
                  _%$e218250%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self218157%_ '4 '#f '#f))
                     (let ((__tmp221040
                            (let ((_%$obj218259%_
                                   (let ((__tmp221041
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp221041))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj218259%_ '())
                                                      (cons _%object218225%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass218230%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj218259%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self218157%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field218223%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj218259%_
                                                              '()))
                                                  (cons _%value218227%_
                                                        '())))))
                          (cons (if _%arguments-ok?218167%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self218157%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value218227%_ '())))))
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
                             _%self218157%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj218259%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218157%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value218227%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp221040 _%stx218153%_))
                     (let ((__tmp221042
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object218225%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self218157%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value218227%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp221042
                        _%stx218153%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd218177218199%_
                                       _%hd218174218191%_)
                                      (_%g218169218183%_ _%g218170218186%_))))
                              (_%g218169218183%_ _%g218170218186%_))))
                      (_%g218169218183%_ _%g218170218186%_)))))
          (_%g218168218262%_ _%args218154%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass220251 __method-table220252)
        (let ((__check-arguments220253
               (let ((__tmp221043
                      (lambda ()
                        (let ((__method220254
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220252
                                  'check-arguments
                                  '#f))))
                          (if __method220254
                              __method220254
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp221043))))
          (lambda (_%self218151%_ _%ctx218152%_ _%stx218153%_ _%args218154%_)
            (let* ((_%self218157%_ _%self218151%_)
                   (_%arguments-ok?218167%_
                    ((force __check-arguments220253)
                     _%self218157%_
                     _%ctx218152%_
                     _%stx218153%_
                     _%args218154%_))
                   (_%g218169218183%_
                    (lambda (_%g218170218180%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g218170218180%_))))
                   (_%g218168218262%_
                    (lambda (_%g218170218186%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g218170218186%_))
                          (let ((_%e218173218188%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g218170218186%_))))
                            (let ((_%hd218174218191%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218173218188%_)))
                                  (_%tl218175218193%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218173218188%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218175218193%_))
                                  (let ((_%e218176218196%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218175218193%_))))
                                    (let ((_%hd218177218199%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218176218196%_)))
                                          (_%tl218178218201%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218176218196%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl218178218201%_))
                                          ((lambda (_%g218171218204%_
                                                    _%g218172218205%_)
                                             (let* ((_%klass218221%_
                                                     (let ((__tmp221044
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218157%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx218153%_
                                                        __tmp221044)))
                                                    (_%field218223%_
                                                     (let ((__tmp221045
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218157%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass218221%_
                                                        __tmp221045)))
                                                    (_%object218225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx218152%_
                                                        _%g218172218205%_)))
                                                    (_%value218227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx218152%_
                                                        _%g218171218204%_)))
                                                    (_%klass218230%_
                                                     _%klass218221%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass218230%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp221046
                                                          (cons (if (or _%arguments-ok?218167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self218157%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218157%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218223%_ '()))
                                    (cons _%object218225%_
                                          (cons _%value218227%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp221046
                                                      _%stx218153%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass218230%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp221047
                                                              (cons (if (or _%arguments-ok?218167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self218157%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218157%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field218223%_ '()))
                                        (cons _%object218225%_
                                              (cons _%value218227%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp221047 _%stx218153%_))
               (let ((_%$e218250%_
                      (let ((__tmp221048
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218157%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass218230%_
                         __tmp221048))))
                 (if _%$e218250%_
                     ((lambda (_%klass218253%_)
                        (let ((__tmp221049
                               (cons (if (or _%arguments-ok?218167%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self218157%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self218157%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field218223%_
                                                             '()))
                                                 (cons _%object218225%_
                                                       (cons _%value218227%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp221049 _%stx218153%_)))
                      _%$e218250%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218157%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp221050
                                (let ((_%$obj218259%_
                                       (let ((__tmp221051
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp221051))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj218259%_
                                                                '())
                                                          (cons _%object218225%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass218230%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj218259%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self218157%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field218223%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value218227%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?218167%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj218259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self218157%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value218227%_ '())))))
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
                                 _%self218157%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj218259%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218157%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value218227%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp221050 _%stx218153%_))
                         (let ((__tmp221052
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object218225%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self218157%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value218227%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp221052
                            _%stx218153%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd218177218199%_
                                           _%hd218174218191%_)
                                          (_%g218169218183%_
                                           _%g218170218186%_))))
                                  (_%g218169218183%_ _%g218170218186%_))))
                          (_%g218169218183%_ _%g218170218186%_)))))
              (_%g218168218262%_ _%args218154%_))))))
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
      (lambda (_%self217967%_ _%ctx217968%_ _%stx217969%_ _%args217970%_)
        (let* ((_%self217973%_ _%self217967%_)
               (_%self217982217992%_ _%self217973%_)
               (_%E217984217995%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self217982217992%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K217985218005%_
                (lambda (_%inline217998%_ _%dispatch217999%_ _%arity218000%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self217973%_
                         _%args217970%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx217969%_
                         _%arity218000%_)))
                  (if _%inline217998%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp221053 (_%inline217998%_ _%stx217969%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp221053
                           _%stx217969%_
                           _%ctx217968%_)))
                      (if (and _%dispatch217999%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch217999%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch217999%_))
                            (let ((__tmp221054
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch217999%_
                                                           '()))
                                               _%args217970%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp221054
                               _%stx217969%_
                               _%ctx217968%_)))
                          (gxc#!procedure::optimize-call
                           _%self217973%_
                           _%ctx217968%_
                           _%stx217969%_
                           _%args217970%_)))))
               (_%e217986218008%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217982217992%_ '1 '#f '#f)))
               (_%e217987218011%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217982217992%_ '2 '#f '#f)))
               (_%e217988218014%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217982217992%_ '3 '#f '#f)))
               (_%arity218017%_ _%e217988218014%_)
               (_%e217989218019%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217982217992%_ '4 '#f '#f)))
               (_%dispatch218022%_ _%e217989218019%_)
               (_%e217990218024%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217982217992%_ '5 '#f '#f)))
               (_%inline218027%_ _%e217990218024%_))
          (_%K217985218005%_
           _%inline218027%_
           _%dispatch218022%_
           _%arity218017%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self217819%_ _%ctx217820%_ _%stx217821%_ _%args217822%_)
        (let* ((_%self217825%_ _%self217819%_)
               (_%$e217839%_
                (let ((__tmp221056
                       (lambda (_%g217834217836%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g217834217836%_
                            _%args217822%_))))
                      (__tmp221055
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self217825%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp221056 __tmp221055))))
          (if _%$e217839%_
              ((lambda (_%clause217842%_)
                 (let ((__method220960
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause217842%_ 'optimize-call))))
                   (if __method220960
                       (let ()
                         (declare (not safe))
                         (__method220960
                          _%clause217842%_
                          _%ctx217820%_
                          _%stx217821%_
                          _%args217822%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause217842%_
                                  'optimize-call))
                         '#!void))))
               _%$e217839%_)
              (let ((__tmp221057
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self217825%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx217821%_
                 __tmp221057))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self217560%_ _%ctx217561%_ _%stx217562%_ _%args217563%_)
        (let* ((_%self217566%_ _%self217560%_)
               (_%self217575217584%_ _%self217566%_)
               (_%E217577217587%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self217575217584%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K217578217678%_
                (lambda (_%dispatch217590%_ _%table217591%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch217590%_))
                      (let* ((_%g217592217602%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch217590%_)))
                             (_%else217594217610%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch217590%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx217561%_
                                   _%stx217562%_))))
                             (_%K217596217659%_
                              (lambda (_%main217613%_ _%keys217614%_)
                                (let ((_g221058_
                                       (gxc#!kw-lambda-split-args
                                        _%stx217562%_
                                        _%args217563%_)))
                                  (begin
                                    (let ((_g221059_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g221058_)
                                                 (##values-length _g221058_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g221059_ 2)))
                                          (error "Context expects 2 values"
                                                 _g221059_)))
                                    (let ((_%pargs217616%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g221058_ 0)))
                                          (_%kwargs217617%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g221058_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main217613%_))
                                        (if _%table217591%_
                                            (let ((_%xargs217625%_
                                                   (map (lambda (_%key217619%_)
                                                          (let ((_%$e217621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key217619%_ _%kwargs217617%_))))
                    (if _%$e217621%_ _%$e217621%_ '(%#ref absent-value))))
                _%keys217614%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw217627%_)
                                                 (if (memq (car _%kw217627%_)
                                                           _%keys217614%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx217562%_
                                                        _%keys217614%_
                                                        _%kw217627%_))))
                                               _%kwargs217617%_)
                                              (let ((__tmp221060
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main217613%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs217616%_
                                  _%xargs217625%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp221060
                                                 _%stx217562%_
                                                 _%ctx217561%_)))
                                            (let* ((_%kwt217629%_
                                                    (let ((__tmp221061
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp221061)))
                                                   (_%kwvars217633%_
                                                    (map (lambda (_%_217631%_)
                                                           (let ((__tmp221062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp221062)))
                 _%kwargs217617%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind217638%_
                                                    (map (lambda (_%kw217635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217636%_)
                   (cons (cons _%kwvar217636%_ '())
                         (cons (cdr _%kw217635%_) '())))
                 _%kwargs217617%_
                 _%kwvars217633%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset217643%_
                                                    (map (lambda (_%kw217640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217641%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt217629%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw217640%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar217641%_
                                                             '()))
                                                 '()))))))
                 _%kwargs217617%_
                 _%kwvars217633%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs217648%_
                                                    (map (lambda (_%kw217645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217646%_)
                   (cons (car _%kw217645%_)
                         (cons '%#ref (cons _%kwvar217646%_ '()))))
                 _%kwargs217617%_
                 _%kwvars217633%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs217656%_
                                                    (map (lambda (_%key217650%_)
                                                           (let ((_%$e217652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key217650%_ _%xkwargs217648%_))))
                     (if _%$e217652%_ _%$e217652%_ '(%#ref absent-value))))
                 _%keys217614%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp221063
                                                    (cons '%#let-values
                                                          (cons _%kwbind217638%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt217629%_ '())
                                                      (cons (let ((__tmp221064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs217617%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221064 _%stx217562%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp221065
                                                             (cons (let ((__tmp221066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main217613%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt217629%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs217616%_
                                                       _%xargs217656%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp221066 _%stx217562%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp221065 _%kwset217643%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp221063
                                               _%stx217562%_
                                               _%ctx217561%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g217592217602%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e217597217662%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217592217602%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e217598217665%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217592217602%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e217599217668%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217592217602%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys217671%_ _%e217599217668%_)
                                   (_%e217600217673%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217592217602%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main217676%_ _%e217600217673%_))
                              (_%K217596217659%_
                               _%main217676%_
                               _%keys217671%_))
                            (_%else217594217610%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx217561%_ _%stx217562%_)))))
               (_%e217579217681%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217575217584%_ '1 '#f '#f)))
               (_%e217580217684%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217575217584%_ '2 '#f '#f)))
               (_%e217581217687%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217575217584%_ '3 '#f '#f)))
               (_%table217690%_ _%e217581217687%_)
               (_%e217582217692%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217575217584%_ '4 '#f '#f)))
               (_%dispatch217695%_ _%e217582217692%_))
          (_%K217578217678%_ _%dispatch217695%_ _%table217690%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx217173%_ _%args217174%_)
        (let _%lp217176%_ ((_%rest217178%_ _%args217174%_)
                           (_%pargs217179%_ '())
                           (_%kwargs217180%_ '()))
          (let* ((_%__stx220519220520%_ _%rest217178%_)
                 (_%g217186217238%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx220519220520%_)))))
            (let ((_%__kont220521220522%_
                   (lambda (_%g217188217417%_ _%g217189217418%_)
                     (_%lp217176%_
                      _%g217188217417%_
                      (cons _%g217189217418%_ _%pargs217179%_)
                      _%kwargs217180%_)))
                  (_%__kont220523220524%_
                   (lambda (_%g217203217363%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1
                                cons
                                _%g217203217363%_
                                _%pargs217179%_))
                             (reverse _%kwargs217180%_))))
                  (_%__kont220525220526%_
                   (lambda (_%g217214217310%_
                            _%g217215217311%_
                            _%g217216217312%_)
                     (let ((_%kw217329%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g217216217312%_))))
                       (if (assq _%kw217329%_ _%kwargs217180%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx217173%_
                              _%kw217329%_))
                           (_%lp217176%_
                            _%g217214217310%_
                            _%pargs217179%_
                            (cons (cons _%kw217329%_ _%g217215217311%_)
                                  _%kwargs217180%_))))))
                  (_%__kont220527220528%_
                   (lambda (_%g217229217258%_ _%g217230217259%_)
                     (_%lp217176%_
                      _%g217229217258%_
                      (cons _%g217230217259%_ _%pargs217179%_)
                      _%kwargs217180%_)))
                  (_%__kont220529220530%_
                   (lambda ()
                     (values (reverse _%pargs217179%_)
                             (reverse _%kwargs217180%_)))))
              (let ((_%__match220626220627%_
                     (lambda (_%e217217217278%_
                              _%hd217218217281%_
                              _%tl217219217283%_
                              _%e217220217286%_
                              _%hd217221217289%_
                              _%tl217222217291%_
                              _%e217223217294%_
                              _%hd217224217297%_
                              _%tl217225217299%_
                              _%e217226217302%_
                              _%hd217227217305%_
                              _%tl217228217307%_)
                       (let ((_%g217214217310%_ _%tl217228217307%_)
                             (_%g217215217311%_ _%hd217227217305%_)
                             (_%g217216217312%_ _%hd217224217297%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g217216217312%_))
                             (_%__kont220525220526%_
                              _%g217214217310%_
                              _%g217215217311%_
                              _%g217216217312%_)
                             (_%__kont220527220528%_
                              _%tl217219217283%_
                              _%hd217218217281%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx220519220520%_))
                    (let ((_%e217190217382%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx220519220520%_))))
                      (let ((_%tl217192217387%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217190217382%_)))
                            (_%hd217191217385%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217190217382%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd217191217385%_))
                            (let ((_%e217193217390%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd217191217385%_))))
                              (let ((_%tl217195217395%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e217193217390%_)))
                                    (_%hd217194217393%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e217193217390%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd217194217393%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd217194217393%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217195217395%_))
                                            (let ((_%e217196217398%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl217195217395%_))))
                                              (let ((_%tl217198217403%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217196217398%_)))
                                                    (_%hd217197217401%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217196217398%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd217197217401%_))
                                                    (let ((_%e217199217406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd217197217401%_))))
                                                      (if (equal? _%e217199217406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl217198217403%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl217192217387%_))
                          (let ((_%e217200217409%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl217192217387%_))))
                            (let ((_%tl217202217414%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217200217409%_)))
                                  (_%hd217201217412%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217200217409%_))))
                              (_%__kont220521220522%_
                               _%tl217202217414%_
                               _%hd217201217412%_)))
                          (_%__kont220527220528%_
                           _%tl217192217387%_
                           _%hd217191217385%_))
                      (_%__kont220527220528%_
                       _%tl217192217387%_
                       _%hd217191217385%_))
                  (if (equal? _%e217199217406%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217198217403%_))
                          (_%__kont220523220524%_ _%tl217192217387%_)
                          (_%__kont220527220528%_
                           _%tl217192217387%_
                           _%hd217191217385%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217198217403%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217192217387%_))
                              (let ((_%e217226217302%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl217192217387%_))))
                                (let ((_%tl217228217307%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217226217302%_)))
                                      (_%hd217227217305%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217226217302%_))))
                                  (_%__match220626220627%_
                                   _%e217190217382%_
                                   _%hd217191217385%_
                                   _%tl217192217387%_
                                   _%e217193217390%_
                                   _%hd217194217393%_
                                   _%tl217195217395%_
                                   _%e217196217398%_
                                   _%hd217197217401%_
                                   _%tl217198217403%_
                                   _%e217226217302%_
                                   _%hd217227217305%_
                                   _%tl217228217307%_)))
                              (_%__kont220527220528%_
                               _%tl217192217387%_
                               _%hd217191217385%_))
                          (_%__kont220527220528%_
                           _%tl217192217387%_
                           _%hd217191217385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl217198217403%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl217192217387%_))
                                                            (let ((_%e217226217302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl217192217387%_))))
                      (let ((_%tl217228217307%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217226217302%_)))
                            (_%hd217227217305%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217226217302%_))))
                        (_%__match220626220627%_
                         _%e217190217382%_
                         _%hd217191217385%_
                         _%tl217192217387%_
                         _%e217193217390%_
                         _%hd217194217393%_
                         _%tl217195217395%_
                         _%e217196217398%_
                         _%hd217197217401%_
                         _%tl217198217403%_
                         _%e217226217302%_
                         _%hd217227217305%_
                         _%tl217228217307%_)))
                    (_%__kont220527220528%_
                     _%tl217192217387%_
                     _%hd217191217385%_))
                (_%__kont220527220528%_
                 _%tl217192217387%_
                 _%hd217191217385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont220527220528%_
                                             _%tl217192217387%_
                                             _%hd217191217385%_))
                                        (_%__kont220527220528%_
                                         _%tl217192217387%_
                                         _%hd217191217385%_))
                                    (_%__kont220527220528%_
                                     _%tl217192217387%_
                                     _%hd217191217385%_))))
                            (_%__kont220527220528%_
                             _%tl217192217387%_
                             _%hd217191217385%_))))
                    (_%__kont220529220530%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self217157%_ _%ctx217158%_ _%stx217159%_ _%args217160%_)
        (let ((_%self217163%_ _%self217157%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx217158%_ _%stx217159%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self216847%_ _%stx216848%_)
        (let* ((_%__stx220635220636%_ _%stx216848%_)
               (_%g216851216891%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220635220636%_)))))
          (let ((_%__kont220637220638%_
                 (lambda (_%g216853216995%_ _%g216854216996%_)
                   (let ((_%$e217023%_
                          (member 'return:
                                  (let ((__tmp221067
                                         (lambda (_%g217015217018%_
                                                  _%g217016217020%_)
                                           (cons _%g217015217018%_
                                                 _%g217016217020%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp221067
                                     '()
                                     _%g216854216996%_))
                                  gx#stx-eq?)))
                     (if _%$e217023%_
                         ((lambda (_%tail217026%_)
                            (let ((_%type217028%_
                                   (let ((__tmp221068
                                          (let ((__tmp221069
                                                 (cadr _%tail217026%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp221069))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx216848%_
                                      __tmp221068))))
                              (gxc#check-return-type!
                               _%stx216848%_
                               _%g216853216995%_
                               _%type217028%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self216847%_
                                 _%g216853216995%_))))
                          _%$e217023%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self216847%_
                            _%g216853216995%_))))))
                (_%__kont220641220642%_
                 (lambda (_%g216876216920%_ _%g216877216921%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self216847%_ _%g216876216920%_)))))
            (let ((_%__match220672220673%_
                   (lambda (_%e216855216941%_
                            _%hd216856216944%_
                            _%tl216857216946%_
                            _%e216858216949%_
                            _%hd216859216952%_
                            _%tl216860216954%_
                            _%e216861216957%_
                            _%hd216862216960%_
                            _%tl216863216962%_
                            _%__splice220639220640%_
                            _%target216864216965%_
                            _%tl216866216967%_)
                     (letrec ((_%loop216867216970%_
                               (lambda (_%hd216865216973%_
                                        _%signature216871216975%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd216865216973%_))
                                     (let ((_%e216868216977%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd216865216973%_))))
                                       (let ((_%lp-tl216870216982%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e216868216977%_)))
                                             (_%lp-hd216869216980%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e216868216977%_))))
                                         (_%loop216867216970%_
                                          _%lp-tl216870216982%_
                                          (cons _%lp-hd216869216980%_
                                                _%signature216871216975%_))))
                                     (let ((_%signature216872216985%_
                                            (reverse _%signature216871216975%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl216860216954%_))
                                           (let ((_%e216873216987%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl216860216954%_))))
                                             (let ((_%tl216875216992%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e216873216987%_)))
                                                   (_%hd216874216990%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e216873216987%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl216875216992%_))
                                                   (_%__kont220637220638%_
                                                    _%hd216874216990%_
                                                    _%signature216872216985%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g216851216891%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g216851216891%_))))))))
                       (_%loop216867216970%_ _%target216864216965%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220635220636%_))
                  (let ((_%e216855216941%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220635220636%_))))
                    (let ((_%tl216857216946%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216855216941%_)))
                          (_%hd216856216944%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216855216941%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216857216946%_))
                          (let ((_%e216858216949%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216857216946%_))))
                            (let ((_%tl216860216954%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216858216949%_)))
                                  (_%hd216859216952%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216858216949%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd216859216952%_))
                                  (let ((_%e216861216957%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216859216952%_))))
                                    (let ((_%tl216863216962%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216861216957%_)))
                                          (_%hd216862216960%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216861216957%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd216862216960%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd216862216960%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl216863216962%_))
                                                  (let ((_%__splice220639220640%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl216863216962%_
                                                            '0))))
                                                    (let ((_%tl216866216967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220639220640%_
                                                              '1)))
                                                          (_%target216864216965%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220639220640%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216866216967%_))
                                                          (_%__match220672220673%_
                                                           _%e216855216941%_
                                                           _%hd216856216944%_
                                                           _%tl216857216946%_
                                                           _%e216858216949%_
                                                           _%hd216859216952%_
                                                           _%tl216860216954%_
                                                           _%e216861216957%_
                                                           _%hd216862216960%_
                                                           _%tl216863216962%_
                                                           _%__splice220639220640%_
                                                           _%target216864216965%_
                                                           _%tl216866216967%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl216860216954%_))
                      (let ((_%e216884216912%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216860216954%_))))
                        (let ((_%tl216886216917%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216884216912%_)))
                              (_%hd216885216915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216884216912%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216886216917%_))
                              (_%__kont220641220642%_
                               _%hd216885216915%_
                               _%hd216859216952%_)
                              (let ()
                                (declare (not safe))
                                (_%g216851216891%_)))))
                      (let () (declare (not safe)) (_%g216851216891%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216860216954%_))
                                                      (let ((_%e216884216912%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216860216954%_))))
                (let ((_%tl216886216917%_
                       (let () (declare (not safe)) (##cdr _%e216884216912%_)))
                      (_%hd216885216915%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216884216912%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216886216917%_))
                      (_%__kont220641220642%_
                       _%hd216885216915%_
                       _%hd216859216952%_)
                      (let () (declare (not safe)) (_%g216851216891%_)))))
              (let () (declare (not safe)) (_%g216851216891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216860216954%_))
                                                  (let ((_%e216884216912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216860216954%_))))
                                                    (let ((_%tl216886216917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216884216912%_)))
                                                          (_%hd216885216915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216884216912%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216886216917%_))
                                                          (_%__kont220641220642%_
                                                           _%hd216885216915%_
                                                           _%hd216859216952%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216851216891%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216851216891%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216860216954%_))
                                              (let ((_%e216884216912%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216860216954%_))))
                                                (let ((_%tl216886216917%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216884216912%_)))
                                                      (_%hd216885216915%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216884216912%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216886216917%_))
                                                      (_%__kont220641220642%_
                                                       _%hd216885216915%_
                                                       _%hd216859216952%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216851216891%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216851216891%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216860216954%_))
                                      (let ((_%e216884216912%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216860216954%_))))
                                        (let ((_%tl216886216917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216884216912%_)))
                                              (_%hd216885216915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216884216912%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216886216917%_))
                                              (_%__kont220641220642%_
                                               _%hd216885216915%_
                                               _%hd216859216952%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g216851216891%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216851216891%_))))))
                          (let () (declare (not safe)) (_%g216851216891%_)))))
                  (let () (declare (not safe)) (_%g216851216891%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx216822%_ _%expr216823%_ _%type216824%_)
        (let ((_%$e216826%_ (not _%type216824%_)))
          (if _%$e216826%_
              _%$e216826%_
              (let ((_%$e216829%_
                     (eq? (##structure-ref _%type216824%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e216829%_
                    _%$e216829%_
                    (let ((_%$e216832%_
                           (eq? (##structure-ref
                                 _%type216824%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e216832%_
                          _%$e216832%_
                          (let ((_%expr-type216836%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr216823%_))))
                            (if (not _%expr-type216836%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx216822%_
                                   _%type216824%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type216836%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx216822%_
                                       _%type216824%_
                                       _%expr-type216836%_))
                                    (let ((_%$e216840%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type216836%_
                                              'gxc#!abort::t))))
                                      (if _%$e216840%_
                                          _%$e216840%_
                                          (let ((_%$e216843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type216836%_
                                                    _%type216824%_))))
                                            (if _%$e216843%_
                                                _%$e216843%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx216822%_
                                                   _%type216824%_
                                                   _%expr-type216836%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self216248%_ _%stx216249%_)
        (let* ((_%__stx220717220718%_ _%stx216249%_)
               (_%g216254216364%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220717220718%_)))))
          (let ((_%__kont220719220720%_
                 (lambda (_%g216256216796%_
                          _%g216257216797%_
                          _%g216258216798%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g216258216798%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self216248%_ _%g216257216797%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self216248%_
                          _%g216256216796%_)))))
                (_%__kont220721220722%_
                 (lambda (_%g216277216622%_
                          _%g216278216623%_
                          _%g216279216624%_
                          _%g216280216625%_)
                   (let ((_%$e216657%_
                          (let ((__tmp221070
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g216280216625%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp221070))))
                     (if _%$e216657%_
                         ((lambda (_%pred-type216660%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type216660%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type216660%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test216665%_
                                        (let ((__tmp221071
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g216280216625%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g216279216624%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp221071
                                           _%stx216249%_
                                           _%self216248%_)))
                                       (_%K216669%_
                                        (let ((__tmp221072
                                               (lambda ()
                                                 (let ((__tmp221075
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self216248%_
                                                             _%g216278216623%_))))
                                                       (__tmp221073
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g216279216624%_))
                            (let ((__tmp221074
                                   (##structure-ref
                                    _%pred-type216660%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx216249%_
                               __tmp221074)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp221075
                                                    gxc#current-compile-path-type
                                                    __tmp221073)))))
                                          (declare (not safe))
                                          (__make-promise __tmp221072)))
                                       (_%E216672%_
                                        (let ((__tmp221076
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self216248%_
                                                    _%g216277216622%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp221076)))
                                       (_%__stx220695220696%_ _%test216665%_)
                                       (_%g216676216690%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx220695220696%_)))))
                                  (let ((_%__kont220697220698%_
                                         (lambda (_%g216678216718%_
                                                  _%g216679216719%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g216678216718%_))
                                               (force _%K216669%_)
                                               (force _%E216672%_))))
                                        (_%__kont220699220700%_
                                         (lambda ()
                                           (let ((__tmp221077
                                                  (cons '%#if
                                                        (cons _%test216665%_
                                                              (cons (force _%K216669%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E216672%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp221077
                                              _%stx216249%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx220695220696%_))
                                        (let ((_%e216680216702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx220695220696%_))))
                                          (let ((_%tl216682216707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e216680216702%_)))
                                                (_%hd216681216705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e216680216702%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl216682216707%_))
                                                (let ((_%e216683216710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl216682216707%_))))
                                                  (let ((_%tl216685216715%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e216683216710%_)))
                                                        (_%hd216684216713%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e216683216710%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl216685216715%_))
                                                        (_%__kont220697220698%_
                                                         _%hd216684216713%_
                                                         _%hd216681216705%_)
                                                        (_%__kont220699220700%_))))
                                                (_%__kont220699220700%_))))
                                        (_%__kont220699220700%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self216248%_
                                   _%stx216249%_))))
                          _%$e216657%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self216248%_
                            _%stx216249%_))))))
                (_%__kont220723220724%_
                 (lambda (_%g216314216498%_
                          _%g216315216499%_
                          _%g216316216500%_
                          _%g216317216501%_)
                   (gxc#optimize-if%
                    _%self216248%_
                    (let ((__tmp221078
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g216316216500%_
                                       (cons _%g216314216498%_
                                             (cons _%g216315216499%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp221078 _%stx216249%_)))))
                (_%__kont220725220726%_
                 (lambda (_%g216345216401%_
                          _%g216346216402%_
                          _%g216347216403%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self216248%_ _%stx216249%_)))))
            (let ((_%__match220924220925%_
                   (lambda (_%e216318216426%_
                            _%hd216319216429%_
                            _%tl216320216431%_
                            _%e216321216434%_
                            _%hd216322216437%_
                            _%tl216323216439%_
                            _%e216324216442%_
                            _%hd216325216445%_
                            _%tl216326216447%_
                            _%e216327216450%_
                            _%hd216328216453%_
                            _%tl216329216455%_
                            _%e216330216458%_
                            _%hd216331216461%_
                            _%tl216332216463%_
                            _%e216333216466%_
                            _%hd216334216469%_
                            _%tl216335216471%_
                            _%e216336216474%_
                            _%hd216337216477%_
                            _%tl216338216479%_
                            _%e216339216482%_
                            _%hd216340216485%_
                            _%tl216341216487%_
                            _%e216342216490%_
                            _%hd216343216493%_
                            _%tl216344216495%_)
                     (let ((_%g216314216498%_ _%hd216343216493%_)
                           (_%g216315216499%_ _%hd216340216485%_)
                           (_%g216316216500%_ _%hd216337216477%_)
                           (_%g216317216501%_ _%hd216334216469%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g216317216501%_ 'not))
                           (_%__kont220723220724%_
                            _%g216314216498%_
                            _%g216315216499%_
                            _%g216316216500%_
                            _%g216317216501%_)
                           (_%__kont220725220726%_
                            _%hd216343216493%_
                            _%hd216340216485%_
                            _%hd216322216437%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220717220718%_))
                  (let ((_%e216259216748%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220717220718%_))))
                    (let ((_%tl216261216753%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216259216748%_)))
                          (_%hd216260216751%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216259216748%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216261216753%_))
                          (let ((_%e216262216756%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216261216753%_))))
                            (let ((_%tl216264216761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216262216756%_)))
                                  (_%hd216263216759%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216262216756%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd216263216759%_))
                                  (let ((_%e216265216764%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216263216759%_))))
                                    (let ((_%tl216267216769%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216265216764%_)))
                                          (_%hd216266216767%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216265216764%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd216266216767%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd216266216767%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216267216769%_))
                                                  (let ((_%e216268216772%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216267216769%_))))
                                                    (let ((_%tl216270216777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216268216772%_)))
                                                          (_%hd216269216775%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216268216772%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216270216777%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl216264216761%_))
                      (let ((_%e216271216780%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216264216761%_))))
                        (let ((_%tl216273216785%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216271216780%_)))
                              (_%hd216272216783%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216271216780%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216273216785%_))
                              (let ((_%e216274216788%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216273216785%_))))
                                (let ((_%tl216276216793%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216274216788%_)))
                                      (_%hd216275216791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216274216788%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216276216793%_))
                                      (_%__kont220719220720%_
                                       _%hd216275216791%_
                                       _%hd216272216783%_
                                       _%hd216269216775%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g216254216364%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g216254216364%_)))))
                      (let () (declare (not safe)) (_%g216254216364%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216264216761%_))
                      (let ((_%e216354216385%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216264216761%_))))
                        (let ((_%tl216356216390%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216354216385%_)))
                              (_%hd216355216388%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216354216385%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216356216390%_))
                              (let ((_%e216357216393%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216356216390%_))))
                                (let ((_%tl216359216398%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216357216393%_)))
                                      (_%hd216358216396%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216357216393%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216359216398%_))
                                      (_%__kont220725220726%_
                                       _%hd216358216396%_
                                       _%hd216355216388%_
                                       _%hd216263216759%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g216254216364%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g216254216364%_)))))
                      (let () (declare (not safe)) (_%g216254216364%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216264216761%_))
                                                      (let ((_%e216354216385%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216264216761%_))))
                (let ((_%tl216356216390%_
                       (let () (declare (not safe)) (##cdr _%e216354216385%_)))
                      (_%hd216355216388%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216354216385%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216356216390%_))
                      (let ((_%e216357216393%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216356216390%_))))
                        (let ((_%tl216359216398%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216357216393%_)))
                              (_%hd216358216396%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216357216393%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216359216398%_))
                              (_%__kont220725220726%_
                               _%hd216358216396%_
                               _%hd216355216388%_
                               _%hd216263216759%_)
                              (let ()
                                (declare (not safe))
                                (_%g216254216364%_)))))
                      (let () (declare (not safe)) (_%g216254216364%_)))))
              (let () (declare (not safe)) (_%g216254216364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd216266216767%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216267216769%_))
                                                      (let ((_%e216290216558%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216267216769%_))))
                (let ((_%tl216292216563%_
                       (let () (declare (not safe)) (##cdr _%e216290216558%_)))
                      (_%hd216291216561%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216290216558%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd216291216561%_))
                      (let ((_%e216293216566%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd216291216561%_))))
                        (let ((_%tl216295216571%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216293216566%_)))
                              (_%hd216294216569%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216293216566%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd216294216569%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd216294216569%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216295216571%_))
                                      (let ((_%e216296216574%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216295216571%_))))
                                        (let ((_%tl216298216579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216296216574%_)))
                                              (_%hd216297216577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216296216574%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216298216579%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216292216563%_))
                                                  (let ((_%e216299216582%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216292216563%_))))
                                                    (let ((_%tl216301216587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216299216582%_)))
                                                          (_%hd216300216585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216299216582%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd216300216585%_))
                                                          (let ((_%e216302216590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd216300216585%_))))
                    (let ((_%tl216304216595%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216302216590%_)))
                          (_%hd216303216593%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216302216590%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd216303216593%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd216303216593%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216304216595%_))
                                  (let ((_%e216305216598%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216304216595%_))))
                                    (let ((_%tl216307216603%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216305216598%_)))
                                          (_%hd216306216601%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216305216598%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216307216603%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216301216587%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216264216761%_))
                                                  (let ((_%e216308216606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216264216761%_))))
                                                    (let ((_%tl216310216611%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216308216606%_)))
                                                          (_%hd216309216609%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216308216606%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216310216611%_))
                                                          (let ((_%e216311216614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216310216611%_))))
                    (let ((_%tl216313216619%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216311216614%_)))
                          (_%hd216312216617%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216311216614%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216313216619%_))
                          (_%__kont220721220722%_
                           _%hd216312216617%_
                           _%hd216309216609%_
                           _%hd216306216601%_
                           _%hd216297216577%_)
                          (let () (declare (not safe)) (_%g216254216364%_)))))
                  (let () (declare (not safe)) (_%g216254216364%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216254216364%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216264216761%_))
                                                  (let ((_%e216354216385%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216264216761%_))))
                                                    (let ((_%tl216356216390%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216354216385%_)))
                                                          (_%hd216355216388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216354216385%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216356216390%_))
                                                          (let ((_%e216357216393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216356216390%_))))
                    (let ((_%tl216359216398%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216357216393%_)))
                          (_%hd216358216396%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216357216393%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216359216398%_))
                          (_%__kont220725220726%_
                           _%hd216358216396%_
                           _%hd216355216388%_
                           _%hd216263216759%_)
                          (let () (declare (not safe)) (_%g216254216364%_)))))
                  (let () (declare (not safe)) (_%g216254216364%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216254216364%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216301216587%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216264216761%_))
                                                  (let ((_%e216339216482%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216264216761%_))))
                                                    (let ((_%tl216341216487%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216339216482%_)))
                                                          (_%hd216340216485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216339216482%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216341216487%_))
                                                          (let ((_%e216342216490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216341216487%_))))
                    (let ((_%tl216344216495%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216342216490%_)))
                          (_%hd216343216493%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216342216490%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216344216495%_))
                          (_%__match220924220925%_
                           _%e216259216748%_
                           _%hd216260216751%_
                           _%tl216261216753%_
                           _%e216262216756%_
                           _%hd216263216759%_
                           _%tl216264216761%_
                           _%e216265216764%_
                           _%hd216266216767%_
                           _%tl216267216769%_
                           _%e216290216558%_
                           _%hd216291216561%_
                           _%tl216292216563%_
                           _%e216293216566%_
                           _%hd216294216569%_
                           _%tl216295216571%_
                           _%e216296216574%_
                           _%hd216297216577%_
                           _%tl216298216579%_
                           _%e216299216582%_
                           _%hd216300216585%_
                           _%tl216301216587%_
                           _%e216339216482%_
                           _%hd216340216485%_
                           _%tl216341216487%_
                           _%e216342216490%_
                           _%hd216343216493%_
                           _%tl216344216495%_)
                          (let () (declare (not safe)) (_%g216254216364%_)))))
                  (let () (declare (not safe)) (_%g216254216364%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216254216364%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216264216761%_))
                                                  (let ((_%e216354216385%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216264216761%_))))
                                                    (let ((_%tl216356216390%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216354216385%_)))
                                                          (_%hd216355216388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216354216385%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216356216390%_))
                                                          (let ((_%e216357216393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216356216390%_))))
                    (let ((_%tl216359216398%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216357216393%_)))
                          (_%hd216358216396%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216357216393%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216359216398%_))
                          (_%__kont220725220726%_
                           _%hd216358216396%_
                           _%hd216355216388%_
                           _%hd216263216759%_)
                          (let () (declare (not safe)) (_%g216254216364%_)))))
                  (let () (declare (not safe)) (_%g216254216364%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216254216364%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216301216587%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216264216761%_))
                                          (let ((_%e216339216482%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216264216761%_))))
                                            (let ((_%tl216341216487%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216339216482%_)))
                                                  (_%hd216340216485%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216339216482%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216341216487%_))
                                                  (let ((_%e216342216490%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216341216487%_))))
                                                    (let ((_%tl216344216495%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216342216490%_)))
                                                          (_%hd216343216493%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216342216490%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216344216495%_))
                                                          (_%__match220924220925%_
                                                           _%e216259216748%_
                                                           _%hd216260216751%_
                                                           _%tl216261216753%_
                                                           _%e216262216756%_
                                                           _%hd216263216759%_
                                                           _%tl216264216761%_
                                                           _%e216265216764%_
                                                           _%hd216266216767%_
                                                           _%tl216267216769%_
                                                           _%e216290216558%_
                                                           _%hd216291216561%_
                                                           _%tl216292216563%_
                                                           _%e216293216566%_
                                                           _%hd216294216569%_
                                                           _%tl216295216571%_
                                                           _%e216296216574%_
                                                           _%hd216297216577%_
                                                           _%tl216298216579%_
                                                           _%e216299216582%_
                                                           _%hd216300216585%_
                                                           _%tl216301216587%_
                                                           _%e216339216482%_
                                                           _%hd216340216485%_
                                                           _%tl216341216487%_
                                                           _%e216342216490%_
                                                           _%hd216343216493%_
                                                           _%tl216344216495%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216254216364%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216254216364%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216254216364%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216264216761%_))
                                          (let ((_%e216354216385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216264216761%_))))
                                            (let ((_%tl216356216390%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216354216385%_)))
                                                  (_%hd216355216388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216354216385%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216356216390%_))
                                                  (let ((_%e216357216393%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216356216390%_))))
                                                    (let ((_%tl216359216398%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216357216393%_)))
                                                          (_%hd216358216396%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216357216393%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216359216398%_))
                                                          (_%__kont220725220726%_
                                                           _%hd216358216396%_
                                                           _%hd216355216388%_
                                                           _%hd216263216759%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216254216364%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216254216364%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216254216364%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216301216587%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216264216761%_))
                                      (let ((_%e216339216482%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216264216761%_))))
                                        (let ((_%tl216341216487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216339216482%_)))
                                              (_%hd216340216485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216339216482%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216341216487%_))
                                              (let ((_%e216342216490%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216341216487%_))))
                                                (let ((_%tl216344216495%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216342216490%_)))
                                                      (_%hd216343216493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216342216490%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216344216495%_))
                                                      (_%__match220924220925%_
                                                       _%e216259216748%_
                                                       _%hd216260216751%_
                                                       _%tl216261216753%_
                                                       _%e216262216756%_
                                                       _%hd216263216759%_
                                                       _%tl216264216761%_
                                                       _%e216265216764%_
                                                       _%hd216266216767%_
                                                       _%tl216267216769%_
                                                       _%e216290216558%_
                                                       _%hd216291216561%_
                                                       _%tl216292216563%_
                                                       _%e216293216566%_
                                                       _%hd216294216569%_
                                                       _%tl216295216571%_
                                                       _%e216296216574%_
                                                       _%hd216297216577%_
                                                       _%tl216298216579%_
                                                       _%e216299216582%_
                                                       _%hd216300216585%_
                                                       _%tl216301216587%_
                                                       _%e216339216482%_
                                                       _%hd216340216485%_
                                                       _%tl216341216487%_
                                                       _%e216342216490%_
                                                       _%hd216343216493%_
                                                       _%tl216344216495%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216254216364%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216254216364%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216254216364%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216264216761%_))
                                      (let ((_%e216354216385%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216264216761%_))))
                                        (let ((_%tl216356216390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216354216385%_)))
                                              (_%hd216355216388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216354216385%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216356216390%_))
                                              (let ((_%e216357216393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216356216390%_))))
                                                (let ((_%tl216359216398%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216357216393%_)))
                                                      (_%hd216358216396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216357216393%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216359216398%_))
                                                      (_%__kont220725220726%_
                                                       _%hd216358216396%_
                                                       _%hd216355216388%_
                                                       _%hd216263216759%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216254216364%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216254216364%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216254216364%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216301216587%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216264216761%_))
                                  (let ((_%e216339216482%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216264216761%_))))
                                    (let ((_%tl216341216487%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216339216482%_)))
                                          (_%hd216340216485%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216339216482%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216341216487%_))
                                          (let ((_%e216342216490%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216341216487%_))))
                                            (let ((_%tl216344216495%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216342216490%_)))
                                                  (_%hd216343216493%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216342216490%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216344216495%_))
                                                  (_%__match220924220925%_
                                                   _%e216259216748%_
                                                   _%hd216260216751%_
                                                   _%tl216261216753%_
                                                   _%e216262216756%_
                                                   _%hd216263216759%_
                                                   _%tl216264216761%_
                                                   _%e216265216764%_
                                                   _%hd216266216767%_
                                                   _%tl216267216769%_
                                                   _%e216290216558%_
                                                   _%hd216291216561%_
                                                   _%tl216292216563%_
                                                   _%e216293216566%_
                                                   _%hd216294216569%_
                                                   _%tl216295216571%_
                                                   _%e216296216574%_
                                                   _%hd216297216577%_
                                                   _%tl216298216579%_
                                                   _%e216299216582%_
                                                   _%hd216300216585%_
                                                   _%tl216301216587%_
                                                   _%e216339216482%_
                                                   _%hd216340216485%_
                                                   _%tl216341216487%_
                                                   _%e216342216490%_
                                                   _%hd216343216493%_
                                                   _%tl216344216495%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216254216364%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216254216364%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216254216364%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216264216761%_))
                                  (let ((_%e216354216385%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216264216761%_))))
                                    (let ((_%tl216356216390%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216354216385%_)))
                                          (_%hd216355216388%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216354216385%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216356216390%_))
                                          (let ((_%e216357216393%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216356216390%_))))
                                            (let ((_%tl216359216398%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216357216393%_)))
                                                  (_%hd216358216396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216357216393%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216359216398%_))
                                                  (_%__kont220725220726%_
                                                   _%hd216358216396%_
                                                   _%hd216355216388%_
                                                   _%hd216263216759%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216254216364%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216254216364%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216254216364%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216301216587%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216264216761%_))
                          (let ((_%e216339216482%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216264216761%_))))
                            (let ((_%tl216341216487%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216339216482%_)))
                                  (_%hd216340216485%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216339216482%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216341216487%_))
                                  (let ((_%e216342216490%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216341216487%_))))
                                    (let ((_%tl216344216495%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216342216490%_)))
                                          (_%hd216343216493%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216342216490%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216344216495%_))
                                          (_%__match220924220925%_
                                           _%e216259216748%_
                                           _%hd216260216751%_
                                           _%tl216261216753%_
                                           _%e216262216756%_
                                           _%hd216263216759%_
                                           _%tl216264216761%_
                                           _%e216265216764%_
                                           _%hd216266216767%_
                                           _%tl216267216769%_
                                           _%e216290216558%_
                                           _%hd216291216561%_
                                           _%tl216292216563%_
                                           _%e216293216566%_
                                           _%hd216294216569%_
                                           _%tl216295216571%_
                                           _%e216296216574%_
                                           _%hd216297216577%_
                                           _%tl216298216579%_
                                           _%e216299216582%_
                                           _%hd216300216585%_
                                           _%tl216301216587%_
                                           _%e216339216482%_
                                           _%hd216340216485%_
                                           _%tl216341216487%_
                                           _%e216342216490%_
                                           _%hd216343216493%_
                                           _%tl216344216495%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216254216364%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216254216364%_)))))
                          (let () (declare (not safe)) (_%g216254216364%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216264216761%_))
                          (let ((_%e216354216385%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216264216761%_))))
                            (let ((_%tl216356216390%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216354216385%_)))
                                  (_%hd216355216388%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216354216385%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216356216390%_))
                                  (let ((_%e216357216393%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216356216390%_))))
                                    (let ((_%tl216359216398%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216357216393%_)))
                                          (_%hd216358216396%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216357216393%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216359216398%_))
                                          (_%__kont220725220726%_
                                           _%hd216358216396%_
                                           _%hd216355216388%_
                                           _%hd216263216759%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216254216364%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216254216364%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g216254216364%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216264216761%_))
                                                      (let ((_%e216354216385%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216264216761%_))))
                (let ((_%tl216356216390%_
                       (let () (declare (not safe)) (##cdr _%e216354216385%_)))
                      (_%hd216355216388%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216354216385%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216356216390%_))
                      (let ((_%e216357216393%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216356216390%_))))
                        (let ((_%tl216359216398%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216357216393%_)))
                              (_%hd216358216396%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216357216393%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216359216398%_))
                              (_%__kont220725220726%_
                               _%hd216358216396%_
                               _%hd216355216388%_
                               _%hd216263216759%_)
                              (let ()
                                (declare (not safe))
                                (_%g216254216364%_)))))
                      (let () (declare (not safe)) (_%g216254216364%_)))))
              (let () (declare (not safe)) (_%g216254216364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216264216761%_))
                                                  (let ((_%e216354216385%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216264216761%_))))
                                                    (let ((_%tl216356216390%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216354216385%_)))
                                                          (_%hd216355216388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216354216385%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216356216390%_))
                                                          (let ((_%e216357216393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216356216390%_))))
                    (let ((_%tl216359216398%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216357216393%_)))
                          (_%hd216358216396%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216357216393%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216359216398%_))
                          (_%__kont220725220726%_
                           _%hd216358216396%_
                           _%hd216355216388%_
                           _%hd216263216759%_)
                          (let () (declare (not safe)) (_%g216254216364%_)))))
                  (let () (declare (not safe)) (_%g216254216364%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216254216364%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216264216761%_))
                                          (let ((_%e216354216385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216264216761%_))))
                                            (let ((_%tl216356216390%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216354216385%_)))
                                                  (_%hd216355216388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216354216385%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216356216390%_))
                                                  (let ((_%e216357216393%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216356216390%_))))
                                                    (let ((_%tl216359216398%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216357216393%_)))
                                                          (_%hd216358216396%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216357216393%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216359216398%_))
                                                          (_%__kont220725220726%_
                                                           _%hd216358216396%_
                                                           _%hd216355216388%_
                                                           _%hd216263216759%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216254216364%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216254216364%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216254216364%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216264216761%_))
                                      (let ((_%e216354216385%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216264216761%_))))
                                        (let ((_%tl216356216390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216354216385%_)))
                                              (_%hd216355216388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216354216385%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216356216390%_))
                                              (let ((_%e216357216393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216356216390%_))))
                                                (let ((_%tl216359216398%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216357216393%_)))
                                                      (_%hd216358216396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216357216393%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216359216398%_))
                                                      (_%__kont220725220726%_
                                                       _%hd216358216396%_
                                                       _%hd216355216388%_
                                                       _%hd216263216759%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216254216364%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216254216364%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216254216364%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216264216761%_))
                                  (let ((_%e216354216385%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216264216761%_))))
                                    (let ((_%tl216356216390%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216354216385%_)))
                                          (_%hd216355216388%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216354216385%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216356216390%_))
                                          (let ((_%e216357216393%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216356216390%_))))
                                            (let ((_%tl216359216398%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216357216393%_)))
                                                  (_%hd216358216396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216357216393%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216359216398%_))
                                                  (_%__kont220725220726%_
                                                   _%hd216358216396%_
                                                   _%hd216355216388%_
                                                   _%hd216263216759%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216254216364%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216254216364%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216254216364%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216264216761%_))
                          (let ((_%e216354216385%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216264216761%_))))
                            (let ((_%tl216356216390%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216354216385%_)))
                                  (_%hd216355216388%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216354216385%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216356216390%_))
                                  (let ((_%e216357216393%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216356216390%_))))
                                    (let ((_%tl216359216398%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216357216393%_)))
                                          (_%hd216358216396%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216357216393%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216359216398%_))
                                          (_%__kont220725220726%_
                                           _%hd216358216396%_
                                           _%hd216355216388%_
                                           _%hd216263216759%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216254216364%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216254216364%_)))))
                          (let () (declare (not safe)) (_%g216254216364%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl216264216761%_))
                  (let ((_%e216354216385%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216264216761%_))))
                    (let ((_%tl216356216390%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216354216385%_)))
                          (_%hd216355216388%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216354216385%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216356216390%_))
                          (let ((_%e216357216393%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216356216390%_))))
                            (let ((_%tl216359216398%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216357216393%_)))
                                  (_%hd216358216396%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216357216393%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216359216398%_))
                                  (_%__kont220725220726%_
                                   _%hd216358216396%_
                                   _%hd216355216388%_
                                   _%hd216263216759%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g216254216364%_)))))
                          (let () (declare (not safe)) (_%g216254216364%_)))))
                  (let () (declare (not safe)) (_%g216254216364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216264216761%_))
                                                      (let ((_%e216354216385%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216264216761%_))))
                (let ((_%tl216356216390%_
                       (let () (declare (not safe)) (##cdr _%e216354216385%_)))
                      (_%hd216355216388%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216354216385%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216356216390%_))
                      (let ((_%e216357216393%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216356216390%_))))
                        (let ((_%tl216359216398%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216357216393%_)))
                              (_%hd216358216396%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216357216393%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216359216398%_))
                              (_%__kont220725220726%_
                               _%hd216358216396%_
                               _%hd216355216388%_
                               _%hd216263216759%_)
                              (let ()
                                (declare (not safe))
                                (_%g216254216364%_)))))
                      (let () (declare (not safe)) (_%g216254216364%_)))))
              (let () (declare (not safe)) (_%g216254216364%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216264216761%_))
                                              (let ((_%e216354216385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216264216761%_))))
                                                (let ((_%tl216356216390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216354216385%_)))
                                                      (_%hd216355216388%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216354216385%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216356216390%_))
                                                      (let ((_%e216357216393%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216356216390%_))))
                (let ((_%tl216359216398%_
                       (let () (declare (not safe)) (##cdr _%e216357216393%_)))
                      (_%hd216358216396%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216357216393%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216359216398%_))
                      (_%__kont220725220726%_
                       _%hd216358216396%_
                       _%hd216355216388%_
                       _%hd216263216759%_)
                      (let () (declare (not safe)) (_%g216254216364%_)))))
              (let () (declare (not safe)) (_%g216254216364%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g216254216364%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216264216761%_))
                                      (let ((_%e216354216385%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216264216761%_))))
                                        (let ((_%tl216356216390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216354216385%_)))
                                              (_%hd216355216388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216354216385%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216356216390%_))
                                              (let ((_%e216357216393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216356216390%_))))
                                                (let ((_%tl216359216398%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216357216393%_)))
                                                      (_%hd216358216396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216357216393%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216359216398%_))
                                                      (_%__kont220725220726%_
                                                       _%hd216358216396%_
                                                       _%hd216355216388%_
                                                       _%hd216263216759%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216254216364%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216254216364%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216254216364%_))))))
                          (let () (declare (not safe)) (_%g216254216364%_)))))
                  (let () (declare (not safe)) (_%g216254216364%_))))))))))
