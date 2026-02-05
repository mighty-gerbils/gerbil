(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1770326761)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp220818 (list gxc#::basic-xform::t))
            (__tmp220817 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp220818
         '()
         __tmp220817
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args220095%_
        (apply make-instance gxc#::optimize-call::t _%$args220095%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp220819
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
        (__make-atomic-promise __tmp220819)))
    (define gxc#apply-optimize-call
      (lambda (_%stx220087%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self220090%_
                (let ((__obj220809
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj220809))
               (__tmp220820
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220090%_ _%stx220087%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220820
           gxc#current-compile-method
           _%self220090%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp220822 (list gxc#::void::t))
            (__tmp220821 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp220822
         '()
         __tmp220821
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args220084%_
        (apply make-instance gxc#::check-return-type::t _%$args220084%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp220823
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
        (__make-atomic-promise __tmp220823)))
    (define gxc#apply-check-return-type
      (lambda (_%stx220076%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self220079%_
                (let ((__obj220811
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj220811))
               (__tmp220824
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220079%_ _%stx220076%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220824
           gxc#current-compile-method
           _%self220079%_))))
    (define gxc#optimize-call%
      (lambda (_%self219683%_ _%stx219684%_)
        (let* ((_%__stx220164220165%_ _%stx219684%_)
               (_%g219687219733%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220164220165%_)))))
          (let ((_%__kont220166220167%_
                 (lambda (_%g219689219872%_ _%g219690219873%_)
                   (let* ((_%rator-id219893%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g219690219873%_)))
                          (_%rator-type219895%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id219893%_))))
                     (if (or (not _%rator-type219895%_)
                             (eq? (##structure-ref
                                   _%rator-type219895%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self219683%_ _%stx219684%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type219895%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp220825
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type219895%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id219893%_
                                  '" => "
                                  _%rator-type219895%_
                                  '" "
                                  __tmp220825))
                               (let* ((_%optimized219910%_
                                       (let ((__method220812
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type219895%_
                                                 'optimize-call))))
                                         (if __method220812
                                             (let ((__tmp220826
                                                    (let ((__tmp220827
                                                           (lambda (_%g219902219905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g219903219907%_)
                     (cons _%g219902219905%_ _%g219903219907%_))))
              (declare (not safe))
              (__foldr1 __tmp220827 '() _%g219689219872%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method220812
                                                _%rator-type219895%_
                                                _%self219683%_
                                                _%stx219684%_
                                                __tmp220826))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type219895%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx220112220113%_
                                       _%optimized219910%_)
                                      (_%g219913219942%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx220112220113%_)))))
                                 (let ((_%__kont220114220115%_
                                        (lambda (_%g219915220008%_
                                                 _%g219916220009%_)
                                          (let* ((_%optimized-rator-id220036%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g219916220009%_)))
                                                 (_%rator-type220041%_
                                                  (let ((_%$e220038%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id220036%_))))
                                                    (if _%$e220038%_
                                                        _%$e220038%_
                                                        _%rator-type219895%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type220041%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id220036%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type220041%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type220041%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized219910%_
                                                (let ((__tmp220828
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g219916220009%_ '()))
                           (let ((__tmp220829
                                  (lambda (_%g220049220052%_ _%g220050220054%_)
                                    (cons _%g220049220052%_
                                          _%g220050220054%_))))
                             (declare (not safe))
                             (__foldr1 __tmp220829 '() _%g219915220008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp220828
                                                   _%stx219684%_))))))
                                       (_%__kont220118220119%_
                                        (lambda () _%optimized219910%_)))
                                   (let ((_%__match220161220162%_
                                          (lambda (_%e219917219954%_
                                                   _%hd219918219957%_
                                                   _%tl219919219959%_
                                                   _%e219920219962%_
                                                   _%hd219921219965%_
                                                   _%tl219922219967%_
                                                   _%e219923219970%_
                                                   _%hd219924219973%_
                                                   _%tl219925219975%_
                                                   _%e219926219978%_
                                                   _%hd219927219981%_
                                                   _%tl219928219983%_
                                                   _%__splice220116220117%_
                                                   _%target219929219986%_
                                                   _%tl219931219988%_)
                                            (letrec ((_%loop219932219991%_
                                                      (lambda (_%hd219930219994%_
                                                               _%arg219936219996%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd219930219994%_))
                                                            (let ((_%e219933219998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd219930219994%_))))
                      (let ((_%lp-tl219935220003%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e219933219998%_)))
                            (_%lp-hd219934220001%_
                             (let ()
                               (declare (not safe))
                               (##car _%e219933219998%_))))
                        (_%loop219932219991%_
                         _%lp-tl219935220003%_
                         (cons _%lp-hd219934220001%_ _%arg219936219996%_))))
                    (let ((_%arg219937220006%_ (reverse _%arg219936219996%_)))
                      (_%__kont220114220115%_
                       _%arg219937220006%_
                       _%hd219927219981%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop219932219991%_
                                               _%target219929219986%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx220112220113%_))
                                         (let ((_%e219917219954%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx220112220113%_))))
                                           (let ((_%tl219919219959%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e219917219954%_)))
                                                 (_%hd219918219957%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e219917219954%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd219918219957%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd219918219957%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl219919219959%_))
                                                         (let ((_%e219920219962%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl219919219959%_))))
                   (let ((_%tl219922219967%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e219920219962%_)))
                         (_%hd219921219965%_
                          (let ()
                            (declare (not safe))
                            (##car _%e219920219962%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd219921219965%_))
                         (let ((_%e219923219970%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd219921219965%_))))
                           (let ((_%tl219925219975%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e219923219970%_)))
                                 (_%hd219924219973%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e219923219970%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd219924219973%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd219924219973%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl219925219975%_))
                                         (let ((_%e219926219978%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl219925219975%_))))
                                           (let ((_%tl219928219983%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e219926219978%_)))
                                                 (_%hd219927219981%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e219926219978%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl219928219983%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl219922219967%_))
                                                     (let ((_%__splice220116220117%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl219922219967%_
                                                               '0))))
                                                       (let ((_%tl219931219988%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice220116220117%_ '1)))
                     (_%target219929219986%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice220116220117%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl219931219988%_))
                     (_%__match220161220162%_
                      _%e219917219954%_
                      _%hd219918219957%_
                      _%tl219919219959%_
                      _%e219920219962%_
                      _%hd219921219965%_
                      _%tl219922219967%_
                      _%e219923219970%_
                      _%hd219924219973%_
                      _%tl219925219975%_
                      _%e219926219978%_
                      _%hd219927219981%_
                      _%tl219928219983%_
                      _%__splice220116220117%_
                      _%target219929219986%_
                      _%tl219931219988%_)
                     (_%__kont220118220119%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont220118220119%_))
                                                 (_%__kont220118220119%_))))
                                         (_%__kont220118220119%_))
                                     (_%__kont220118220119%_))
                                 (_%__kont220118220119%_))))
                         (_%__kont220118220119%_))))
                 (_%__kont220118220119%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont220118220119%_))
                                                 (_%__kont220118220119%_))))
                                         (_%__kont220118220119%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type219895%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type219895%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp220830
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g219690219873%_
                                                                '()))
                                                    (map (lambda (_%g220060220062%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self219683%_
                                                              _%g220060220062%_)))
                                                         (let ((__tmp220831
                                                                (lambda (_%g220064220067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g220065220069%_)
                          (cons _%g220064220067%_ _%g220065220069%_))))
                   (declare (not safe))
                   (__foldr1 __tmp220831 '() _%g219689219872%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp220830
                                    _%stx219684%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx219684%_
                                    _%rator-type219895%_))))))))
                (_%__kont220170220171%_
                 (lambda (_%g219712219776%_ _%g219713219777%_)
                   (let ((_%rator-type219794%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g219713219777%_))))
                     (if (and _%rator-type219794%_
                              (eq? (##structure-ref
                                    _%rator-type219794%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type219794%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type219794%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type219794%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp220832
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self219683%_
                                               _%g219713219777%_))
                                            (map (lambda (_%g219796219798%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self219683%_
                                                      _%g219796219798%_)))
                                                 (let ((__tmp220833
                                                        (lambda (_%g219800219803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g219801219805%_)
                  (cons _%g219800219803%_ _%g219801219805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp220833
                                                    '()
                                                    _%g219712219776%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp220832 _%stx219684%_))
                         (if (or (not _%rator-type219794%_)
                                 (let ((__tmp220834
                                        (##structure-ref
                                         _%rator-type219794%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp220834 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self219683%_ _%stx219684%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx219684%_
                                _%rator-type219794%_))))))))
            (let* ((_%__match220231220232%_
                    (lambda (_%e219714219738%_
                             _%hd219715219741%_
                             _%tl219716219743%_
                             _%e219717219746%_
                             _%hd219718219749%_
                             _%tl219719219751%_
                             _%__splice220172220173%_
                             _%target219720219754%_
                             _%tl219722219756%_)
                      (letrec ((_%loop219723219759%_
                                (lambda (_%hd219721219762%_
                                         _%rand219727219764%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219721219762%_))
                                      (let ((_%e219724219766%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219721219762%_))))
                                        (let ((_%lp-tl219726219771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219724219766%_)))
                                              (_%lp-hd219725219769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219724219766%_))))
                                          (_%loop219723219759%_
                                           _%lp-tl219726219771%_
                                           (cons _%lp-hd219725219769%_
                                                 _%rand219727219764%_))))
                                      (let ((_%rand219728219774%_
                                             (reverse _%rand219727219764%_)))
                                        (_%__kont220170220171%_
                                         _%rand219728219774%_
                                         _%hd219718219749%_))))))
                        (_%loop219723219759%_ _%target219720219754%_ '()))))
                   (_%__match220211220212%_
                    (lambda (_%e219691219818%_
                             _%hd219692219821%_
                             _%tl219693219823%_
                             _%e219694219826%_
                             _%hd219695219829%_
                             _%tl219696219831%_
                             _%e219697219834%_
                             _%hd219698219837%_
                             _%tl219699219839%_
                             _%e219700219842%_
                             _%hd219701219845%_
                             _%tl219702219847%_
                             _%__splice220168220169%_
                             _%target219703219850%_
                             _%tl219705219852%_)
                      (letrec ((_%loop219706219855%_
                                (lambda (_%hd219704219858%_
                                         _%rand219710219860%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219704219858%_))
                                      (let ((_%e219707219862%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219704219858%_))))
                                        (let ((_%lp-tl219709219867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219707219862%_)))
                                              (_%lp-hd219708219865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219707219862%_))))
                                          (_%loop219706219855%_
                                           _%lp-tl219709219867%_
                                           (cons _%lp-hd219708219865%_
                                                 _%rand219710219860%_))))
                                      (let ((_%rand219711219870%_
                                             (reverse _%rand219710219860%_)))
                                        (_%__kont220166220167%_
                                         _%rand219711219870%_
                                         _%hd219701219845%_))))))
                        (_%loop219706219855%_ _%target219703219850%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220164220165%_))
                  (let ((_%e219691219818%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220164220165%_))))
                    (let ((_%tl219693219823%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e219691219818%_)))
                          (_%hd219692219821%_
                           (let ()
                             (declare (not safe))
                             (##car _%e219691219818%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl219693219823%_))
                          (let ((_%e219694219826%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl219693219823%_))))
                            (let ((_%tl219696219831%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e219694219826%_)))
                                  (_%hd219695219829%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e219694219826%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd219695219829%_))
                                  (let ((_%e219697219834%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd219695219829%_))))
                                    (let ((_%tl219699219839%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e219697219834%_)))
                                          (_%hd219698219837%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e219697219834%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd219698219837%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd219698219837%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl219699219839%_))
                                                  (let ((_%e219700219842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl219699219839%_))))
                                                    (let ((_%tl219702219847%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e219700219842%_)))
                                                          (_%hd219701219845%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e219700219842%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219702219847%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl219696219831%_))
                      (let ((_%__splice220168220169%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl219696219831%_
                                '0))))
                        (let ((_%tl219705219852%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220168220169%_ '1)))
                              (_%target219703219850%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220168220169%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219705219852%_))
                              (_%__match220211220212%_
                               _%e219691219818%_
                               _%hd219692219821%_
                               _%tl219693219823%_
                               _%e219694219826%_
                               _%hd219695219829%_
                               _%tl219696219831%_
                               _%e219697219834%_
                               _%hd219698219837%_
                               _%tl219699219839%_
                               _%e219700219842%_
                               _%hd219701219845%_
                               _%tl219702219847%_
                               _%__splice220168220169%_
                               _%target219703219850%_
                               _%tl219705219852%_)
                              (let ()
                                (declare (not safe))
                                (_%g219687219733%_)))))
                      (let () (declare (not safe)) (_%g219687219733%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl219696219831%_))
                      (let ((_%__splice220172220173%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl219696219831%_
                                '0))))
                        (let ((_%tl219722219756%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220172220173%_ '1)))
                              (_%target219720219754%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220172220173%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219722219756%_))
                              (_%__match220231220232%_
                               _%e219691219818%_
                               _%hd219692219821%_
                               _%tl219693219823%_
                               _%e219694219826%_
                               _%hd219695219829%_
                               _%tl219696219831%_
                               _%__splice220172220173%_
                               _%target219720219754%_
                               _%tl219722219756%_)
                              (let ()
                                (declare (not safe))
                                (_%g219687219733%_)))))
                      (let () (declare (not safe)) (_%g219687219733%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl219696219831%_))
                                                      (let ((_%__splice220172220173%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl219696219831%_
                        '0))))
                (let ((_%tl219722219756%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220172220173%_ '1)))
                      (_%target219720219754%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220172220173%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl219722219756%_))
                      (_%__match220231220232%_
                       _%e219691219818%_
                       _%hd219692219821%_
                       _%tl219693219823%_
                       _%e219694219826%_
                       _%hd219695219829%_
                       _%tl219696219831%_
                       _%__splice220172220173%_
                       _%target219720219754%_
                       _%tl219722219756%_)
                      (let () (declare (not safe)) (_%g219687219733%_)))))
              (let () (declare (not safe)) (_%g219687219733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl219696219831%_))
                                                  (let ((_%__splice220172220173%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl219696219831%_
                                                            '0))))
                                                    (let ((_%tl219722219756%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220172220173%_
                                                              '1)))
                                                          (_%target219720219754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220172220173%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219722219756%_))
                                                          (_%__match220231220232%_
                                                           _%e219691219818%_
                                                           _%hd219692219821%_
                                                           _%tl219693219823%_
                                                           _%e219694219826%_
                                                           _%hd219695219829%_
                                                           _%tl219696219831%_
                                                           _%__splice220172220173%_
                                                           _%target219720219754%_
                                                           _%tl219722219756%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g219687219733%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g219687219733%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl219696219831%_))
                                              (let ((_%__splice220172220173%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl219696219831%_
                                                        '0))))
                                                (let ((_%tl219722219756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220172220173%_
                                                          '1)))
                                                      (_%target219720219754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220172220173%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl219722219756%_))
                                                      (_%__match220231220232%_
                                                       _%e219691219818%_
                                                       _%hd219692219821%_
                                                       _%tl219693219823%_
                                                       _%e219694219826%_
                                                       _%hd219695219829%_
                                                       _%tl219696219831%_
                                                       _%__splice220172220173%_
                                                       _%target219720219754%_
                                                       _%tl219722219756%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g219687219733%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g219687219733%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl219696219831%_))
                                      (let ((_%__splice220172220173%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl219696219831%_
                                                '0))))
                                        (let ((_%tl219722219756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220172220173%_
                                                  '1)))
                                              (_%target219720219754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220172220173%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl219722219756%_))
                                              (_%__match220231220232%_
                                               _%e219691219818%_
                                               _%hd219692219821%_
                                               _%tl219693219823%_
                                               _%e219694219826%_
                                               _%hd219695219829%_
                                               _%tl219696219831%_
                                               _%__splice220172220173%_
                                               _%target219720219754%_
                                               _%tl219722219756%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g219687219733%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g219687219733%_))))))
                          (let () (declare (not safe)) (_%g219687219733%_)))))
                  (let () (declare (not safe)) (_%g219687219733%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self219645%_ _%ctx219646%_ _%stx219647%_ _%args219648%_)
        (let ((_%self219651%_ _%self219645%_))
          (if (let ((__method220813
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self219651%_ 'check-arguments))))
                (if __method220813
                    (let ()
                      (declare (not safe))
                      (__method220813
                       _%self219651%_
                       _%ctx219646%_
                       _%stx219647%_
                       _%args219648%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self219651%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature219661%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self219651%_ '2 '#f '#f)))
                     (_%signature219663%_ _%signature219661%_)
                     (_%$e219673%_
                      (if _%signature219663%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature219663%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e219673%_
                    ((lambda (_%unchecked219676%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked219676%_))
                           (let ((__tmp220835
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked219676%_
                                                          '()))
                                              (map (lambda (_%g219677219679%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx219646%_
                                                        _%g219677219679%_)))
                                                   _%args219648%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp220835
                              _%stx219647%_
                              _%ctx219646%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx219646%_ _%stx219647%_))))
                     _%$e219673%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx219646%_ _%stx219647%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx219646%_ _%stx219647%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass220097 __method-table220098)
        (let ((__check-arguments220099
               (let ((__tmp220836
                      (lambda ()
                        (let ((__method220100
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220098
                                  'check-arguments
                                  '#f))))
                          (if __method220100
                              __method220100
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp220836))))
          (lambda (_%self219645%_ _%ctx219646%_ _%stx219647%_ _%args219648%_)
            (let ((_%self219651%_ _%self219645%_))
              (if ((force __check-arguments220099)
                   _%self219651%_
                   _%ctx219646%_
                   _%stx219647%_
                   _%args219648%_)
                  (let* ((_%signature219661%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self219651%_
                             '2
                             '#f
                             '#f)))
                         (_%signature219663%_ _%signature219661%_)
                         (_%$e219673%_
                          (if _%signature219663%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature219663%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e219673%_
                        ((lambda (_%unchecked219676%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked219676%_))
                               (let ((__tmp220837
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked219676%_
                                                              '()))
                                                  (map (lambda (_%g219677219679%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx219646%_
                                                            _%g219677219679%_)))
                                                       _%args219648%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp220837
                                  _%stx219647%_
                                  _%ctx219646%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx219646%_
                                  _%stx219647%_))))
                         _%$e219673%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx219646%_ _%stx219647%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx219646%_ _%stx219647%_))))))))
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
      (lambda (_%self219398%_ _%ctx219399%_ _%stx219400%_ _%args219401%_)
        (let* ((_%self219404%_ _%self219398%_)
               (_%signature219413219415%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self219404%_ '2 '#f '#f))))
          (if _%signature219413219415%_
              (let* ((_%signature219417%_ _%signature219413219415%_)
                     (_%argument-types219418219420%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature219417%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types219418219420%_
                    (let* ((_%argument-types219422%_
                            _%argument-types219418219420%_)
                           (_%argument-types219427%_
                            (let ((__tmp220838
                                   (lambda (_%t219425%_)
                                     (if _%t219425%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219400%_
                                            _%t219425%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp220838
                               _%argument-types219422%_))))
                      (let _%loop219429%_ ((_%rest-args219431%_ _%args219401%_)
                                           (_%rest-types219432%_
                                            _%argument-types219427%_)
                                           (_%result219433%_ '#t))
                        (let* ((_%rest-args219434219442%_ _%rest-args219431%_)
                               (_%else219436219450%_
                                (lambda () _%result219433%_))
                               (_%K219438219511%_
                                (lambda (_%rest-args219453%_ _%arg219454%_)
                                  (let* ((_%rest-types219455219466%_
                                          _%rest-types219432%_)
                                         (_%E219459219470%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types219455219466%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K219462219499%_
                                           (lambda (_%rest-types219496%_
                                                    _%type219497%_)
                                             (_%loop219429%_
                                              _%rest-args219453%_
                                              _%rest-types219496%_
                                              (if (gxc#check-expression-type!
                                                   _%stx219400%_
                                                   _%arg219454%_
                                                   _%type219497%_)
                                                  _%result219433%_
                                                  '#f))))
                                          (_%K219461219490%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx219400%_
                                                _%argument-types219427%_))))
                                          (_%K219460219480%_
                                           (lambda (_%tail-type219474%_)
                                             (if (let ((__tmp220839
                                                        (lambda (_%g219475219477%_)
                                                          (gxc#check-expression-type!
                                                           _%stx219400%_
                                                           _%g219475219477%_
                                                           _%tail-type219474%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp220839
                                                    _%rest-args219453%_))
                                                 _%result219433%_
                                                 '#f))))
                                      (let ((_%try-match219457219493%_
                                             (lambda ()
                                               (if (null? _%rest-types219455219466%_)
                                                   (_%K219461219490%_)
                                                   (let ((_%tail-type219483%_
                                                          _%rest-types219455219466%_))
                                                     (_%K219460219480%_
                                                      _%tail-type219483%_))))))
                                        (if (pair? _%rest-types219455219466%_)
                                            (let ((_%tl219464219504%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types219455219466%_)))
                                                  (_%hd219463219502%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types219455219466%_))))
                                              (let ((_%type219507%_
                                                     _%hd219463219502%_)
                                                    (_%rest-types219509%_
                                                     _%tl219464219504%_))
                                                (_%K219462219499%_
                                                 _%rest-types219509%_
                                                 _%type219507%_)))
                                            (_%try-match219457219493%_))))))))
                          (if (pair? _%rest-args219434219442%_)
                              (let ((_%hd219439219514%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args219434219442%_)))
                                    (_%tl219440219516%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args219434219442%_))))
                                (let* ((_%arg219519%_ _%hd219439219514%_)
                                       (_%rest-args219521%_
                                        _%tl219440219516%_))
                                  (_%K219438219511%_
                                   _%rest-args219521%_
                                   _%arg219519%_)))
                              (_%else219436219450%_)))))
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
      (lambda (_%self219209%_ _%ctx219210%_ _%stx219211%_ _%args219212%_)
        (let* ((_%self219215%_ _%self219209%_)
               (_%g219225219235%_
                (lambda (_%g219226219232%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219226219232%_))))
               (_%g219224219273%_
                (lambda (_%g219226219238%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219226219238%_))
                      (let ((_%e219228219240%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219226219238%_))))
                        (let ((_%hd219229219243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219228219240%_)))
                              (_%tl219230219245%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219228219240%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219230219245%_))
                              ((lambda (_%g219227219248%_)
                                 (let* ((_%klass219260%_
                                         (let ((__tmp220840
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self219215%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219211%_
                                            __tmp220840)))
                                        (_%object219262%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx219210%_
                                            _%g219227219248%_)))
                                        (_%instance?219267%_
                                         (let ((_%$e219264%_
                                                (gxc#expression-type?
                                                 _%object219262%_
                                                 _%klass219260%_)))
                                           (if _%$e219264%_
                                               _%$e219264%_
                                               (gxc#expression-type?
                                                _%g219227219248%_
                                                _%klass219260%_)))))
                                   (if _%instance?219267%_
                                       (let ((__tmp220841
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object219262%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g219227219248%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object219262%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220841
                                          _%stx219211%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx219210%_
                                          _%stx219211%_)))))
                               _%hd219229219243%_)
                              (_%g219225219235%_ _%g219226219238%_))))
                      (_%g219225219235%_ _%g219226219238%_)))))
          (_%g219224219273%_ _%args219212%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self219005%_ _%ctx219006%_ _%stx219007%_ _%args219008%_)
        (let* ((_%self219011%_ _%self219005%_)
               (_%g219021219031%_
                (lambda (_%g219022219028%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219022219028%_))))
               (_%g219020219084%_
                (lambda (_%g219022219034%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219022219034%_))
                      (let ((_%e219024219036%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219022219034%_))))
                        (let ((_%hd219025219039%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219024219036%_)))
                              (_%tl219026219041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219024219036%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219026219041%_))
                              ((lambda (_%g219023219044%_)
                                 (let* ((_%klass219056%_
                                         (let ((__tmp220842
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self219011%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219007%_
                                            __tmp220842)))
                                        (_%object219058%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx219006%_
                                            _%g219023219044%_)))
                                        (_%instance?219063%_
                                         (let ((_%$e219060%_
                                                (gxc#expression-type?
                                                 _%object219058%_
                                                 _%klass219056%_)))
                                           (if _%$e219060%_
                                               _%$e219060%_
                                               (gxc#expression-type?
                                                _%g219023219044%_
                                                _%klass219056%_))))
                                        (_%klass219066%_ _%klass219056%_))
                                   (if _%instance?219063%_
                                       (let ((__tmp220843
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object219058%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g219023219044%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object219058%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220843
                                          _%stx219007%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass219066%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp220844
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass219066%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object219058%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp220844
                                              _%stx219007%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass219066%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp220845
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass219066%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object219058%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220845
                                                  _%stx219007%_))
                                               (let ((__tmp220846
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self219011%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object219058%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220846
                                                  _%stx219007%_)))))))
                               _%hd219025219039%_)
                              (_%g219021219031%_ _%g219022219034%_))))
                      (_%g219021219031%_ _%g219022219034%_)))))
          (_%g219020219084%_ _%args219008%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx218673%_)
        (let* ((_%__stx220241220242%_ _%stx218673%_)
               (_%g218678218719%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220241220242%_)))))
          (let ((_%__kont220243220244%_ (lambda () '#t))
                (_%__kont220245220246%_ (lambda () '#t))
                (_%__kont220247220248%_
                 (lambda (_%g218692218785%_ _%g218693218786%_)
                   (let ((_%rator-type218807218809%_
                          (let ((__tmp220847
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g218693218786%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp220847))))
                     (if _%rator-type218807218809%_
                         (let* ((_%rator-type218811%_
                                 _%rator-type218807218809%_)
                                (_%rator-signature218812218814%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type218811%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type218811%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature218812218814%_
                               (let* ((_%rator-signature218816%_
                                       _%rator-signature218812218814%_)
                                      (_%rator-effect218817218819%_
                                       (if _%rator-signature218816%_
                                           (##direct-structure-ref
                                            _%rator-signature218816%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect218817218819%_
                                     (let ((_%rator-effect218821%_
                                            _%rator-effect218817218819%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect218821%_)
                                               (equal? '(alloc)
                                                       _%rator-effect218821%_))
                                           (let ((__tmp220848
                                                  (let ((__tmp220849
                                                         (lambda (_%g218826218829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g218827218831%_)
                   (cons _%g218826218829%_ _%g218827218831%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp220849
                                                     '()
                                                     _%g218692218785%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp220848))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont220251220252%_ (lambda () '#f)))
            (let ((_%__match220330220331%_
                   (lambda (_%e218694218731%_
                            _%hd218695218734%_
                            _%tl218696218736%_
                            _%e218697218739%_
                            _%hd218698218742%_
                            _%tl218699218744%_
                            _%e218700218747%_
                            _%hd218701218750%_
                            _%tl218702218752%_
                            _%e218703218755%_
                            _%hd218704218758%_
                            _%tl218705218760%_
                            _%__splice220249220250%_
                            _%target218706218763%_
                            _%tl218708218765%_)
                     (letrec ((_%loop218709218768%_
                               (lambda (_%hd218707218771%_
                                        _%rand218713218773%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd218707218771%_))
                                     (let ((_%e218710218775%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd218707218771%_))))
                                       (let ((_%lp-tl218712218780%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e218710218775%_)))
                                             (_%lp-hd218711218778%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e218710218775%_))))
                                         (_%loop218709218768%_
                                          _%lp-tl218712218780%_
                                          (cons _%lp-hd218711218778%_
                                                _%rand218713218773%_))))
                                     (let ((_%rand218714218783%_
                                            (reverse _%rand218713218773%_)))
                                       (_%__kont220247220248%_
                                        _%rand218714218783%_
                                        _%hd218704218758%_))))))
                       (_%loop218709218768%_ _%target218706218763%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220241220242%_))
                  (let ((_%e218680218862%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220241220242%_))))
                    (let ((_%tl218682218867%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218680218862%_)))
                          (_%hd218681218865%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218680218862%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd218681218865%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd218681218865%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218682218867%_))
                                  (let ((_%e218683218870%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218682218867%_))))
                                    (let ((_%tl218685218875%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218683218870%_)))
                                          (_%hd218684218873%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218683218870%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl218685218875%_))
                                          (_%__kont220243220244%_)
                                          (_%__kont220251220252%_))))
                                  (_%__kont220251220252%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd218681218865%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218682218867%_))
                                      (let ((_%e218689218847%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl218682218867%_))))
                                        (let ((_%tl218691218852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218689218847%_)))
                                              (_%hd218690218850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218689218847%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218691218852%_))
                                              (_%__kont220245220246%_)
                                              (_%__kont220251220252%_))))
                                      (_%__kont220251220252%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd218681218865%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl218682218867%_))
                                          (let ((_%e218697218739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl218682218867%_))))
                                            (let ((_%tl218699218744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e218697218739%_)))
                                                  (_%hd218698218742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e218697218739%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd218698218742%_))
                                                  (let ((_%e218700218747%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd218698218742%_))))
                                                    (let ((_%tl218702218752%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e218700218747%_)))
                                                          (_%hd218701218750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e218700218747%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd218701218750%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd218701218750%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl218702218752%_))
                          (let ((_%e218703218755%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl218702218752%_))))
                            (let ((_%tl218705218760%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218703218755%_)))
                                  (_%hd218704218758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218703218755%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218705218760%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl218699218744%_))
                                      (let ((_%__splice220249220250%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl218699218744%_
                                                '0))))
                                        (let ((_%tl218708218765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220249220250%_
                                                  '1)))
                                              (_%target218706218763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220249220250%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218708218765%_))
                                              (_%__match220330220331%_
                                               _%e218680218862%_
                                               _%hd218681218865%_
                                               _%tl218682218867%_
                                               _%e218697218739%_
                                               _%hd218698218742%_
                                               _%tl218699218744%_
                                               _%e218700218747%_
                                               _%hd218701218750%_
                                               _%tl218702218752%_
                                               _%e218703218755%_
                                               _%hd218704218758%_
                                               _%tl218705218760%_
                                               _%__splice220249220250%_
                                               _%target218706218763%_
                                               _%tl218708218765%_)
                                              (_%__kont220251220252%_))))
                                      (_%__kont220251220252%_))
                                  (_%__kont220251220252%_))))
                          (_%__kont220251220252%_))
                      (_%__kont220251220252%_))
                  (_%__kont220251220252%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont220251220252%_))))
                                          (_%__kont220251220252%_))
                                      (_%__kont220251220252%_))))
                          (_%__kont220251220252%_))))
                  (_%__kont220251220252%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx218668%_ _%klass218669%_)
        (let ((_%expr-type218671%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx218668%_))))
          (if _%expr-type218671%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type218671%_ _%klass218669%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx218646%_ _%expr218647%_ _%type218648%_)
        (if (not _%type218648%_)
            '#f
            (let ((_%$e218651%_
                   (eq? (##structure-ref _%type218648%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e218651%_
                  _%$e218651%_
                  (let ((_%expr-type218655%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr218647%_))))
                    (if (not _%expr-type218655%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type218655%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e218659%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type218655%_
                                      'gxc#!abort::t))))
                              (if _%$e218659%_
                                  _%$e218659%_
                                  (let ((_%$e218662%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type218655%_
                                            _%type218648%_))))
                                    (if _%$e218662%_
                                        _%$e218662%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type218648%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type218648%_
                                                   _%expr-type218655%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx218646%_
                                                   _%expr218647%_
                                                   _%expr-type218655%_
                                                   _%type218648%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self218460%_ _%ctx218461%_ _%stx218462%_ _%args218463%_)
        (let* ((_%self218466%_ _%self218460%_)
               (_%klass218476%_
                (let ((__tmp220850
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self218466%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx218462%_ __tmp220850)))
               (_%fields218478%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass218476%_
                           '5
                           '#f
                           '#f))))
               (_%args218484%_
                (map (lambda (_%g218479218481%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx218461%_ _%g218479218481%_)))
                     _%args218463%_))
               (_%inline-make-object218486%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self218466%_
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
                           _%self218466%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields218478%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass218489%_ _%klass218476%_)
               (_%$e218503%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass218489%_ '6 '#f '#f))))
          (if _%$e218503%_
              ((lambda (_%ctor218506%_)
                 (let ((_%$obj218508%_
                        (let ((__tmp220851
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp220851)))
                       (_%ctor-impl218509%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass218489%_
                           _%ctor218506%_))))
                   (let ((__tmp220852
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj218508%_ '())
                                                  (cons _%inline-make-object218486%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl218509%_
                                                            (let ((__tmp220853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl218509%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj218508%_ '()))
                                             _%args218484%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp220853
                       _%stx218462%_
                       _%ctx218461%_))
                    (let ((_%$ctor218511%_
                           (let ((__tmp220854
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp220854))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor218511%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218466%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj218508%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor218506%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor218511%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor218511%_ '()))
                              (cons (cons '%#ref (cons _%$obj218508%_ '()))
                                    _%args218484%_)))
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
                             _%self218466%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor218506%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj218508%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp220852 _%stx218462%_))))
               _%$e218503%_)
              (let ((_%$e218513%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass218489%_
                        '10
                        '#f
                        '#f))))
                (if _%$e218513%_
                    ((lambda (_%metaclass218516%_)
                       (let* ((_%$obj218518%_
                               (let ((__tmp220855
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp220855)))
                              (_%metakons218520%_
                               (let ((__tmp220856
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx218462%_
                                         _%metaclass218516%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp220856
                                  'instance-init!)))
                              (__tmp220857
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj218518%_
                                                             '())
                                                       (cons _%inline-make-object218486%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons218520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp220858
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons218520%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self218466%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj218518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args218484%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp220858
                            _%stx218462%_
                            _%ctx218461%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self218466%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj218518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args218484%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj218518%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp220857 _%stx218462%_)))
                     _%$e218513%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass218489%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp220859
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args218484%_))))
                              (declare (not safe))
                              (##fx= __tmp220859 _%fields218478%_))
                            (let ((__tmp220860
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self218466%_
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
                                              _%self218466%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args218484%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp220860
                               _%stx218462%_))
                            (let ((__tmp220862
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self218466%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp220861
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass218489%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx218462%_
                               __tmp220862
                               __tmp220861)))
                        (let ((_%$obj218525%_
                               (let ((__tmp220863
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp220863))))
                          (let _%lp218527%_ ((_%rest218529%_ _%args218484%_)
                                             (_%initializers218530%_ '()))
                            (let* ((_%__stx220333220334%_ _%rest218529%_)
                                   (_%g218534218555%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx220333220334%_)))))
                              (let ((_%__kont220335220336%_
                                     (lambda (_%g218536218609%_
                                              _%g218537218610%_
                                              _%g218538218611%_)
                                       (let* ((_%slot218638%_
                                               (let ((__tmp220864
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g218538218611%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp220864)))
                                              (_%off218640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass218489%_
                                                  _%slot218638%_))))
                                         (if _%off218640%_
                                             (_%lp218527%_
                                              _%g218536218609%_
                                              (cons (cons _%off218640%_
                                                          _%g218537218610%_)
                                                    _%initializers218530%_))
                                             (let ((__tmp220865
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218466%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx218462%_
                                                __tmp220865
                                                _%slot218638%_))))))
                                    (_%__kont220337220338%_
                                     (lambda ()
                                       (let ((__tmp220866
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj218525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object218486%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp220869
                                     (cons (cons '%#ref
                                                 (cons _%$obj218525%_ '()))
                                           '()))
                                    (__tmp220867
                                     (let ((__tmp220868
                                            (lambda (_%i218569%_ _%r218570%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self218466%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i218569%_) '()))
                              (cons (cons '%#ref (cons _%$obj218525%_ '()))
                                    (cons (cdr _%i218569%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r218570%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp220868
                                        '()
                                        _%initializers218530%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp220869 __tmp220867)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220866
                                          _%stx218462%_))))
                                    (_%__kont220339220340%_
                                     (lambda ()
                                       (let ((__tmp220870
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj218525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object218486%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args218484%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj218525%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220870
                                          _%stx218462%_)))))
                                (let* ((_%g218532218572%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx220333220334%_))
                                              (_%__kont220337220338%_)
                                              (_%__kont220339220340%_))))
                                       (_%__match220370220371%_
                                        (lambda (_%e218539218577%_
                                                 _%hd218540218580%_
                                                 _%tl218541218582%_
                                                 _%e218542218585%_
                                                 _%hd218543218588%_
                                                 _%tl218544218590%_
                                                 _%e218545218593%_
                                                 _%hd218546218596%_
                                                 _%tl218547218598%_
                                                 _%e218548218601%_
                                                 _%hd218549218604%_
                                                 _%tl218550218606%_)
                                          (let ((_%g218536218609%_
                                                 _%tl218550218606%_)
                                                (_%g218537218610%_
                                                 _%hd218549218604%_)
                                                (_%g218538218611%_
                                                 _%hd218546218596%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g218538218611%_))
                                                (_%__kont220335220336%_
                                                 _%g218536218609%_
                                                 _%g218537218610%_
                                                 _%g218538218611%_)
                                                (_%__kont220339220340%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx220333220334%_))
                                      (let ((_%e218539218577%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx220333220334%_))))
                                        (let ((_%tl218541218582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218539218577%_)))
                                              (_%hd218540218580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218539218577%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd218540218580%_))
                                              (let ((_%e218542218585%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd218540218580%_))))
                                                (let ((_%tl218544218590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e218542218585%_)))
                                                      (_%hd218543218588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e218542218585%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd218543218588%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd218543218588%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl218544218590%_))
                      (let ((_%e218545218593%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl218544218590%_))))
                        (let ((_%tl218547218598%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218545218593%_)))
                              (_%hd218546218596%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218545218593%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218547218598%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218541218582%_))
                                  (let ((_%e218548218601%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218541218582%_))))
                                    (let ((_%tl218550218606%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218548218601%_)))
                                          (_%hd218549218604%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218548218601%_))))
                                      (_%__match220370220371%_
                                       _%e218539218577%_
                                       _%hd218540218580%_
                                       _%tl218541218582%_
                                       _%e218542218585%_
                                       _%hd218543218588%_
                                       _%tl218544218590%_
                                       _%e218545218593%_
                                       _%hd218546218596%_
                                       _%tl218547218598%_
                                       _%e218548218601%_
                                       _%hd218549218604%_
                                       _%tl218550218606%_)))
                                  (_%__kont220339220340%_))
                              (_%__kont220339220340%_))))
                      (_%__kont220339220340%_))
                  (_%__kont220339220340%_))
              (_%__kont220339220340%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont220339220340%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g218532218572%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self218243%_ _%ctx218244%_ _%stx218245%_ _%args218246%_)
        (let* ((_%self218249%_ _%self218243%_)
               (_%arguments-ok?218259%_
                (let ((__method220814
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self218249%_ 'check-arguments))))
                  (if __method220814
                      (let ()
                        (declare (not safe))
                        (__method220814
                         _%self218249%_
                         _%ctx218244%_
                         _%stx218245%_
                         _%args218246%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self218249%_
                                 'check-arguments))
                        '#!void))))
               (_%g218261218271%_
                (lambda (_%g218262218268%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218262218268%_))))
               (_%g218260218335%_
                (lambda (_%g218262218274%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218262218274%_))
                      (let ((_%e218264218276%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g218262218274%_))))
                        (let ((_%hd218265218279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218264218276%_)))
                              (_%tl218266218281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218264218276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218266218281%_))
                              ((lambda (_%g218263218284%_)
                                 (let* ((_%klass218297%_
                                         (let ((__tmp220871
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218249%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx218245%_
                                            __tmp220871)))
                                        (_%field218299%_
                                         (let ((__tmp220872
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218249%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass218297%_
                                            __tmp220872)))
                                        (_%object218301%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx218244%_
                                            _%g218263218284%_)))
                                        (_%klass218304%_ _%klass218297%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass218304%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp220873
                                              (cons (if (or _%arguments-ok?218259%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218249%_
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
                                 _%self218249%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field218299%_ '()))
                        (cons _%object218301%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220873
                                          _%stx218245%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass218304%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp220874
                                                  (cons (if (or _%arguments-ok?218259%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218249%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218249%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field218299%_ '()))
                            (cons _%object218301%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp220874
                                              _%stx218245%_))
                                           (let ((_%$e218323%_
                                                  (let ((__tmp220875
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self218249%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass218304%_
                                                     __tmp220875))))
                                             (if _%$e218323%_
                                                 ((lambda (_%klass218326%_)
                                                    (let ((__tmp220876
                                                           (cons (if (or _%arguments-ok?218259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218249%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self218249%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field218299%_ '()))
                                     (cons _%object218301%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp220876 _%stx218245%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e218323%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self218249%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp220877
                                                            (let ((_%$obj218332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp220878
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp220878))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj218332%_ '())
                                              (cons _%object218301%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass218304%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj218332%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218249%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218299%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj218332%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?218259%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj218332%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self218249%_
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
                                                             _%self218249%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj218332%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self218249%_
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
               (gxc#xform-wrap-source __tmp220877 _%stx218245%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp220879
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object218301%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218249%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp220879 _%stx218245%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd218265218279%_)
                              (_%g218261218271%_ _%g218262218274%_))))
                      (_%g218261218271%_ _%g218262218274%_)))))
          (_%g218260218335%_ _%args218246%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass220101 __method-table220102)
        (let ((__check-arguments220103
               (let ((__tmp220880
                      (lambda ()
                        (let ((__method220104
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220102
                                  'check-arguments
                                  '#f))))
                          (if __method220104
                              __method220104
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp220880)))
              (__slot220105
               (let ((__slot220106
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass220101 'slot))))
                 (if __slot220106
                     __slot220106
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self218243%_ _%ctx218244%_ _%stx218245%_ _%args218246%_)
            (let* ((_%self218249%_ _%self218243%_)
                   (_%arguments-ok?218259%_
                    ((force __check-arguments220103)
                     _%self218249%_
                     _%ctx218244%_
                     _%stx218245%_
                     _%args218246%_))
                   (_%g218261218271%_
                    (lambda (_%g218262218268%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g218262218268%_))))
                   (_%g218260218335%_
                    (lambda (_%g218262218274%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g218262218274%_))
                          (let ((_%e218264218276%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g218262218274%_))))
                            (let ((_%hd218265218279%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218264218276%_)))
                                  (_%tl218266218281%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218264218276%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218266218281%_))
                                  ((lambda (_%g218263218284%_)
                                     (let* ((_%klass218297%_
                                             (let ((__tmp220881
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218249%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx218245%_
                                                __tmp220881)))
                                            (_%field218299%_
                                             (let ((__tmp220882
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218249%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass218297%_
                                                __tmp220882)))
                                            (_%object218301%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx218244%_
                                                _%g218263218284%_)))
                                            (_%klass218304%_ _%klass218297%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass218304%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp220883
                                                  (cons (if (or _%arguments-ok?218259%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218249%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218249%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field218299%_ '()))
                            (cons _%object218301%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp220883
                                              _%stx218245%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass218304%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp220884
                                                      (cons (if (or _%arguments-ok?218259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self218249%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218249%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field218299%_ '()))
                                (cons _%object218301%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220884
                                                  _%stx218245%_))
                                               (let ((_%$e218323%_
                                                      (let ((__tmp220885
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self218249%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass218304%_ __tmp220885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e218323%_
                                                     ((lambda (_%klass218326%_)
                                                        (let ((__tmp220886
                                                               (cons (if (or _%arguments-ok?218259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218249%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self218249%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field218299%_ '()))
                                         (cons _%object218301%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp220886 _%stx218245%_)))
              _%$e218323%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self218249%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp220887
                                                                (let ((_%$obj218332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp220888
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp220888))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj218332%_ '())
                                                  (cons _%object218301%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass218304%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj218332%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218249%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field218299%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj218332%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?218259%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj218332%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self218249%_
                               __slot220105
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
                        (##unchecked-structure-ref _%self218249%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj218332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218249%_
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
                   (gxc#xform-wrap-source __tmp220887 _%stx218245%_))
                 (let ((__tmp220889
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object218301%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218249%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp220889 _%stx218245%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd218265218279%_)
                                  (_%g218261218271%_ _%g218262218274%_))))
                          (_%g218261218271%_ _%g218262218274%_)))))
              (_%g218260218335%_ _%args218246%_))))))
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
      (lambda (_%self218007%_ _%ctx218008%_ _%stx218009%_ _%args218010%_)
        (let* ((_%self218013%_ _%self218007%_)
               (_%arguments-ok?218023%_
                (let ((__method220815
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self218013%_ 'check-arguments))))
                  (if __method220815
                      (let ()
                        (declare (not safe))
                        (__method220815
                         _%self218013%_
                         _%ctx218008%_
                         _%stx218009%_
                         _%args218010%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self218013%_
                                 'check-arguments))
                        '#!void))))
               (_%g218025218039%_
                (lambda (_%g218026218036%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218026218036%_))))
               (_%g218024218118%_
                (lambda (_%g218026218042%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218026218042%_))
                      (let ((_%e218029218044%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g218026218042%_))))
                        (let ((_%hd218030218047%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218029218044%_)))
                              (_%tl218031218049%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218029218044%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218031218049%_))
                              (let ((_%e218032218052%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl218031218049%_))))
                                (let ((_%hd218033218055%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218032218052%_)))
                                      (_%tl218034218057%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218032218052%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl218034218057%_))
                                      ((lambda (_%g218027218060%_
                                                _%g218028218061%_)
                                         (let* ((_%klass218077%_
                                                 (let ((__tmp220890
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218013%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx218009%_
                                                    __tmp220890)))
                                                (_%field218079%_
                                                 (let ((__tmp220891
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218013%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass218077%_
                                                    __tmp220891)))
                                                (_%object218081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx218008%_
                                                    _%g218028218061%_)))
                                                (_%value218083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx218008%_
                                                    _%g218027218060%_)))
                                                (_%klass218086%_
                                                 _%klass218077%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass218086%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp220892
                                                      (cons (if (or _%arguments-ok?218023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self218013%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218013%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field218079%_ '()))
                                (cons _%object218081%_
                                      (cons _%value218083%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220892
                                                  _%stx218009%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass218086%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp220893
                                                          (cons (if (or _%arguments-ok?218023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self218013%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218013%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218079%_ '()))
                                    (cons _%object218081%_
                                          (cons _%value218083%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp220893
                                                      _%stx218009%_))
                                                   (let ((_%$e218106%_
                                                          (let ((__tmp220894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218013%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass218086%_
                     __tmp220894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e218106%_
                                                         ((lambda (_%klass218109%_)
                                                            (let ((__tmp220895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?218023%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218013%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self218013%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field218079%_ '()))
                                             (cons _%object218081%_
                                                   (cons _%value218083%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp220895 _%stx218009%_)))
                  _%$e218106%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self218013%_ '4 '#f '#f))
                     (let ((__tmp220896
                            (let ((_%$obj218115%_
                                   (let ((__tmp220897
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp220897))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj218115%_ '())
                                                      (cons _%object218081%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass218086%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj218115%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self218013%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field218079%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj218115%_
                                                              '()))
                                                  (cons _%value218083%_
                                                        '())))))
                          (cons (if _%arguments-ok?218023%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self218013%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value218083%_ '())))))
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
                             _%self218013%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj218115%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218013%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value218083%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp220896 _%stx218009%_))
                     (let ((__tmp220898
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object218081%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self218013%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value218083%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp220898
                        _%stx218009%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd218033218055%_
                                       _%hd218030218047%_)
                                      (_%g218025218039%_ _%g218026218042%_))))
                              (_%g218025218039%_ _%g218026218042%_))))
                      (_%g218025218039%_ _%g218026218042%_)))))
          (_%g218024218118%_ _%args218010%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass220107 __method-table220108)
        (let ((__check-arguments220109
               (let ((__tmp220899
                      (lambda ()
                        (let ((__method220110
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220108
                                  'check-arguments
                                  '#f))))
                          (if __method220110
                              __method220110
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp220899))))
          (lambda (_%self218007%_ _%ctx218008%_ _%stx218009%_ _%args218010%_)
            (let* ((_%self218013%_ _%self218007%_)
                   (_%arguments-ok?218023%_
                    ((force __check-arguments220109)
                     _%self218013%_
                     _%ctx218008%_
                     _%stx218009%_
                     _%args218010%_))
                   (_%g218025218039%_
                    (lambda (_%g218026218036%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g218026218036%_))))
                   (_%g218024218118%_
                    (lambda (_%g218026218042%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g218026218042%_))
                          (let ((_%e218029218044%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g218026218042%_))))
                            (let ((_%hd218030218047%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218029218044%_)))
                                  (_%tl218031218049%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218029218044%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218031218049%_))
                                  (let ((_%e218032218052%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218031218049%_))))
                                    (let ((_%hd218033218055%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218032218052%_)))
                                          (_%tl218034218057%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218032218052%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl218034218057%_))
                                          ((lambda (_%g218027218060%_
                                                    _%g218028218061%_)
                                             (let* ((_%klass218077%_
                                                     (let ((__tmp220900
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218013%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx218009%_
                                                        __tmp220900)))
                                                    (_%field218079%_
                                                     (let ((__tmp220901
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218013%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass218077%_
                                                        __tmp220901)))
                                                    (_%object218081%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx218008%_
                                                        _%g218028218061%_)))
                                                    (_%value218083%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx218008%_
                                                        _%g218027218060%_)))
                                                    (_%klass218086%_
                                                     _%klass218077%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass218086%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp220902
                                                          (cons (if (or _%arguments-ok?218023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self218013%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218013%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218079%_ '()))
                                    (cons _%object218081%_
                                          (cons _%value218083%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp220902
                                                      _%stx218009%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass218086%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp220903
                                                              (cons (if (or _%arguments-ok?218023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self218013%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218013%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field218079%_ '()))
                                        (cons _%object218081%_
                                              (cons _%value218083%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp220903 _%stx218009%_))
               (let ((_%$e218106%_
                      (let ((__tmp220904
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218013%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass218086%_
                         __tmp220904))))
                 (if _%$e218106%_
                     ((lambda (_%klass218109%_)
                        (let ((__tmp220905
                               (cons (if (or _%arguments-ok?218023%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self218013%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self218013%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field218079%_
                                                             '()))
                                                 (cons _%object218081%_
                                                       (cons _%value218083%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp220905 _%stx218009%_)))
                      _%$e218106%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218013%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp220906
                                (let ((_%$obj218115%_
                                       (let ((__tmp220907
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp220907))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj218115%_
                                                                '())
                                                          (cons _%object218081%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass218086%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj218115%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self218013%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field218079%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value218083%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?218023%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj218115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self218013%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value218083%_ '())))))
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
                                 _%self218013%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj218115%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218013%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value218083%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp220906 _%stx218009%_))
                         (let ((__tmp220908
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object218081%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self218013%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value218083%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp220908
                            _%stx218009%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd218033218055%_
                                           _%hd218030218047%_)
                                          (_%g218025218039%_
                                           _%g218026218042%_))))
                                  (_%g218025218039%_ _%g218026218042%_))))
                          (_%g218025218039%_ _%g218026218042%_)))))
              (_%g218024218118%_ _%args218010%_))))))
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
      (lambda (_%self217823%_ _%ctx217824%_ _%stx217825%_ _%args217826%_)
        (let* ((_%self217829%_ _%self217823%_)
               (_%self217838217848%_ _%self217829%_)
               (_%E217840217851%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self217838217848%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K217841217861%_
                (lambda (_%inline217854%_ _%dispatch217855%_ _%arity217856%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self217829%_
                         _%args217826%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx217825%_
                         _%arity217856%_)))
                  (if _%inline217854%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp220909 (_%inline217854%_ _%stx217825%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp220909
                           _%stx217825%_
                           _%ctx217824%_)))
                      (if (and _%dispatch217855%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch217855%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch217855%_))
                            (let ((__tmp220910
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch217855%_
                                                           '()))
                                               _%args217826%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp220910
                               _%stx217825%_
                               _%ctx217824%_)))
                          (gxc#!procedure::optimize-call
                           _%self217829%_
                           _%ctx217824%_
                           _%stx217825%_
                           _%args217826%_)))))
               (_%e217842217864%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217838217848%_ '1 '#f '#f)))
               (_%e217843217867%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217838217848%_ '2 '#f '#f)))
               (_%e217844217870%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217838217848%_ '3 '#f '#f)))
               (_%arity217873%_ _%e217844217870%_)
               (_%e217845217875%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217838217848%_ '4 '#f '#f)))
               (_%dispatch217878%_ _%e217845217875%_)
               (_%e217846217880%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217838217848%_ '5 '#f '#f)))
               (_%inline217883%_ _%e217846217880%_))
          (_%K217841217861%_
           _%inline217883%_
           _%dispatch217878%_
           _%arity217873%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self217675%_ _%ctx217676%_ _%stx217677%_ _%args217678%_)
        (let* ((_%self217681%_ _%self217675%_)
               (_%$e217695%_
                (let ((__tmp220912
                       (lambda (_%g217690217692%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g217690217692%_
                            _%args217678%_))))
                      (__tmp220911
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self217681%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp220912 __tmp220911))))
          (if _%$e217695%_
              ((lambda (_%clause217698%_)
                 (let ((__method220816
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause217698%_ 'optimize-call))))
                   (if __method220816
                       (let ()
                         (declare (not safe))
                         (__method220816
                          _%clause217698%_
                          _%ctx217676%_
                          _%stx217677%_
                          _%args217678%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause217698%_
                                  'optimize-call))
                         '#!void))))
               _%$e217695%_)
              (let ((__tmp220913
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self217681%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx217677%_
                 __tmp220913))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self217416%_ _%ctx217417%_ _%stx217418%_ _%args217419%_)
        (let* ((_%self217422%_ _%self217416%_)
               (_%self217431217440%_ _%self217422%_)
               (_%E217433217443%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self217431217440%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K217434217534%_
                (lambda (_%dispatch217446%_ _%table217447%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch217446%_))
                      (let* ((_%g217448217458%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch217446%_)))
                             (_%else217450217466%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch217446%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx217417%_
                                   _%stx217418%_))))
                             (_%K217452217515%_
                              (lambda (_%main217469%_ _%keys217470%_)
                                (let ((_g220914_
                                       (gxc#!kw-lambda-split-args
                                        _%stx217418%_
                                        _%args217419%_)))
                                  (begin
                                    (let ((_g220915_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g220914_)
                                                 (##values-length _g220914_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g220915_ 2)))
                                          (error "Context expects 2 values"
                                                 _g220915_)))
                                    (let ((_%pargs217472%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g220914_ 0)))
                                          (_%kwargs217473%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g220914_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main217469%_))
                                        (if _%table217447%_
                                            (let ((_%xargs217481%_
                                                   (map (lambda (_%key217475%_)
                                                          (let ((_%$e217477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key217475%_ _%kwargs217473%_))))
                    (if _%$e217477%_ _%$e217477%_ '(%#ref absent-value))))
                _%keys217470%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw217483%_)
                                                 (if (memq (car _%kw217483%_)
                                                           _%keys217470%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx217418%_
                                                        _%keys217470%_
                                                        _%kw217483%_))))
                                               _%kwargs217473%_)
                                              (let ((__tmp220916
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main217469%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs217472%_
                                  _%xargs217481%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp220916
                                                 _%stx217418%_
                                                 _%ctx217417%_)))
                                            (let* ((_%kwt217485%_
                                                    (let ((__tmp220917
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp220917)))
                                                   (_%kwvars217489%_
                                                    (map (lambda (_%_217487%_)
                                                           (let ((__tmp220918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp220918)))
                 _%kwargs217473%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind217494%_
                                                    (map (lambda (_%kw217491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217492%_)
                   (cons (cons _%kwvar217492%_ '())
                         (cons (cdr _%kw217491%_) '())))
                 _%kwargs217473%_
                 _%kwvars217489%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset217499%_
                                                    (map (lambda (_%kw217496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217497%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt217485%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw217496%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar217497%_
                                                             '()))
                                                 '()))))))
                 _%kwargs217473%_
                 _%kwvars217489%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs217504%_
                                                    (map (lambda (_%kw217501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217502%_)
                   (cons (car _%kw217501%_)
                         (cons '%#ref (cons _%kwvar217502%_ '()))))
                 _%kwargs217473%_
                 _%kwvars217489%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs217512%_
                                                    (map (lambda (_%key217506%_)
                                                           (let ((_%$e217508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key217506%_ _%xkwargs217504%_))))
                     (if _%$e217508%_ _%$e217508%_ '(%#ref absent-value))))
                 _%keys217470%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp220919
                                                    (cons '%#let-values
                                                          (cons _%kwbind217494%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt217485%_ '())
                                                      (cons (let ((__tmp220920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs217473%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp220920 _%stx217418%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp220921
                                                             (cons (let ((__tmp220922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main217469%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt217485%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs217472%_
                                                       _%xargs217512%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp220922 _%stx217418%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp220921 _%kwset217499%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp220919
                                               _%stx217418%_
                                               _%ctx217417%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g217448217458%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e217453217518%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217448217458%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e217454217521%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217448217458%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e217455217524%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217448217458%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys217527%_ _%e217455217524%_)
                                   (_%e217456217529%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217448217458%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main217532%_ _%e217456217529%_))
                              (_%K217452217515%_
                               _%main217532%_
                               _%keys217527%_))
                            (_%else217450217466%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx217417%_ _%stx217418%_)))))
               (_%e217435217537%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217431217440%_ '1 '#f '#f)))
               (_%e217436217540%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217431217440%_ '2 '#f '#f)))
               (_%e217437217543%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217431217440%_ '3 '#f '#f)))
               (_%table217546%_ _%e217437217543%_)
               (_%e217438217548%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217431217440%_ '4 '#f '#f)))
               (_%dispatch217551%_ _%e217438217548%_))
          (_%K217434217534%_ _%dispatch217551%_ _%table217546%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx217029%_ _%args217030%_)
        (let _%lp217032%_ ((_%rest217034%_ _%args217030%_)
                           (_%pargs217035%_ '())
                           (_%kwargs217036%_ '()))
          (let* ((_%__stx220375220376%_ _%rest217034%_)
                 (_%g217042217094%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx220375220376%_)))))
            (let ((_%__kont220377220378%_
                   (lambda (_%g217044217273%_ _%g217045217274%_)
                     (_%lp217032%_
                      _%g217044217273%_
                      (cons _%g217045217274%_ _%pargs217035%_)
                      _%kwargs217036%_)))
                  (_%__kont220379220380%_
                   (lambda (_%g217059217219%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1
                                cons
                                _%g217059217219%_
                                _%pargs217035%_))
                             (reverse _%kwargs217036%_))))
                  (_%__kont220381220382%_
                   (lambda (_%g217070217166%_
                            _%g217071217167%_
                            _%g217072217168%_)
                     (let ((_%kw217185%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g217072217168%_))))
                       (if (assq _%kw217185%_ _%kwargs217036%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx217029%_
                              _%kw217185%_))
                           (_%lp217032%_
                            _%g217070217166%_
                            _%pargs217035%_
                            (cons (cons _%kw217185%_ _%g217071217167%_)
                                  _%kwargs217036%_))))))
                  (_%__kont220383220384%_
                   (lambda (_%g217085217114%_ _%g217086217115%_)
                     (_%lp217032%_
                      _%g217085217114%_
                      (cons _%g217086217115%_ _%pargs217035%_)
                      _%kwargs217036%_)))
                  (_%__kont220385220386%_
                   (lambda ()
                     (values (reverse _%pargs217035%_)
                             (reverse _%kwargs217036%_)))))
              (let ((_%__match220482220483%_
                     (lambda (_%e217073217134%_
                              _%hd217074217137%_
                              _%tl217075217139%_
                              _%e217076217142%_
                              _%hd217077217145%_
                              _%tl217078217147%_
                              _%e217079217150%_
                              _%hd217080217153%_
                              _%tl217081217155%_
                              _%e217082217158%_
                              _%hd217083217161%_
                              _%tl217084217163%_)
                       (let ((_%g217070217166%_ _%tl217084217163%_)
                             (_%g217071217167%_ _%hd217083217161%_)
                             (_%g217072217168%_ _%hd217080217153%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g217072217168%_))
                             (_%__kont220381220382%_
                              _%g217070217166%_
                              _%g217071217167%_
                              _%g217072217168%_)
                             (_%__kont220383220384%_
                              _%tl217075217139%_
                              _%hd217074217137%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx220375220376%_))
                    (let ((_%e217046217238%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx220375220376%_))))
                      (let ((_%tl217048217243%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217046217238%_)))
                            (_%hd217047217241%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217046217238%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd217047217241%_))
                            (let ((_%e217049217246%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd217047217241%_))))
                              (let ((_%tl217051217251%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e217049217246%_)))
                                    (_%hd217050217249%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e217049217246%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd217050217249%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd217050217249%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217051217251%_))
                                            (let ((_%e217052217254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl217051217251%_))))
                                              (let ((_%tl217054217259%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217052217254%_)))
                                                    (_%hd217053217257%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217052217254%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd217053217257%_))
                                                    (let ((_%e217055217262%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd217053217257%_))))
                                                      (if (equal? _%e217055217262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl217054217259%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl217048217243%_))
                          (let ((_%e217056217265%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl217048217243%_))))
                            (let ((_%tl217058217270%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217056217265%_)))
                                  (_%hd217057217268%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217056217265%_))))
                              (_%__kont220377220378%_
                               _%tl217058217270%_
                               _%hd217057217268%_)))
                          (_%__kont220383220384%_
                           _%tl217048217243%_
                           _%hd217047217241%_))
                      (_%__kont220383220384%_
                       _%tl217048217243%_
                       _%hd217047217241%_))
                  (if (equal? _%e217055217262%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217054217259%_))
                          (_%__kont220379220380%_ _%tl217048217243%_)
                          (_%__kont220383220384%_
                           _%tl217048217243%_
                           _%hd217047217241%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217054217259%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217048217243%_))
                              (let ((_%e217082217158%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl217048217243%_))))
                                (let ((_%tl217084217163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217082217158%_)))
                                      (_%hd217083217161%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217082217158%_))))
                                  (_%__match220482220483%_
                                   _%e217046217238%_
                                   _%hd217047217241%_
                                   _%tl217048217243%_
                                   _%e217049217246%_
                                   _%hd217050217249%_
                                   _%tl217051217251%_
                                   _%e217052217254%_
                                   _%hd217053217257%_
                                   _%tl217054217259%_
                                   _%e217082217158%_
                                   _%hd217083217161%_
                                   _%tl217084217163%_)))
                              (_%__kont220383220384%_
                               _%tl217048217243%_
                               _%hd217047217241%_))
                          (_%__kont220383220384%_
                           _%tl217048217243%_
                           _%hd217047217241%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl217054217259%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl217048217243%_))
                                                            (let ((_%e217082217158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl217048217243%_))))
                      (let ((_%tl217084217163%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217082217158%_)))
                            (_%hd217083217161%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217082217158%_))))
                        (_%__match220482220483%_
                         _%e217046217238%_
                         _%hd217047217241%_
                         _%tl217048217243%_
                         _%e217049217246%_
                         _%hd217050217249%_
                         _%tl217051217251%_
                         _%e217052217254%_
                         _%hd217053217257%_
                         _%tl217054217259%_
                         _%e217082217158%_
                         _%hd217083217161%_
                         _%tl217084217163%_)))
                    (_%__kont220383220384%_
                     _%tl217048217243%_
                     _%hd217047217241%_))
                (_%__kont220383220384%_
                 _%tl217048217243%_
                 _%hd217047217241%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont220383220384%_
                                             _%tl217048217243%_
                                             _%hd217047217241%_))
                                        (_%__kont220383220384%_
                                         _%tl217048217243%_
                                         _%hd217047217241%_))
                                    (_%__kont220383220384%_
                                     _%tl217048217243%_
                                     _%hd217047217241%_))))
                            (_%__kont220383220384%_
                             _%tl217048217243%_
                             _%hd217047217241%_))))
                    (_%__kont220385220386%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self217013%_ _%ctx217014%_ _%stx217015%_ _%args217016%_)
        (let ((_%self217019%_ _%self217013%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx217014%_ _%stx217015%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self216703%_ _%stx216704%_)
        (let* ((_%__stx220491220492%_ _%stx216704%_)
               (_%g216707216747%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220491220492%_)))))
          (let ((_%__kont220493220494%_
                 (lambda (_%g216709216851%_ _%g216710216852%_)
                   (let ((_%$e216879%_
                          (member 'return:
                                  (let ((__tmp220923
                                         (lambda (_%g216871216874%_
                                                  _%g216872216876%_)
                                           (cons _%g216871216874%_
                                                 _%g216872216876%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp220923
                                     '()
                                     _%g216710216852%_))
                                  gx#stx-eq?)))
                     (if _%$e216879%_
                         ((lambda (_%tail216882%_)
                            (let ((_%type216884%_
                                   (let ((__tmp220924
                                          (let ((__tmp220925
                                                 (cadr _%tail216882%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp220925))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx216704%_
                                      __tmp220924))))
                              (gxc#check-return-type!
                               _%stx216704%_
                               _%g216709216851%_
                               _%type216884%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self216703%_
                                 _%g216709216851%_))))
                          _%$e216879%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self216703%_
                            _%g216709216851%_))))))
                (_%__kont220497220498%_
                 (lambda (_%g216732216776%_ _%g216733216777%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self216703%_ _%g216732216776%_)))))
            (let ((_%__match220528220529%_
                   (lambda (_%e216711216797%_
                            _%hd216712216800%_
                            _%tl216713216802%_
                            _%e216714216805%_
                            _%hd216715216808%_
                            _%tl216716216810%_
                            _%e216717216813%_
                            _%hd216718216816%_
                            _%tl216719216818%_
                            _%__splice220495220496%_
                            _%target216720216821%_
                            _%tl216722216823%_)
                     (letrec ((_%loop216723216826%_
                               (lambda (_%hd216721216829%_
                                        _%signature216727216831%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd216721216829%_))
                                     (let ((_%e216724216833%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd216721216829%_))))
                                       (let ((_%lp-tl216726216838%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e216724216833%_)))
                                             (_%lp-hd216725216836%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e216724216833%_))))
                                         (_%loop216723216826%_
                                          _%lp-tl216726216838%_
                                          (cons _%lp-hd216725216836%_
                                                _%signature216727216831%_))))
                                     (let ((_%signature216728216841%_
                                            (reverse _%signature216727216831%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl216716216810%_))
                                           (let ((_%e216729216843%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl216716216810%_))))
                                             (let ((_%tl216731216848%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e216729216843%_)))
                                                   (_%hd216730216846%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e216729216843%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl216731216848%_))
                                                   (_%__kont220493220494%_
                                                    _%hd216730216846%_
                                                    _%signature216728216841%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g216707216747%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g216707216747%_))))))))
                       (_%loop216723216826%_ _%target216720216821%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220491220492%_))
                  (let ((_%e216711216797%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220491220492%_))))
                    (let ((_%tl216713216802%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216711216797%_)))
                          (_%hd216712216800%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216711216797%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216713216802%_))
                          (let ((_%e216714216805%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216713216802%_))))
                            (let ((_%tl216716216810%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216714216805%_)))
                                  (_%hd216715216808%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216714216805%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd216715216808%_))
                                  (let ((_%e216717216813%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216715216808%_))))
                                    (let ((_%tl216719216818%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216717216813%_)))
                                          (_%hd216718216816%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216717216813%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd216718216816%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd216718216816%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl216719216818%_))
                                                  (let ((_%__splice220495220496%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl216719216818%_
                                                            '0))))
                                                    (let ((_%tl216722216823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220495220496%_
                                                              '1)))
                                                          (_%target216720216821%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220495220496%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216722216823%_))
                                                          (_%__match220528220529%_
                                                           _%e216711216797%_
                                                           _%hd216712216800%_
                                                           _%tl216713216802%_
                                                           _%e216714216805%_
                                                           _%hd216715216808%_
                                                           _%tl216716216810%_
                                                           _%e216717216813%_
                                                           _%hd216718216816%_
                                                           _%tl216719216818%_
                                                           _%__splice220495220496%_
                                                           _%target216720216821%_
                                                           _%tl216722216823%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl216716216810%_))
                      (let ((_%e216740216768%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216716216810%_))))
                        (let ((_%tl216742216773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216740216768%_)))
                              (_%hd216741216771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216740216768%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216742216773%_))
                              (_%__kont220497220498%_
                               _%hd216741216771%_
                               _%hd216715216808%_)
                              (let ()
                                (declare (not safe))
                                (_%g216707216747%_)))))
                      (let () (declare (not safe)) (_%g216707216747%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216716216810%_))
                                                      (let ((_%e216740216768%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216716216810%_))))
                (let ((_%tl216742216773%_
                       (let () (declare (not safe)) (##cdr _%e216740216768%_)))
                      (_%hd216741216771%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216740216768%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216742216773%_))
                      (_%__kont220497220498%_
                       _%hd216741216771%_
                       _%hd216715216808%_)
                      (let () (declare (not safe)) (_%g216707216747%_)))))
              (let () (declare (not safe)) (_%g216707216747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216716216810%_))
                                                  (let ((_%e216740216768%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216716216810%_))))
                                                    (let ((_%tl216742216773%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216740216768%_)))
                                                          (_%hd216741216771%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216740216768%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216742216773%_))
                                                          (_%__kont220497220498%_
                                                           _%hd216741216771%_
                                                           _%hd216715216808%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216707216747%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216707216747%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216716216810%_))
                                              (let ((_%e216740216768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216716216810%_))))
                                                (let ((_%tl216742216773%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216740216768%_)))
                                                      (_%hd216741216771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216740216768%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216742216773%_))
                                                      (_%__kont220497220498%_
                                                       _%hd216741216771%_
                                                       _%hd216715216808%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216707216747%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216707216747%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216716216810%_))
                                      (let ((_%e216740216768%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216716216810%_))))
                                        (let ((_%tl216742216773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216740216768%_)))
                                              (_%hd216741216771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216740216768%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216742216773%_))
                                              (_%__kont220497220498%_
                                               _%hd216741216771%_
                                               _%hd216715216808%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g216707216747%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216707216747%_))))))
                          (let () (declare (not safe)) (_%g216707216747%_)))))
                  (let () (declare (not safe)) (_%g216707216747%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx216678%_ _%expr216679%_ _%type216680%_)
        (let ((_%$e216682%_ (not _%type216680%_)))
          (if _%$e216682%_
              _%$e216682%_
              (let ((_%$e216685%_
                     (eq? (##structure-ref _%type216680%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e216685%_
                    _%$e216685%_
                    (let ((_%$e216688%_
                           (eq? (##structure-ref
                                 _%type216680%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e216688%_
                          _%$e216688%_
                          (let ((_%expr-type216692%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr216679%_))))
                            (if (not _%expr-type216692%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx216678%_
                                   _%type216680%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type216692%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx216678%_
                                       _%type216680%_
                                       _%expr-type216692%_))
                                    (let ((_%$e216696%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type216692%_
                                              'gxc#!abort::t))))
                                      (if _%$e216696%_
                                          _%$e216696%_
                                          (let ((_%$e216699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type216692%_
                                                    _%type216680%_))))
                                            (if _%$e216699%_
                                                _%$e216699%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx216678%_
                                                   _%type216680%_
                                                   _%expr-type216692%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self216104%_ _%stx216105%_)
        (let* ((_%__stx220573220574%_ _%stx216105%_)
               (_%g216110216220%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220573220574%_)))))
          (let ((_%__kont220575220576%_
                 (lambda (_%g216112216652%_
                          _%g216113216653%_
                          _%g216114216654%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g216114216654%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self216104%_ _%g216113216653%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self216104%_
                          _%g216112216652%_)))))
                (_%__kont220577220578%_
                 (lambda (_%g216133216478%_
                          _%g216134216479%_
                          _%g216135216480%_
                          _%g216136216481%_)
                   (let ((_%$e216513%_
                          (let ((__tmp220926
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g216136216481%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp220926))))
                     (if _%$e216513%_
                         ((lambda (_%pred-type216516%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type216516%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type216516%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test216521%_
                                        (let ((__tmp220927
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g216136216481%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g216135216480%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp220927
                                           _%stx216105%_
                                           _%self216104%_)))
                                       (_%K216525%_
                                        (let ((__tmp220928
                                               (lambda ()
                                                 (let ((__tmp220931
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self216104%_
                                                             _%g216134216479%_))))
                                                       (__tmp220929
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g216135216480%_))
                            (let ((__tmp220930
                                   (##structure-ref
                                    _%pred-type216516%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx216105%_
                               __tmp220930)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp220931
                                                    gxc#current-compile-path-type
                                                    __tmp220929)))))
                                          (declare (not safe))
                                          (__make-promise __tmp220928)))
                                       (_%E216528%_
                                        (let ((__tmp220932
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self216104%_
                                                    _%g216133216478%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp220932)))
                                       (_%__stx220551220552%_ _%test216521%_)
                                       (_%g216532216546%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx220551220552%_)))))
                                  (let ((_%__kont220553220554%_
                                         (lambda (_%g216534216574%_
                                                  _%g216535216575%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g216534216574%_))
                                               (force _%K216525%_)
                                               (force _%E216528%_))))
                                        (_%__kont220555220556%_
                                         (lambda ()
                                           (let ((__tmp220933
                                                  (cons '%#if
                                                        (cons _%test216521%_
                                                              (cons (force _%K216525%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E216528%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp220933
                                              _%stx216105%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx220551220552%_))
                                        (let ((_%e216536216558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx220551220552%_))))
                                          (let ((_%tl216538216563%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e216536216558%_)))
                                                (_%hd216537216561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e216536216558%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl216538216563%_))
                                                (let ((_%e216539216566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl216538216563%_))))
                                                  (let ((_%tl216541216571%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e216539216566%_)))
                                                        (_%hd216540216569%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e216539216566%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl216541216571%_))
                                                        (_%__kont220553220554%_
                                                         _%hd216540216569%_
                                                         _%hd216537216561%_)
                                                        (_%__kont220555220556%_))))
                                                (_%__kont220555220556%_))))
                                        (_%__kont220555220556%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self216104%_
                                   _%stx216105%_))))
                          _%$e216513%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self216104%_
                            _%stx216105%_))))))
                (_%__kont220579220580%_
                 (lambda (_%g216170216354%_
                          _%g216171216355%_
                          _%g216172216356%_
                          _%g216173216357%_)
                   (gxc#optimize-if%
                    _%self216104%_
                    (let ((__tmp220934
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g216172216356%_
                                       (cons _%g216170216354%_
                                             (cons _%g216171216355%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp220934 _%stx216105%_)))))
                (_%__kont220581220582%_
                 (lambda (_%g216201216257%_
                          _%g216202216258%_
                          _%g216203216259%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self216104%_ _%stx216105%_)))))
            (let ((_%__match220780220781%_
                   (lambda (_%e216174216282%_
                            _%hd216175216285%_
                            _%tl216176216287%_
                            _%e216177216290%_
                            _%hd216178216293%_
                            _%tl216179216295%_
                            _%e216180216298%_
                            _%hd216181216301%_
                            _%tl216182216303%_
                            _%e216183216306%_
                            _%hd216184216309%_
                            _%tl216185216311%_
                            _%e216186216314%_
                            _%hd216187216317%_
                            _%tl216188216319%_
                            _%e216189216322%_
                            _%hd216190216325%_
                            _%tl216191216327%_
                            _%e216192216330%_
                            _%hd216193216333%_
                            _%tl216194216335%_
                            _%e216195216338%_
                            _%hd216196216341%_
                            _%tl216197216343%_
                            _%e216198216346%_
                            _%hd216199216349%_
                            _%tl216200216351%_)
                     (let ((_%g216170216354%_ _%hd216199216349%_)
                           (_%g216171216355%_ _%hd216196216341%_)
                           (_%g216172216356%_ _%hd216193216333%_)
                           (_%g216173216357%_ _%hd216190216325%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g216173216357%_ 'not))
                           (_%__kont220579220580%_
                            _%g216170216354%_
                            _%g216171216355%_
                            _%g216172216356%_
                            _%g216173216357%_)
                           (_%__kont220581220582%_
                            _%hd216199216349%_
                            _%hd216196216341%_
                            _%hd216178216293%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220573220574%_))
                  (let ((_%e216115216604%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220573220574%_))))
                    (let ((_%tl216117216609%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216115216604%_)))
                          (_%hd216116216607%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216115216604%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216117216609%_))
                          (let ((_%e216118216612%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216117216609%_))))
                            (let ((_%tl216120216617%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216118216612%_)))
                                  (_%hd216119216615%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216118216612%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd216119216615%_))
                                  (let ((_%e216121216620%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216119216615%_))))
                                    (let ((_%tl216123216625%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216121216620%_)))
                                          (_%hd216122216623%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216121216620%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd216122216623%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd216122216623%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216123216625%_))
                                                  (let ((_%e216124216628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216123216625%_))))
                                                    (let ((_%tl216126216633%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216124216628%_)))
                                                          (_%hd216125216631%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216124216628%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216126216633%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl216120216617%_))
                      (let ((_%e216127216636%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216120216617%_))))
                        (let ((_%tl216129216641%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216127216636%_)))
                              (_%hd216128216639%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216127216636%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216129216641%_))
                              (let ((_%e216130216644%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216129216641%_))))
                                (let ((_%tl216132216649%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216130216644%_)))
                                      (_%hd216131216647%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216130216644%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216132216649%_))
                                      (_%__kont220575220576%_
                                       _%hd216131216647%_
                                       _%hd216128216639%_
                                       _%hd216125216631%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g216110216220%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g216110216220%_)))))
                      (let () (declare (not safe)) (_%g216110216220%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216120216617%_))
                      (let ((_%e216210216241%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216120216617%_))))
                        (let ((_%tl216212216246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216210216241%_)))
                              (_%hd216211216244%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216210216241%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216212216246%_))
                              (let ((_%e216213216249%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216212216246%_))))
                                (let ((_%tl216215216254%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216213216249%_)))
                                      (_%hd216214216252%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216213216249%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216215216254%_))
                                      (_%__kont220581220582%_
                                       _%hd216214216252%_
                                       _%hd216211216244%_
                                       _%hd216119216615%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g216110216220%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g216110216220%_)))))
                      (let () (declare (not safe)) (_%g216110216220%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216120216617%_))
                                                      (let ((_%e216210216241%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216120216617%_))))
                (let ((_%tl216212216246%_
                       (let () (declare (not safe)) (##cdr _%e216210216241%_)))
                      (_%hd216211216244%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216210216241%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216212216246%_))
                      (let ((_%e216213216249%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216212216246%_))))
                        (let ((_%tl216215216254%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216213216249%_)))
                              (_%hd216214216252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216213216249%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216215216254%_))
                              (_%__kont220581220582%_
                               _%hd216214216252%_
                               _%hd216211216244%_
                               _%hd216119216615%_)
                              (let ()
                                (declare (not safe))
                                (_%g216110216220%_)))))
                      (let () (declare (not safe)) (_%g216110216220%_)))))
              (let () (declare (not safe)) (_%g216110216220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd216122216623%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216123216625%_))
                                                      (let ((_%e216146216414%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216123216625%_))))
                (let ((_%tl216148216419%_
                       (let () (declare (not safe)) (##cdr _%e216146216414%_)))
                      (_%hd216147216417%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216146216414%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd216147216417%_))
                      (let ((_%e216149216422%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd216147216417%_))))
                        (let ((_%tl216151216427%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216149216422%_)))
                              (_%hd216150216425%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216149216422%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd216150216425%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd216150216425%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216151216427%_))
                                      (let ((_%e216152216430%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216151216427%_))))
                                        (let ((_%tl216154216435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216152216430%_)))
                                              (_%hd216153216433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216152216430%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216154216435%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216148216419%_))
                                                  (let ((_%e216155216438%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216148216419%_))))
                                                    (let ((_%tl216157216443%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216155216438%_)))
                                                          (_%hd216156216441%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216155216438%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd216156216441%_))
                                                          (let ((_%e216158216446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd216156216441%_))))
                    (let ((_%tl216160216451%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216158216446%_)))
                          (_%hd216159216449%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216158216446%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd216159216449%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd216159216449%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216160216451%_))
                                  (let ((_%e216161216454%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216160216451%_))))
                                    (let ((_%tl216163216459%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216161216454%_)))
                                          (_%hd216162216457%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216161216454%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216163216459%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216157216443%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216120216617%_))
                                                  (let ((_%e216164216462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216120216617%_))))
                                                    (let ((_%tl216166216467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216164216462%_)))
                                                          (_%hd216165216465%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216164216462%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216166216467%_))
                                                          (let ((_%e216167216470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216166216467%_))))
                    (let ((_%tl216169216475%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216167216470%_)))
                          (_%hd216168216473%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216167216470%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216169216475%_))
                          (_%__kont220577220578%_
                           _%hd216168216473%_
                           _%hd216165216465%_
                           _%hd216162216457%_
                           _%hd216153216433%_)
                          (let () (declare (not safe)) (_%g216110216220%_)))))
                  (let () (declare (not safe)) (_%g216110216220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216110216220%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216120216617%_))
                                                  (let ((_%e216210216241%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216120216617%_))))
                                                    (let ((_%tl216212216246%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216210216241%_)))
                                                          (_%hd216211216244%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216210216241%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216212216246%_))
                                                          (let ((_%e216213216249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216212216246%_))))
                    (let ((_%tl216215216254%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216213216249%_)))
                          (_%hd216214216252%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216213216249%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216215216254%_))
                          (_%__kont220581220582%_
                           _%hd216214216252%_
                           _%hd216211216244%_
                           _%hd216119216615%_)
                          (let () (declare (not safe)) (_%g216110216220%_)))))
                  (let () (declare (not safe)) (_%g216110216220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216110216220%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216157216443%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216120216617%_))
                                                  (let ((_%e216195216338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216120216617%_))))
                                                    (let ((_%tl216197216343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216195216338%_)))
                                                          (_%hd216196216341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216195216338%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216197216343%_))
                                                          (let ((_%e216198216346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216197216343%_))))
                    (let ((_%tl216200216351%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216198216346%_)))
                          (_%hd216199216349%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216198216346%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216200216351%_))
                          (_%__match220780220781%_
                           _%e216115216604%_
                           _%hd216116216607%_
                           _%tl216117216609%_
                           _%e216118216612%_
                           _%hd216119216615%_
                           _%tl216120216617%_
                           _%e216121216620%_
                           _%hd216122216623%_
                           _%tl216123216625%_
                           _%e216146216414%_
                           _%hd216147216417%_
                           _%tl216148216419%_
                           _%e216149216422%_
                           _%hd216150216425%_
                           _%tl216151216427%_
                           _%e216152216430%_
                           _%hd216153216433%_
                           _%tl216154216435%_
                           _%e216155216438%_
                           _%hd216156216441%_
                           _%tl216157216443%_
                           _%e216195216338%_
                           _%hd216196216341%_
                           _%tl216197216343%_
                           _%e216198216346%_
                           _%hd216199216349%_
                           _%tl216200216351%_)
                          (let () (declare (not safe)) (_%g216110216220%_)))))
                  (let () (declare (not safe)) (_%g216110216220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216110216220%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216120216617%_))
                                                  (let ((_%e216210216241%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216120216617%_))))
                                                    (let ((_%tl216212216246%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216210216241%_)))
                                                          (_%hd216211216244%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216210216241%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216212216246%_))
                                                          (let ((_%e216213216249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216212216246%_))))
                    (let ((_%tl216215216254%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216213216249%_)))
                          (_%hd216214216252%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216213216249%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216215216254%_))
                          (_%__kont220581220582%_
                           _%hd216214216252%_
                           _%hd216211216244%_
                           _%hd216119216615%_)
                          (let () (declare (not safe)) (_%g216110216220%_)))))
                  (let () (declare (not safe)) (_%g216110216220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216110216220%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216157216443%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216120216617%_))
                                          (let ((_%e216195216338%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216120216617%_))))
                                            (let ((_%tl216197216343%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216195216338%_)))
                                                  (_%hd216196216341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216195216338%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216197216343%_))
                                                  (let ((_%e216198216346%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216197216343%_))))
                                                    (let ((_%tl216200216351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216198216346%_)))
                                                          (_%hd216199216349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216198216346%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216200216351%_))
                                                          (_%__match220780220781%_
                                                           _%e216115216604%_
                                                           _%hd216116216607%_
                                                           _%tl216117216609%_
                                                           _%e216118216612%_
                                                           _%hd216119216615%_
                                                           _%tl216120216617%_
                                                           _%e216121216620%_
                                                           _%hd216122216623%_
                                                           _%tl216123216625%_
                                                           _%e216146216414%_
                                                           _%hd216147216417%_
                                                           _%tl216148216419%_
                                                           _%e216149216422%_
                                                           _%hd216150216425%_
                                                           _%tl216151216427%_
                                                           _%e216152216430%_
                                                           _%hd216153216433%_
                                                           _%tl216154216435%_
                                                           _%e216155216438%_
                                                           _%hd216156216441%_
                                                           _%tl216157216443%_
                                                           _%e216195216338%_
                                                           _%hd216196216341%_
                                                           _%tl216197216343%_
                                                           _%e216198216346%_
                                                           _%hd216199216349%_
                                                           _%tl216200216351%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216110216220%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216110216220%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216110216220%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216120216617%_))
                                          (let ((_%e216210216241%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216120216617%_))))
                                            (let ((_%tl216212216246%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216210216241%_)))
                                                  (_%hd216211216244%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216210216241%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216212216246%_))
                                                  (let ((_%e216213216249%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216212216246%_))))
                                                    (let ((_%tl216215216254%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216213216249%_)))
                                                          (_%hd216214216252%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216213216249%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216215216254%_))
                                                          (_%__kont220581220582%_
                                                           _%hd216214216252%_
                                                           _%hd216211216244%_
                                                           _%hd216119216615%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216110216220%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216110216220%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216110216220%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216157216443%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216120216617%_))
                                      (let ((_%e216195216338%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216120216617%_))))
                                        (let ((_%tl216197216343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216195216338%_)))
                                              (_%hd216196216341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216195216338%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216197216343%_))
                                              (let ((_%e216198216346%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216197216343%_))))
                                                (let ((_%tl216200216351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216198216346%_)))
                                                      (_%hd216199216349%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216198216346%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216200216351%_))
                                                      (_%__match220780220781%_
                                                       _%e216115216604%_
                                                       _%hd216116216607%_
                                                       _%tl216117216609%_
                                                       _%e216118216612%_
                                                       _%hd216119216615%_
                                                       _%tl216120216617%_
                                                       _%e216121216620%_
                                                       _%hd216122216623%_
                                                       _%tl216123216625%_
                                                       _%e216146216414%_
                                                       _%hd216147216417%_
                                                       _%tl216148216419%_
                                                       _%e216149216422%_
                                                       _%hd216150216425%_
                                                       _%tl216151216427%_
                                                       _%e216152216430%_
                                                       _%hd216153216433%_
                                                       _%tl216154216435%_
                                                       _%e216155216438%_
                                                       _%hd216156216441%_
                                                       _%tl216157216443%_
                                                       _%e216195216338%_
                                                       _%hd216196216341%_
                                                       _%tl216197216343%_
                                                       _%e216198216346%_
                                                       _%hd216199216349%_
                                                       _%tl216200216351%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216110216220%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216110216220%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216110216220%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216120216617%_))
                                      (let ((_%e216210216241%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216120216617%_))))
                                        (let ((_%tl216212216246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216210216241%_)))
                                              (_%hd216211216244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216210216241%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216212216246%_))
                                              (let ((_%e216213216249%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216212216246%_))))
                                                (let ((_%tl216215216254%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216213216249%_)))
                                                      (_%hd216214216252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216213216249%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216215216254%_))
                                                      (_%__kont220581220582%_
                                                       _%hd216214216252%_
                                                       _%hd216211216244%_
                                                       _%hd216119216615%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216110216220%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216110216220%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216110216220%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216157216443%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216120216617%_))
                                  (let ((_%e216195216338%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216120216617%_))))
                                    (let ((_%tl216197216343%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216195216338%_)))
                                          (_%hd216196216341%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216195216338%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216197216343%_))
                                          (let ((_%e216198216346%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216197216343%_))))
                                            (let ((_%tl216200216351%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216198216346%_)))
                                                  (_%hd216199216349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216198216346%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216200216351%_))
                                                  (_%__match220780220781%_
                                                   _%e216115216604%_
                                                   _%hd216116216607%_
                                                   _%tl216117216609%_
                                                   _%e216118216612%_
                                                   _%hd216119216615%_
                                                   _%tl216120216617%_
                                                   _%e216121216620%_
                                                   _%hd216122216623%_
                                                   _%tl216123216625%_
                                                   _%e216146216414%_
                                                   _%hd216147216417%_
                                                   _%tl216148216419%_
                                                   _%e216149216422%_
                                                   _%hd216150216425%_
                                                   _%tl216151216427%_
                                                   _%e216152216430%_
                                                   _%hd216153216433%_
                                                   _%tl216154216435%_
                                                   _%e216155216438%_
                                                   _%hd216156216441%_
                                                   _%tl216157216443%_
                                                   _%e216195216338%_
                                                   _%hd216196216341%_
                                                   _%tl216197216343%_
                                                   _%e216198216346%_
                                                   _%hd216199216349%_
                                                   _%tl216200216351%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216110216220%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216110216220%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216110216220%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216120216617%_))
                                  (let ((_%e216210216241%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216120216617%_))))
                                    (let ((_%tl216212216246%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216210216241%_)))
                                          (_%hd216211216244%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216210216241%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216212216246%_))
                                          (let ((_%e216213216249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216212216246%_))))
                                            (let ((_%tl216215216254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216213216249%_)))
                                                  (_%hd216214216252%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216213216249%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216215216254%_))
                                                  (_%__kont220581220582%_
                                                   _%hd216214216252%_
                                                   _%hd216211216244%_
                                                   _%hd216119216615%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216110216220%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216110216220%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216110216220%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216157216443%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216120216617%_))
                          (let ((_%e216195216338%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216120216617%_))))
                            (let ((_%tl216197216343%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216195216338%_)))
                                  (_%hd216196216341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216195216338%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216197216343%_))
                                  (let ((_%e216198216346%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216197216343%_))))
                                    (let ((_%tl216200216351%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216198216346%_)))
                                          (_%hd216199216349%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216198216346%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216200216351%_))
                                          (_%__match220780220781%_
                                           _%e216115216604%_
                                           _%hd216116216607%_
                                           _%tl216117216609%_
                                           _%e216118216612%_
                                           _%hd216119216615%_
                                           _%tl216120216617%_
                                           _%e216121216620%_
                                           _%hd216122216623%_
                                           _%tl216123216625%_
                                           _%e216146216414%_
                                           _%hd216147216417%_
                                           _%tl216148216419%_
                                           _%e216149216422%_
                                           _%hd216150216425%_
                                           _%tl216151216427%_
                                           _%e216152216430%_
                                           _%hd216153216433%_
                                           _%tl216154216435%_
                                           _%e216155216438%_
                                           _%hd216156216441%_
                                           _%tl216157216443%_
                                           _%e216195216338%_
                                           _%hd216196216341%_
                                           _%tl216197216343%_
                                           _%e216198216346%_
                                           _%hd216199216349%_
                                           _%tl216200216351%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216110216220%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216110216220%_)))))
                          (let () (declare (not safe)) (_%g216110216220%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216120216617%_))
                          (let ((_%e216210216241%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216120216617%_))))
                            (let ((_%tl216212216246%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216210216241%_)))
                                  (_%hd216211216244%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216210216241%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216212216246%_))
                                  (let ((_%e216213216249%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216212216246%_))))
                                    (let ((_%tl216215216254%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216213216249%_)))
                                          (_%hd216214216252%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216213216249%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216215216254%_))
                                          (_%__kont220581220582%_
                                           _%hd216214216252%_
                                           _%hd216211216244%_
                                           _%hd216119216615%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216110216220%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216110216220%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g216110216220%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216120216617%_))
                                                      (let ((_%e216210216241%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216120216617%_))))
                (let ((_%tl216212216246%_
                       (let () (declare (not safe)) (##cdr _%e216210216241%_)))
                      (_%hd216211216244%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216210216241%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216212216246%_))
                      (let ((_%e216213216249%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216212216246%_))))
                        (let ((_%tl216215216254%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216213216249%_)))
                              (_%hd216214216252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216213216249%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216215216254%_))
                              (_%__kont220581220582%_
                               _%hd216214216252%_
                               _%hd216211216244%_
                               _%hd216119216615%_)
                              (let ()
                                (declare (not safe))
                                (_%g216110216220%_)))))
                      (let () (declare (not safe)) (_%g216110216220%_)))))
              (let () (declare (not safe)) (_%g216110216220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216120216617%_))
                                                  (let ((_%e216210216241%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216120216617%_))))
                                                    (let ((_%tl216212216246%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216210216241%_)))
                                                          (_%hd216211216244%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216210216241%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216212216246%_))
                                                          (let ((_%e216213216249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216212216246%_))))
                    (let ((_%tl216215216254%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216213216249%_)))
                          (_%hd216214216252%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216213216249%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216215216254%_))
                          (_%__kont220581220582%_
                           _%hd216214216252%_
                           _%hd216211216244%_
                           _%hd216119216615%_)
                          (let () (declare (not safe)) (_%g216110216220%_)))))
                  (let () (declare (not safe)) (_%g216110216220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216110216220%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216120216617%_))
                                          (let ((_%e216210216241%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216120216617%_))))
                                            (let ((_%tl216212216246%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216210216241%_)))
                                                  (_%hd216211216244%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216210216241%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216212216246%_))
                                                  (let ((_%e216213216249%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216212216246%_))))
                                                    (let ((_%tl216215216254%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216213216249%_)))
                                                          (_%hd216214216252%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216213216249%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216215216254%_))
                                                          (_%__kont220581220582%_
                                                           _%hd216214216252%_
                                                           _%hd216211216244%_
                                                           _%hd216119216615%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216110216220%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216110216220%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216110216220%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216120216617%_))
                                      (let ((_%e216210216241%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216120216617%_))))
                                        (let ((_%tl216212216246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216210216241%_)))
                                              (_%hd216211216244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216210216241%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216212216246%_))
                                              (let ((_%e216213216249%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216212216246%_))))
                                                (let ((_%tl216215216254%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216213216249%_)))
                                                      (_%hd216214216252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216213216249%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216215216254%_))
                                                      (_%__kont220581220582%_
                                                       _%hd216214216252%_
                                                       _%hd216211216244%_
                                                       _%hd216119216615%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216110216220%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216110216220%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216110216220%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216120216617%_))
                                  (let ((_%e216210216241%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216120216617%_))))
                                    (let ((_%tl216212216246%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216210216241%_)))
                                          (_%hd216211216244%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216210216241%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216212216246%_))
                                          (let ((_%e216213216249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216212216246%_))))
                                            (let ((_%tl216215216254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216213216249%_)))
                                                  (_%hd216214216252%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216213216249%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216215216254%_))
                                                  (_%__kont220581220582%_
                                                   _%hd216214216252%_
                                                   _%hd216211216244%_
                                                   _%hd216119216615%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216110216220%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216110216220%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216110216220%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216120216617%_))
                          (let ((_%e216210216241%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216120216617%_))))
                            (let ((_%tl216212216246%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216210216241%_)))
                                  (_%hd216211216244%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216210216241%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216212216246%_))
                                  (let ((_%e216213216249%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216212216246%_))))
                                    (let ((_%tl216215216254%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216213216249%_)))
                                          (_%hd216214216252%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216213216249%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216215216254%_))
                                          (_%__kont220581220582%_
                                           _%hd216214216252%_
                                           _%hd216211216244%_
                                           _%hd216119216615%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216110216220%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216110216220%_)))))
                          (let () (declare (not safe)) (_%g216110216220%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl216120216617%_))
                  (let ((_%e216210216241%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216120216617%_))))
                    (let ((_%tl216212216246%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216210216241%_)))
                          (_%hd216211216244%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216210216241%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216212216246%_))
                          (let ((_%e216213216249%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216212216246%_))))
                            (let ((_%tl216215216254%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216213216249%_)))
                                  (_%hd216214216252%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216213216249%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216215216254%_))
                                  (_%__kont220581220582%_
                                   _%hd216214216252%_
                                   _%hd216211216244%_
                                   _%hd216119216615%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g216110216220%_)))))
                          (let () (declare (not safe)) (_%g216110216220%_)))))
                  (let () (declare (not safe)) (_%g216110216220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216120216617%_))
                                                      (let ((_%e216210216241%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216120216617%_))))
                (let ((_%tl216212216246%_
                       (let () (declare (not safe)) (##cdr _%e216210216241%_)))
                      (_%hd216211216244%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216210216241%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216212216246%_))
                      (let ((_%e216213216249%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216212216246%_))))
                        (let ((_%tl216215216254%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216213216249%_)))
                              (_%hd216214216252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216213216249%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216215216254%_))
                              (_%__kont220581220582%_
                               _%hd216214216252%_
                               _%hd216211216244%_
                               _%hd216119216615%_)
                              (let ()
                                (declare (not safe))
                                (_%g216110216220%_)))))
                      (let () (declare (not safe)) (_%g216110216220%_)))))
              (let () (declare (not safe)) (_%g216110216220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216120216617%_))
                                              (let ((_%e216210216241%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216120216617%_))))
                                                (let ((_%tl216212216246%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216210216241%_)))
                                                      (_%hd216211216244%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216210216241%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216212216246%_))
                                                      (let ((_%e216213216249%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216212216246%_))))
                (let ((_%tl216215216254%_
                       (let () (declare (not safe)) (##cdr _%e216213216249%_)))
                      (_%hd216214216252%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216213216249%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216215216254%_))
                      (_%__kont220581220582%_
                       _%hd216214216252%_
                       _%hd216211216244%_
                       _%hd216119216615%_)
                      (let () (declare (not safe)) (_%g216110216220%_)))))
              (let () (declare (not safe)) (_%g216110216220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g216110216220%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216120216617%_))
                                      (let ((_%e216210216241%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216120216617%_))))
                                        (let ((_%tl216212216246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216210216241%_)))
                                              (_%hd216211216244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216210216241%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216212216246%_))
                                              (let ((_%e216213216249%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216212216246%_))))
                                                (let ((_%tl216215216254%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216213216249%_)))
                                                      (_%hd216214216252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216213216249%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216215216254%_))
                                                      (_%__kont220581220582%_
                                                       _%hd216214216252%_
                                                       _%hd216211216244%_
                                                       _%hd216119216615%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216110216220%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216110216220%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216110216220%_))))))
                          (let () (declare (not safe)) (_%g216110216220%_)))))
                  (let () (declare (not safe)) (_%g216110216220%_))))))))))
