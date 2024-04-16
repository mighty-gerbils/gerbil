(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1713044322)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp195742 (list gxc#::basic-xform::t))
            (__tmp195741 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp195742
         '()
         __tmp195741
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args195019%_
        (apply make-instance gxc#::optimize-call::t _%$args195019%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp195743
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
        (__make-promise __tmp195743)))
    (define gxc#apply-optimize-call
      (lambda (_%stx195011%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self195014%_
                (let ((__obj195733
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj195733))
               (__tmp195744
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self195014%_ _%stx195011%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195744
           gxc#current-compile-method
           _%self195014%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp195746 (list gxc#::void::t))
            (__tmp195745 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp195746
         '()
         __tmp195745
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args195008%_
        (apply make-instance gxc#::check-return-type::t _%$args195008%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp195747
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
        (__make-promise __tmp195747)))
    (define gxc#apply-check-return-type
      (lambda (_%stx195000%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self195003%_
                (let ((__obj195735
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj195735))
               (__tmp195748
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self195003%_ _%stx195000%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195748
           gxc#current-compile-method
           _%self195003%_))))
    (define gxc#optimize-call%
      (lambda (_%self194601%_ _%stx194602%_)
        (let* ((_%__stx195088195089%_ _%stx194602%_)
               (_%g194605194651%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195088195089%_)))))
          (let ((_%__kont195090195091%_
                 (lambda (_%L194794%_ _%L194795%_)
                   (let* ((_%rator-id194815%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L194795%_)))
                          (_%rator-type194817%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id194815%_))))
                     (if (or (not _%rator-type194817%_)
                             (eq? (##structure-ref
                                   _%rator-type194817%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self194601%_ _%stx194602%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type194817%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp195749
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type194817%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id194815%_
                                  '" => "
                                  _%rator-type194817%_
                                  '" "
                                  __tmp195749))
                               (let* ((_%optimized194832%_
                                       (let ((__method195736
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type194817%_
                                                 'optimize-call))))
                                         (if __method195736
                                             (let ((__tmp195750
                                                    (let ((__tmp195751
                                                           (lambda (_%g194824194827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g194825194829%_)
                     (cons _%g194824194827%_ _%g194825194829%_))))
              (declare (not safe))
              (__foldr1 __tmp195751 '() _%L194794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method195736
                                                _%rator-type194817%_
                                                _%self194601%_
                                                _%stx194602%_
                                                __tmp195750))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type194817%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx195036195037%_
                                       _%optimized194832%_)
                                      (_%g194835194864%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx195036195037%_)))))
                                 (let ((_%__kont195038195039%_
                                        (lambda (_%L194932%_ _%L194933%_)
                                          (let* ((_%optimized-rator-id194960%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L194933%_)))
                                                 (_%rator-type194965%_
                                                  (let ((_%$e194962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id194960%_))))
                                                    (if _%$e194962%_
                                                        _%$e194962%_
                                                        _%rator-type194817%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type194965%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id194960%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type194965%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type194965%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized194832%_
                                                (let ((__tmp195752
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L194933%_ '()))
                           (let ((__tmp195753
                                  (lambda (_%g194973194976%_ _%g194974194978%_)
                                    (cons _%g194973194976%_
                                          _%g194974194978%_))))
                             (declare (not safe))
                             (__foldr1 __tmp195753 '() _%L194932%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp195752
                                                   _%stx194602%_))))))
                                       (_%__kont195042195043%_
                                        (lambda () _%optimized194832%_)))
                                   (let ((_%__match195085195086%_
                                          (lambda (_%e194839194876%_
                                                   _%hd194840194879%_
                                                   _%tl194841194881%_
                                                   _%e194842194884%_
                                                   _%hd194843194887%_
                                                   _%tl194844194889%_
                                                   _%e194845194892%_
                                                   _%hd194846194895%_
                                                   _%tl194847194897%_
                                                   _%e194848194900%_
                                                   _%hd194849194903%_
                                                   _%tl194850194905%_
                                                   _%__splice195040195041%_
                                                   _%target194851194908%_
                                                   _%tl194853194910%_)
                                            (letrec ((_%loop194854194913%_
                                                      (lambda (_%hd194852194916%_
                                                               _%arg194858194918%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd194852194916%_))
                                                            (let ((_%e194855194921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd194852194916%_))))
                      (let ((_%lp-tl194857194926%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194855194921%_)))
                            (_%lp-hd194856194924%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194855194921%_))))
                        (_%loop194854194913%_
                         _%lp-tl194857194926%_
                         (cons _%lp-hd194856194924%_ _%arg194858194918%_))))
                    (let ((_%arg194859194929%_ (reverse _%arg194858194918%_)))
                      (_%__kont195038195039%_
                       _%arg194859194929%_
                       _%hd194849194903%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop194854194913%_
                                               _%target194851194908%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx195036195037%_))
                                         (let ((_%e194839194876%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx195036195037%_))))
                                           (let ((_%tl194841194881%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194839194876%_)))
                                                 (_%hd194840194879%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194839194876%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd194840194879%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd194840194879%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl194841194881%_))
                                                         (let ((_%e194842194884%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl194841194881%_))))
                   (let ((_%tl194844194889%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e194842194884%_)))
                         (_%hd194843194887%_
                          (let ()
                            (declare (not safe))
                            (##car _%e194842194884%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd194843194887%_))
                         (let ((_%e194845194892%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd194843194887%_))))
                           (let ((_%tl194847194897%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e194845194892%_)))
                                 (_%hd194846194895%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e194845194892%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd194846194895%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd194846194895%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl194847194897%_))
                                         (let ((_%e194848194900%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl194847194897%_))))
                                           (let ((_%tl194850194905%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194848194900%_)))
                                                 (_%hd194849194903%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194848194900%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl194850194905%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl194844194889%_))
                                                     (let ((_%__splice195040195041%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl194844194889%_
                                                               '0))))
                                                       (let ((_%tl194853194910%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice195040195041%_ '1)))
                     (_%target194851194908%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice195040195041%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl194853194910%_))
                     (_%__match195085195086%_
                      _%e194839194876%_
                      _%hd194840194879%_
                      _%tl194841194881%_
                      _%e194842194884%_
                      _%hd194843194887%_
                      _%tl194844194889%_
                      _%e194845194892%_
                      _%hd194846194895%_
                      _%tl194847194897%_
                      _%e194848194900%_
                      _%hd194849194903%_
                      _%tl194850194905%_
                      _%__splice195040195041%_
                      _%target194851194908%_
                      _%tl194853194910%_)
                     (_%__kont195042195043%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont195042195043%_))
                                                 (_%__kont195042195043%_))))
                                         (_%__kont195042195043%_))
                                     (_%__kont195042195043%_))
                                 (_%__kont195042195043%_))))
                         (_%__kont195042195043%_))))
                 (_%__kont195042195043%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont195042195043%_))
                                                 (_%__kont195042195043%_))))
                                         (_%__kont195042195043%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type194817%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type194817%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp195754
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L194795%_
                                                                '()))
                                                    (map (lambda (_%g194984194986%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self194601%_
                                                              _%g194984194986%_)))
                                                         (let ((__tmp195755
                                                                (lambda (_%g194988194991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g194989194993%_)
                          (cons _%g194988194991%_ _%g194989194993%_))))
                   (declare (not safe))
                   (__foldr1 __tmp195755 '() _%L194794%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp195754
                                    _%stx194602%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx194602%_
                                    _%rator-type194817%_))))))))
                (_%__kont195094195095%_
                 (lambda (_%L194696%_ _%L194697%_)
                   (let ((_%rator-type194714%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L194697%_))))
                     (if (and _%rator-type194714%_
                              (eq? (##structure-ref
                                    _%rator-type194714%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type194714%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type194714%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type194714%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp195756
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self194601%_
                                               _%L194697%_))
                                            (map (lambda (_%g194716194718%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self194601%_
                                                      _%g194716194718%_)))
                                                 (let ((__tmp195757
                                                        (lambda (_%g194720194723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g194721194725%_)
                  (cons _%g194720194723%_ _%g194721194725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp195757
                                                    '()
                                                    _%L194696%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp195756 _%stx194602%_))
                         (if (or (not _%rator-type194714%_)
                                 (let ((__tmp195758
                                        (##structure-ref
                                         _%rator-type194714%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp195758 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self194601%_ _%stx194602%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx194602%_
                                _%rator-type194714%_))))))))
            (let* ((_%__match195155195156%_
                    (lambda (_%e194632194656%_
                             _%hd194633194659%_
                             _%tl194634194661%_
                             _%e194635194664%_
                             _%hd194636194667%_
                             _%tl194637194669%_
                             _%__splice195096195097%_
                             _%target194638194672%_
                             _%tl194640194674%_)
                      (letrec ((_%loop194641194677%_
                                (lambda (_%hd194639194680%_
                                         _%rand194645194682%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194639194680%_))
                                      (let ((_%e194642194685%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd194639194680%_))))
                                        (let ((_%lp-tl194644194690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194642194685%_)))
                                              (_%lp-hd194643194688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194642194685%_))))
                                          (_%loop194641194677%_
                                           _%lp-tl194644194690%_
                                           (cons _%lp-hd194643194688%_
                                                 _%rand194645194682%_))))
                                      (let ((_%rand194646194693%_
                                             (reverse _%rand194645194682%_)))
                                        (_%__kont195094195095%_
                                         _%rand194646194693%_
                                         _%hd194636194667%_))))))
                        (_%loop194641194677%_ _%target194638194672%_ '()))))
                   (_%__match195135195136%_
                    (lambda (_%e194609194738%_
                             _%hd194610194741%_
                             _%tl194611194743%_
                             _%e194612194746%_
                             _%hd194613194749%_
                             _%tl194614194751%_
                             _%e194615194754%_
                             _%hd194616194757%_
                             _%tl194617194759%_
                             _%e194618194762%_
                             _%hd194619194765%_
                             _%tl194620194767%_
                             _%__splice195092195093%_
                             _%target194621194770%_
                             _%tl194623194772%_)
                      (letrec ((_%loop194624194775%_
                                (lambda (_%hd194622194778%_
                                         _%rand194628194780%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194622194778%_))
                                      (let ((_%e194625194783%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd194622194778%_))))
                                        (let ((_%lp-tl194627194788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194625194783%_)))
                                              (_%lp-hd194626194786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194625194783%_))))
                                          (_%loop194624194775%_
                                           _%lp-tl194627194788%_
                                           (cons _%lp-hd194626194786%_
                                                 _%rand194628194780%_))))
                                      (let ((_%rand194629194791%_
                                             (reverse _%rand194628194780%_)))
                                        (_%__kont195090195091%_
                                         _%rand194629194791%_
                                         _%hd194619194765%_))))))
                        (_%loop194624194775%_ _%target194621194770%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195088195089%_))
                  (let ((_%e194609194738%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195088195089%_))))
                    (let ((_%tl194611194743%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194609194738%_)))
                          (_%hd194610194741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194609194738%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194611194743%_))
                          (let ((_%e194612194746%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194611194743%_))))
                            (let ((_%tl194614194751%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194612194746%_)))
                                  (_%hd194613194749%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194612194746%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194613194749%_))
                                  (let ((_%e194615194754%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194613194749%_))))
                                    (let ((_%tl194617194759%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194615194754%_)))
                                          (_%hd194616194757%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194615194754%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194616194757%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd194616194757%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194617194759%_))
                                                  (let ((_%e194618194762%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194617194759%_))))
                                                    (let ((_%tl194620194767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194618194762%_)))
                                                          (_%hd194619194765%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194618194762%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194620194767%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl194614194751%_))
                      (let ((_%__splice195092195093%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl194614194751%_
                                '0))))
                        (let ((_%tl194623194772%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195092195093%_ '1)))
                              (_%target194621194770%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195092195093%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194623194772%_))
                              (_%__match195135195136%_
                               _%e194609194738%_
                               _%hd194610194741%_
                               _%tl194611194743%_
                               _%e194612194746%_
                               _%hd194613194749%_
                               _%tl194614194751%_
                               _%e194615194754%_
                               _%hd194616194757%_
                               _%tl194617194759%_
                               _%e194618194762%_
                               _%hd194619194765%_
                               _%tl194620194767%_
                               _%__splice195092195093%_
                               _%target194621194770%_
                               _%tl194623194772%_)
                              (let ()
                                (declare (not safe))
                                (_%g194605194651%_)))))
                      (let () (declare (not safe)) (_%g194605194651%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl194614194751%_))
                      (let ((_%__splice195096195097%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl194614194751%_
                                '0))))
                        (let ((_%tl194640194674%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195096195097%_ '1)))
                              (_%target194638194672%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195096195097%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194640194674%_))
                              (_%__match195155195156%_
                               _%e194609194738%_
                               _%hd194610194741%_
                               _%tl194611194743%_
                               _%e194612194746%_
                               _%hd194613194749%_
                               _%tl194614194751%_
                               _%__splice195096195097%_
                               _%target194638194672%_
                               _%tl194640194674%_)
                              (let ()
                                (declare (not safe))
                                (_%g194605194651%_)))))
                      (let () (declare (not safe)) (_%g194605194651%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl194614194751%_))
                                                      (let ((_%__splice195096195097%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl194614194751%_ '0))))
                (let ((_%tl194640194674%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice195096195097%_ '1)))
                      (_%target194638194672%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice195096195097%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194640194674%_))
                      (_%__match195155195156%_
                       _%e194609194738%_
                       _%hd194610194741%_
                       _%tl194611194743%_
                       _%e194612194746%_
                       _%hd194613194749%_
                       _%tl194614194751%_
                       _%__splice195096195097%_
                       _%target194638194672%_
                       _%tl194640194674%_)
                      (let () (declare (not safe)) (_%g194605194651%_)))))
              (let () (declare (not safe)) (_%g194605194651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl194614194751%_))
                                                  (let ((_%__splice195096195097%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl194614194751%_
                                                            '0))))
                                                    (let ((_%tl194640194674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195096195097%_
                                                              '1)))
                                                          (_%target194638194672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195096195097%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194640194674%_))
                                                          (_%__match195155195156%_
                                                           _%e194609194738%_
                                                           _%hd194610194741%_
                                                           _%tl194611194743%_
                                                           _%e194612194746%_
                                                           _%hd194613194749%_
                                                           _%tl194614194751%_
                                                           _%__splice195096195097%_
                                                           _%target194638194672%_
                                                           _%tl194640194674%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194605194651%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g194605194651%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl194614194751%_))
                                              (let ((_%__splice195096195097%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl194614194751%_
                                                        '0))))
                                                (let ((_%tl194640194674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice195096195097%_
                                                          '1)))
                                                      (_%target194638194672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice195096195097%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194640194674%_))
                                                      (_%__match195155195156%_
                                                       _%e194609194738%_
                                                       _%hd194610194741%_
                                                       _%tl194611194743%_
                                                       _%e194612194746%_
                                                       _%hd194613194749%_
                                                       _%tl194614194751%_
                                                       _%__splice195096195097%_
                                                       _%target194638194672%_
                                                       _%tl194640194674%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194605194651%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g194605194651%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl194614194751%_))
                                      (let ((_%__splice195096195097%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl194614194751%_
                                                '0))))
                                        (let ((_%tl194640194674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195096195097%_
                                                  '1)))
                                              (_%target194638194672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195096195097%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194640194674%_))
                                              (_%__match195155195156%_
                                               _%e194609194738%_
                                               _%hd194610194741%_
                                               _%tl194611194743%_
                                               _%e194612194746%_
                                               _%hd194613194749%_
                                               _%tl194614194751%_
                                               _%__splice195096195097%_
                                               _%target194638194672%_
                                               _%tl194640194674%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g194605194651%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194605194651%_))))))
                          (let () (declare (not safe)) (_%g194605194651%_)))))
                  (let () (declare (not safe)) (_%g194605194651%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self190980194561%_ _%ctx194563%_ _%stx194564%_ _%args194565%_)
        (let* ((_%self194567%_ _%self190980194561%_)
               (_%self194569%_ _%self194567%_))
          (if (let ((__method195737
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self194569%_ 'check-arguments))))
                (if __method195737
                    (let ()
                      (declare (not safe))
                      (__method195737
                       _%self194569%_
                       _%ctx194563%_
                       _%stx194564%_
                       _%args194565%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self194569%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature194579%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self194569%_ '2 '#f '#f)))
                     (_%signature194581%_ _%signature194579%_)
                     (_%$e194591%_
                      (if _%signature194581%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature194581%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e194591%_
                    ((lambda (_%unchecked194594%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked194594%_))
                           (let ((__tmp195759
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked194594%_
                                                          '()))
                                              (map (lambda (_%g194595194597%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194563%_
                                                        _%g194595194597%_)))
                                                   _%args194565%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp195759
                              _%stx194564%_
                              _%ctx194563%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx194563%_ _%stx194564%_))))
                     _%$e194591%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx194563%_ _%stx194564%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx194563%_ _%stx194564%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass195021 __method-table195022)
        (let ((__check-arguments195023
               (let ((__tmp195760
                      (lambda ()
                        (let ((__method195024
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table195022
                                  'check-arguments
                                  '#f))))
                          (if __method195024
                              __method195024
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195760))))
          (lambda (_%self190980194561%_
                   _%ctx194563%_
                   _%stx194564%_
                   _%args194565%_)
            (let* ((_%self194567%_ _%self190980194561%_)
                   (_%self194569%_ _%self194567%_))
              (if ((force __check-arguments195023)
                   _%self194569%_
                   _%ctx194563%_
                   _%stx194564%_
                   _%args194565%_)
                  (let* ((_%signature194579%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self194569%_
                             '2
                             '#f
                             '#f)))
                         (_%signature194581%_ _%signature194579%_)
                         (_%$e194591%_
                          (if _%signature194581%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature194581%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e194591%_
                        ((lambda (_%unchecked194594%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked194594%_))
                               (let ((__tmp195761
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked194594%_
                                                              '()))
                                                  (map (lambda (_%g194595194597%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx194563%_
                                                            _%g194595194597%_)))
                                                       _%args194565%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp195761
                                  _%stx194564%_
                                  _%ctx194563%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx194563%_
                                  _%stx194564%_))))
                         _%$e194591%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx194563%_ _%stx194564%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx194563%_ _%stx194564%_))))))))
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
      (lambda (_%self190981194310%_ _%ctx194312%_ _%stx194313%_ _%args194314%_)
        (let* ((_%self194316%_ _%self190981194310%_)
               (_%self194318%_ _%self194316%_)
               (_%signature194327194329%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194318%_ '2 '#f '#f))))
          (if _%signature194327194329%_
              (let* ((_%signature194332%_ _%signature194327194329%_)
                     (_%argument-types194333194335%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature194332%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types194333194335%_
                    (let* ((_%argument-types194338%_
                            _%argument-types194333194335%_)
                           (_%argument-types194343%_
                            (let ((__tmp195762
                                   (lambda (_%t194341%_)
                                     (if _%t194341%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194313%_
                                            _%t194341%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp195762
                               _%argument-types194338%_))))
                      (let _%loop194345%_ ((_%rest-args194347%_ _%args194314%_)
                                           (_%rest-types194348%_
                                            _%argument-types194343%_)
                                           (_%result194349%_ '#t))
                        (let* ((_%rest-args194350194358%_ _%rest-args194347%_)
                               (_%else194352194366%_
                                (lambda () _%result194349%_))
                               (_%K194354194427%_
                                (lambda (_%rest-args194369%_ _%arg194370%_)
                                  (let* ((_%rest-types194371194382%_
                                          _%rest-types194348%_)
                                         (_%E194375194386%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types194371194382%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K194378194415%_
                                           (lambda (_%rest-types194412%_
                                                    _%type194413%_)
                                             (_%loop194345%_
                                              _%rest-args194369%_
                                              _%rest-types194412%_
                                              (if (gxc#check-expression-type!
                                                   _%stx194313%_
                                                   _%arg194370%_
                                                   _%type194413%_)
                                                  _%result194349%_
                                                  '#f))))
                                          (_%K194377194406%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx194313%_
                                                _%argument-types194343%_))))
                                          (_%K194376194396%_
                                           (lambda (_%tail-type194390%_)
                                             (if (let ((__tmp195763
                                                        (lambda (_%g194391194393%_)
                                                          (gxc#check-expression-type!
                                                           _%stx194313%_
                                                           _%g194391194393%_
                                                           _%tail-type194390%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp195763
                                                    _%rest-args194369%_))
                                                 _%result194349%_
                                                 '#f))))
                                      (let ((_%try-match194373194409%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types194371194382%_))
                                                   (_%K194377194406%_)
                                                   (let ((_%tail-type194399%_
                                                          _%rest-types194371194382%_))
                                                     (_%K194376194396%_
                                                      _%tail-type194399%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types194371194382%_))
                                            (let ((_%tl194380194420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types194371194382%_)))
                                                  (_%hd194379194418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types194371194382%_))))
                                              (let ((_%type194423%_
                                                     _%hd194379194418%_)
                                                    (_%rest-types194425%_
                                                     _%tl194380194420%_))
                                                (_%K194378194415%_
                                                 _%rest-types194425%_
                                                 _%type194423%_)))
                                            (_%try-match194373194409%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args194350194358%_))
                              (let ((_%hd194355194430%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args194350194358%_)))
                                    (_%tl194356194432%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args194350194358%_))))
                                (let* ((_%arg194435%_ _%hd194355194430%_)
                                       (_%rest-args194437%_
                                        _%tl194356194432%_))
                                  (_%K194354194427%_
                                   _%rest-args194437%_
                                   _%arg194435%_)))
                              (_%else194352194366%_)))))
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
      (lambda (_%self190982194119%_ _%ctx194121%_ _%stx194122%_ _%args194123%_)
        (let* ((_%self194125%_ _%self190982194119%_)
               (_%self194127%_ _%self194125%_)
               (_%g194137194147%_
                (lambda (_%g194138194144%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194138194144%_))))
               (_%g194136194185%_
                (lambda (_%g194138194150%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194138194150%_))
                      (let ((_%e194140194152%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194138194150%_))))
                        (let ((_%hd194141194155%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194140194152%_)))
                              (_%tl194142194157%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194140194152%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194142194157%_))
                              ((lambda (_%L194160%_)
                                 (let* ((_%klass194172%_
                                         (let ((__tmp195764
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194127%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194122%_
                                            __tmp195764)))
                                        (_%object194174%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx194121%_
                                            _%L194160%_)))
                                        (_%instance?194179%_
                                         (let ((_%$e194176%_
                                                (gxc#expression-type?
                                                 _%object194174%_
                                                 _%klass194172%_)))
                                           (if _%$e194176%_
                                               _%$e194176%_
                                               (gxc#expression-type?
                                                _%L194160%_
                                                _%klass194172%_)))))
                                   (if _%instance?194179%_
                                       (let ((__tmp195765
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object194174%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L194160%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object194174%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195765
                                          _%stx194122%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx194121%_
                                          _%stx194122%_)))))
                               _%hd194141194155%_)
                              (_%g194137194147%_ _%g194138194150%_))))
                      (_%g194137194147%_ _%g194138194150%_)))))
          (_%g194136194185%_ _%args194123%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self190983193913%_ _%ctx193915%_ _%stx193916%_ _%args193917%_)
        (let* ((_%self193919%_ _%self190983193913%_)
               (_%self193921%_ _%self193919%_)
               (_%g193931193941%_
                (lambda (_%g193932193938%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193932193938%_))))
               (_%g193930193994%_
                (lambda (_%g193932193944%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193932193944%_))
                      (let ((_%e193934193946%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193932193944%_))))
                        (let ((_%hd193935193949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193934193946%_)))
                              (_%tl193936193951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193934193946%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193936193951%_))
                              ((lambda (_%L193954%_)
                                 (let* ((_%klass193966%_
                                         (let ((__tmp195766
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193921%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193916%_
                                            __tmp195766)))
                                        (_%object193968%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx193915%_
                                            _%L193954%_)))
                                        (_%instance?193973%_
                                         (let ((_%$e193970%_
                                                (gxc#expression-type?
                                                 _%object193968%_
                                                 _%klass193966%_)))
                                           (if _%$e193970%_
                                               _%$e193970%_
                                               (gxc#expression-type?
                                                _%L193954%_
                                                _%klass193966%_))))
                                        (_%klass193976%_ _%klass193966%_))
                                   (if _%instance?193973%_
                                       (let ((__tmp195767
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object193968%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L193954%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object193968%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195767
                                          _%stx193916%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass193976%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp195768
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass193976%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object193968%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195768
                                              _%stx193916%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass193976%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195769
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass193976%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object193968%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195769
                                                  _%stx193916%_))
                                               (let ((__tmp195770
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self193921%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object193968%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195770
                                                  _%stx193916%_)))))))
                               _%hd193935193949%_)
                              (_%g193931193941%_ _%g193932193944%_))))
                      (_%g193931193941%_ _%g193932193944%_)))))
          (_%g193930193994%_ _%args193917%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx193576%_)
        (let* ((_%__stx195165195166%_ _%stx193576%_)
               (_%g193581193622%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195165195166%_)))))
          (let ((_%__kont195167195168%_ (lambda () '#t))
                (_%__kont195169195170%_ (lambda () '#t))
                (_%__kont195171195172%_
                 (lambda (_%L193690%_ _%L193691%_)
                   (let ((_%rator-type193712193714%_
                          (let ((__tmp195771
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L193691%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp195771))))
                     (if _%rator-type193712193714%_
                         (let* ((_%rator-type193717%_
                                 _%rator-type193712193714%_)
                                (_%rator-signature193718193720%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type193717%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type193717%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature193718193720%_
                               (let* ((_%rator-signature193723%_
                                       _%rator-signature193718193720%_)
                                      (_%rator-effect193724193726%_
                                       (if _%rator-signature193723%_
                                           (##direct-structure-ref
                                            _%rator-signature193723%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect193724193726%_
                                     (let ((_%rator-effect193729%_
                                            _%rator-effect193724193726%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect193729%_)
                                               (equal? '(alloc)
                                                       _%rator-effect193729%_))
                                           (let ((__tmp195772
                                                  (let ((__tmp195773
                                                         (lambda (_%g193734193737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g193735193739%_)
                   (cons _%g193734193737%_ _%g193735193739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp195773
                                                     '()
                                                     _%L193690%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp195772))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont195175195176%_ (lambda () '#f)))
            (let ((_%__match195254195255%_
                   (lambda (_%e193597193634%_
                            _%hd193598193637%_
                            _%tl193599193639%_
                            _%e193600193642%_
                            _%hd193601193645%_
                            _%tl193602193647%_
                            _%e193603193650%_
                            _%hd193604193653%_
                            _%tl193605193655%_
                            _%e193606193658%_
                            _%hd193607193661%_
                            _%tl193608193663%_
                            _%__splice195173195174%_
                            _%target193609193666%_
                            _%tl193611193668%_)
                     (letrec ((_%loop193612193671%_
                               (lambda (_%hd193610193674%_
                                        _%rand193616193676%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd193610193674%_))
                                     (let ((_%e193613193679%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd193610193674%_))))
                                       (let ((_%lp-tl193615193684%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e193613193679%_)))
                                             (_%lp-hd193614193682%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e193613193679%_))))
                                         (_%loop193612193671%_
                                          _%lp-tl193615193684%_
                                          (cons _%lp-hd193614193682%_
                                                _%rand193616193676%_))))
                                     (let ((_%rand193617193687%_
                                            (reverse _%rand193616193676%_)))
                                       (_%__kont195171195172%_
                                        _%rand193617193687%_
                                        _%hd193607193661%_))))))
                       (_%loop193612193671%_ _%target193609193666%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195165195166%_))
                  (let ((_%e193583193770%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195165195166%_))))
                    (let ((_%tl193585193775%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193583193770%_)))
                          (_%hd193584193773%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193583193770%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193584193773%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd193584193773%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193585193775%_))
                                  (let ((_%e193586193778%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193585193775%_))))
                                    (let ((_%tl193588193783%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193586193778%_)))
                                          (_%hd193587193781%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193586193778%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193588193783%_))
                                          (_%__kont195167195168%_)
                                          (_%__kont195175195176%_))))
                                  (_%__kont195175195176%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193584193773%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193585193775%_))
                                      (let ((_%e193592193755%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193585193775%_))))
                                        (let ((_%tl193594193760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193592193755%_)))
                                              (_%hd193593193758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193592193755%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193594193760%_))
                                              (_%__kont195169195170%_)
                                              (_%__kont195175195176%_))))
                                      (_%__kont195175195176%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd193584193773%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193585193775%_))
                                          (let ((_%e193600193642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193585193775%_))))
                                            (let ((_%tl193602193647%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193600193642%_)))
                                                  (_%hd193601193645%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193600193642%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd193601193645%_))
                                                  (let ((_%e193603193650%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd193601193645%_))))
                                                    (let ((_%tl193605193655%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193603193650%_)))
                                                          (_%hd193604193653%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193603193650%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd193604193653%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd193604193653%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193605193655%_))
                          (let ((_%e193606193658%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193605193655%_))))
                            (let ((_%tl193608193663%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193606193658%_)))
                                  (_%hd193607193661%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193606193658%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193608193663%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl193602193647%_))
                                      (let ((_%__splice195173195174%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl193602193647%_
                                                '0))))
                                        (let ((_%tl193611193668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195173195174%_
                                                  '1)))
                                              (_%target193609193666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195173195174%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193611193668%_))
                                              (_%__match195254195255%_
                                               _%e193583193770%_
                                               _%hd193584193773%_
                                               _%tl193585193775%_
                                               _%e193600193642%_
                                               _%hd193601193645%_
                                               _%tl193602193647%_
                                               _%e193603193650%_
                                               _%hd193604193653%_
                                               _%tl193605193655%_
                                               _%e193606193658%_
                                               _%hd193607193661%_
                                               _%tl193608193663%_
                                               _%__splice195173195174%_
                                               _%target193609193666%_
                                               _%tl193611193668%_)
                                              (_%__kont195175195176%_))))
                                      (_%__kont195175195176%_))
                                  (_%__kont195175195176%_))))
                          (_%__kont195175195176%_))
                      (_%__kont195175195176%_))
                  (_%__kont195175195176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont195175195176%_))))
                                          (_%__kont195175195176%_))
                                      (_%__kont195175195176%_))))
                          (_%__kont195175195176%_))))
                  (_%__kont195175195176%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx193571%_ _%klass193572%_)
        (let ((_%expr-type193574%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx193571%_))))
          (if _%expr-type193574%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type193574%_ _%klass193572%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx193549%_ _%expr193550%_ _%type193551%_)
        (if (not _%type193551%_)
            '#f
            (let ((_%$e193554%_
                   (eq? (##structure-ref _%type193551%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e193554%_
                  _%$e193554%_
                  (let ((_%expr-type193558%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr193550%_))))
                    (if (not _%expr-type193558%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type193558%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e193562%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type193558%_
                                      'gxc#!abort::t))))
                              (if _%$e193562%_
                                  _%$e193562%_
                                  (let ((_%$e193565%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type193558%_
                                            _%type193551%_))))
                                    (if _%$e193565%_
                                        _%$e193565%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type193551%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type193551%_
                                                   _%expr-type193558%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx193549%_
                                                   _%expr193550%_
                                                   _%expr-type193558%_
                                                   _%type193551%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self190984193361%_ _%ctx193363%_ _%stx193364%_ _%args193365%_)
        (let* ((_%self193367%_ _%self190984193361%_)
               (_%self193369%_ _%self193367%_)
               (_%klass193379%_
                (let ((__tmp195774
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self193369%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx193364%_ __tmp195774)))
               (_%fields193381%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass193379%_
                           '5
                           '#f
                           '#f))))
               (_%args193387%_
                (map (lambda (_%g193382193384%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx193363%_ _%g193382193384%_)))
                     _%args193365%_))
               (_%inline-make-object193389%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self193369%_
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
                           _%self193369%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields193381%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass193392%_ _%klass193379%_)
               (_%$e193406%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass193392%_ '6 '#f '#f))))
          (if _%$e193406%_
              ((lambda (_%ctor193409%_)
                 (let ((_%$obj193411%_
                        (let ((__tmp195775
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp195775)))
                       (_%ctor-impl193412%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass193392%_
                           _%ctor193409%_))))
                   (let ((__tmp195776
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj193411%_ '())
                                                  (cons _%inline-make-object193389%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl193412%_
                                                            (let ((__tmp195777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl193412%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj193411%_ '()))
                                             _%args193387%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp195777
                       _%stx193364%_
                       _%ctx193363%_))
                    (let ((_%$ctor193414%_
                           (let ((__tmp195778
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp195778))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor193414%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193369%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj193411%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor193409%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor193414%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor193414%_ '()))
                              (cons (cons '%#ref (cons _%$obj193411%_ '()))
                                    _%args193387%_)))
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
                             _%self193369%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor193409%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj193411%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp195776 _%stx193364%_))))
               _%$e193406%_)
              (let ((_%$e193416%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass193392%_
                        '10
                        '#f
                        '#f))))
                (if _%$e193416%_
                    ((lambda (_%metaclass193419%_)
                       (let* ((_%$obj193421%_
                               (let ((__tmp195779
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195779)))
                              (_%metakons193423%_
                               (let ((__tmp195780
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx193364%_
                                         _%metaclass193419%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp195780
                                  'instance-init!)))
                              (__tmp195781
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj193421%_
                                                             '())
                                                       (cons _%inline-make-object193389%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons193423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp195782
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons193423%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self193369%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj193421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args193387%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp195782
                            _%stx193364%_
                            _%ctx193363%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self193369%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj193421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args193387%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj193421%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp195781 _%stx193364%_)))
                     _%$e193416%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass193392%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp195783
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args193387%_))))
                              (declare (not safe))
                              (##fx= __tmp195783 _%fields193381%_))
                            (let ((__tmp195784
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self193369%_
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
                                              _%self193369%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args193387%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp195784
                               _%stx193364%_))
                            (let ((__tmp195786
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self193369%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp195785
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass193392%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx193364%_
                               __tmp195786
                               __tmp195785)))
                        (let ((_%$obj193428%_
                               (let ((__tmp195787
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195787))))
                          (let _%lp193430%_ ((_%rest193432%_ _%args193387%_)
                                             (_%initializers193433%_ '()))
                            (let* ((_%__stx195257195258%_ _%rest193432%_)
                                   (_%g193437193458%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx195257195258%_)))))
                              (let ((_%__kont195259195260%_
                                     (lambda (_%L193512%_
                                              _%L193513%_
                                              _%L193514%_)
                                       (let* ((_%slot193541%_
                                               (let ((__tmp195788
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L193514%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp195788)))
                                              (_%off193543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass193392%_
                                                  _%slot193541%_))))
                                         (if _%off193543%_
                                             (_%lp193430%_
                                              _%L193512%_
                                              (cons (cons _%off193543%_
                                                          _%L193513%_)
                                                    _%initializers193433%_))
                                             (let ((__tmp195789
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self193369%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx193364%_
                                                __tmp195789
                                                _%slot193541%_))))))
                                    (_%__kont195261195262%_
                                     (lambda ()
                                       (let ((__tmp195790
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj193428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object193389%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp195793
                                     (cons (cons '%#ref
                                                 (cons _%$obj193428%_ '()))
                                           '()))
                                    (__tmp195791
                                     (let ((__tmp195792
                                            (lambda (_%i193472%_ _%r193473%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self193369%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i193472%_) '()))
                              (cons (cons '%#ref (cons _%$obj193428%_ '()))
                                    (cons (cdr _%i193472%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r193473%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp195792
                                        '()
                                        _%initializers193433%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp195793 __tmp195791)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195790
                                          _%stx193364%_))))
                                    (_%__kont195263195264%_
                                     (lambda ()
                                       (let ((__tmp195794
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj193428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object193389%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj193428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args193387%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj193428%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195794
                                          _%stx193364%_)))))
                                (let* ((_%g193435193475%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx195257195258%_))
                                              (_%__kont195261195262%_)
                                              (_%__kont195263195264%_))))
                                       (_%__match195294195295%_
                                        (lambda (_%e193442193480%_
                                                 _%hd193443193483%_
                                                 _%tl193444193485%_
                                                 _%e193445193488%_
                                                 _%hd193446193491%_
                                                 _%tl193447193493%_
                                                 _%e193448193496%_
                                                 _%hd193449193499%_
                                                 _%tl193450193501%_
                                                 _%e193451193504%_
                                                 _%hd193452193507%_
                                                 _%tl193453193509%_)
                                          (let ((_%L193512%_
                                                 _%tl193453193509%_)
                                                (_%L193513%_
                                                 _%hd193452193507%_)
                                                (_%L193514%_
                                                 _%hd193449193499%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L193514%_))
                                                (_%__kont195259195260%_
                                                 _%L193512%_
                                                 _%L193513%_
                                                 _%L193514%_)
                                                (_%__kont195263195264%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx195257195258%_))
                                      (let ((_%e193442193480%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx195257195258%_))))
                                        (let ((_%tl193444193485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193442193480%_)))
                                              (_%hd193443193483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193442193480%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd193443193483%_))
                                              (let ((_%e193445193488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd193443193483%_))))
                                                (let ((_%tl193447193493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193445193488%_)))
                                                      (_%hd193446193491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193445193488%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd193446193491%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd193446193491%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193447193493%_))
                      (let ((_%e193448193496%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193447193493%_))))
                        (let ((_%tl193450193501%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193448193496%_)))
                              (_%hd193449193499%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193448193496%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193450193501%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193444193485%_))
                                  (let ((_%e193451193504%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193444193485%_))))
                                    (let ((_%tl193453193509%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193451193504%_)))
                                          (_%hd193452193507%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193451193504%_))))
                                      (_%__match195294195295%_
                                       _%e193442193480%_
                                       _%hd193443193483%_
                                       _%tl193444193485%_
                                       _%e193445193488%_
                                       _%hd193446193491%_
                                       _%tl193447193493%_
                                       _%e193448193496%_
                                       _%hd193449193499%_
                                       _%tl193450193501%_
                                       _%e193451193504%_
                                       _%hd193452193507%_
                                       _%tl193453193509%_)))
                                  (_%__kont195263195264%_))
                              (_%__kont195263195264%_))))
                      (_%__kont195263195264%_))
                  (_%__kont195263195264%_))
              (_%__kont195263195264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont195263195264%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193435193475%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self190985193142%_ _%ctx193144%_ _%stx193145%_ _%args193146%_)
        (let* ((_%self193148%_ _%self190985193142%_)
               (_%self193150%_ _%self193148%_)
               (_%arguments-ok?193160%_
                (let ((__method195738
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self193150%_ 'check-arguments))))
                  (if __method195738
                      (let ()
                        (declare (not safe))
                        (__method195738
                         _%self193150%_
                         _%ctx193144%_
                         _%stx193145%_
                         _%args193146%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self193150%_
                                 'check-arguments))
                        '#!void))))
               (_%g193162193172%_
                (lambda (_%g193163193169%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193163193169%_))))
               (_%g193161193236%_
                (lambda (_%g193163193175%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193163193175%_))
                      (let ((_%e193165193177%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193163193175%_))))
                        (let ((_%hd193166193180%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193165193177%_)))
                              (_%tl193167193182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193165193177%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193167193182%_))
                              ((lambda (_%L193185%_)
                                 (let* ((_%klass193198%_
                                         (let ((__tmp195795
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193150%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193145%_
                                            __tmp195795)))
                                        (_%field193200%_
                                         (let ((__tmp195796
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193150%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass193198%_
                                            __tmp195796)))
                                        (_%object193202%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx193144%_
                                            _%L193185%_)))
                                        (_%klass193205%_ _%klass193198%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass193205%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp195797
                                              (cons (if (or _%arguments-ok?193160%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self193150%_
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
                                 _%self193150%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field193200%_ '()))
                        (cons _%object193202%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195797
                                          _%stx193145%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass193205%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp195798
                                                  (cons (if (or _%arguments-ok?193160%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self193150%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193150%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field193200%_ '()))
                            (cons _%object193202%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195798
                                              _%stx193145%_))
                                           (let ((_%$e193224%_
                                                  (let ((__tmp195799
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self193150%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass193205%_
                                                     __tmp195799))))
                                             (if _%$e193224%_
                                                 ((lambda (_%klass193227%_)
                                                    (let ((__tmp195800
                                                           (cons (if (or _%arguments-ok?193160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self193150%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self193150%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field193200%_ '()))
                                     (cons _%object193202%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp195800 _%stx193145%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e193224%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self193150%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp195801
                                                            (let ((_%$obj193233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp195802
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp195802))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj193233%_ '())
                                              (cons _%object193202%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass193205%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj193233%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193150%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field193200%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj193233%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?193160%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj193233%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193150%_
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
                                                             _%self193150%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj193233%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self193150%_
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
               (gxc#xform-wrap-source __tmp195801 _%stx193145%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp195803
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object193202%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self193150%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp195803 _%stx193145%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd193166193180%_)
                              (_%g193162193172%_ _%g193163193175%_))))
                      (_%g193162193172%_ _%g193163193175%_)))))
          (_%g193161193236%_ _%args193146%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass195025 __method-table195026)
        (let ((__check-arguments195027
               (let ((__tmp195804
                      (lambda ()
                        (let ((__method195028
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table195026
                                  'check-arguments
                                  '#f))))
                          (if __method195028
                              __method195028
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195804)))
              (__slot195029
               (let ((__slot195030
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass195025 'slot))))
                 (if __slot195030
                     __slot195030
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self190985193142%_
                   _%ctx193144%_
                   _%stx193145%_
                   _%args193146%_)
            (let* ((_%self193148%_ _%self190985193142%_)
                   (_%self193150%_ _%self193148%_)
                   (_%arguments-ok?193160%_
                    ((force __check-arguments195027)
                     _%self193150%_
                     _%ctx193144%_
                     _%stx193145%_
                     _%args193146%_))
                   (_%g193162193172%_
                    (lambda (_%g193163193169%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g193163193169%_))))
                   (_%g193161193236%_
                    (lambda (_%g193163193175%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g193163193175%_))
                          (let ((_%e193165193177%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g193163193175%_))))
                            (let ((_%hd193166193180%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193165193177%_)))
                                  (_%tl193167193182%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193165193177%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193167193182%_))
                                  ((lambda (_%L193185%_)
                                     (let* ((_%klass193198%_
                                             (let ((__tmp195805
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self193150%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx193145%_
                                                __tmp195805)))
                                            (_%field193200%_
                                             (let ((__tmp195806
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self193150%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass193198%_
                                                __tmp195806)))
                                            (_%object193202%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx193144%_
                                                _%L193185%_)))
                                            (_%klass193205%_ _%klass193198%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass193205%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp195807
                                                  (cons (if (or _%arguments-ok?193160%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self193150%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193150%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field193200%_ '()))
                            (cons _%object193202%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195807
                                              _%stx193145%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass193205%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195808
                                                      (cons (if (or _%arguments-ok?193160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self193150%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self193150%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field193200%_ '()))
                                (cons _%object193202%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195808
                                                  _%stx193145%_))
                                               (let ((_%$e193224%_
                                                      (let ((__tmp195809
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self193150%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass193205%_ __tmp195809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e193224%_
                                                     ((lambda (_%klass193227%_)
                                                        (let ((__tmp195810
                                                               (cons (if (or _%arguments-ok?193160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193150%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self193150%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field193200%_ '()))
                                         (cons _%object193202%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp195810 _%stx193145%_)))
              _%$e193224%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self193150%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp195811
                                                                (let ((_%$obj193233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp195812
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195812))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj193233%_ '())
                                                  (cons _%object193202%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass193205%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj193233%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self193150%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field193200%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj193233%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?193160%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj193233%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self193150%_
                               __slot195029
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
                        (##unchecked-structure-ref _%self193150%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj193233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193150%_
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
                   (gxc#xform-wrap-source __tmp195811 _%stx193145%_))
                 (let ((__tmp195813
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object193202%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self193150%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp195813 _%stx193145%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd193166193180%_)
                                  (_%g193162193172%_ _%g193163193175%_))))
                          (_%g193162193172%_ _%g193163193175%_)))))
              (_%g193161193236%_ _%args193146%_))))))
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
      (lambda (_%self190986192904%_ _%ctx192906%_ _%stx192907%_ _%args192908%_)
        (let* ((_%self192910%_ _%self190986192904%_)
               (_%self192912%_ _%self192910%_)
               (_%arguments-ok?192922%_
                (let ((__method195739
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self192912%_ 'check-arguments))))
                  (if __method195739
                      (let ()
                        (declare (not safe))
                        (__method195739
                         _%self192912%_
                         _%ctx192906%_
                         _%stx192907%_
                         _%args192908%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self192912%_
                                 'check-arguments))
                        '#!void))))
               (_%g192924192938%_
                (lambda (_%g192925192935%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192925192935%_))))
               (_%g192923193017%_
                (lambda (_%g192925192941%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192925192941%_))
                      (let ((_%e192928192943%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192925192941%_))))
                        (let ((_%hd192929192946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192928192943%_)))
                              (_%tl192930192948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192928192943%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192930192948%_))
                              (let ((_%e192931192951%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192930192948%_))))
                                (let ((_%hd192932192954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192931192951%_)))
                                      (_%tl192933192956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192931192951%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192933192956%_))
                                      ((lambda (_%L192959%_ _%L192960%_)
                                         (let* ((_%klass192976%_
                                                 (let ((__tmp195814
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192912%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx192907%_
                                                    __tmp195814)))
                                                (_%field192978%_
                                                 (let ((__tmp195815
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192912%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass192976%_
                                                    __tmp195815)))
                                                (_%object192980%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx192906%_
                                                    _%L192960%_)))
                                                (_%value192982%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx192906%_
                                                    _%L192959%_)))
                                                (_%klass192985%_
                                                 _%klass192976%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass192985%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195816
                                                      (cons (if (or _%arguments-ok?192922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self192912%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192912%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field192978%_ '()))
                                (cons _%object192980%_
                                      (cons _%value192982%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195816
                                                  _%stx192907%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass192985%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp195817
                                                          (cons (if (or _%arguments-ok?192922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self192912%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192912%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field192978%_ '()))
                                    (cons _%object192980%_
                                          (cons _%value192982%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp195817
                                                      _%stx192907%_))
                                                   (let ((_%$e193005%_
                                                          (let ((__tmp195818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192912%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass192985%_
                     __tmp195818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e193005%_
                                                         ((lambda (_%klass193008%_)
                                                            (let ((__tmp195819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?192922%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192912%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self192912%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field192978%_ '()))
                                             (cons _%object192980%_
                                                   (cons _%value192982%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195819 _%stx192907%_)))
                  _%$e193005%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self192912%_ '4 '#f '#f))
                     (let ((__tmp195820
                            (let ((_%$obj193014%_
                                   (let ((__tmp195821
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp195821))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj193014%_ '())
                                                      (cons _%object192980%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass192985%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj193014%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self192912%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field192978%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj193014%_
                                                              '()))
                                                  (cons _%value192982%_
                                                        '())))))
                          (cons (if _%arguments-ok?192922%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj193014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self192912%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value192982%_ '())))))
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
                             _%self192912%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj193014%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192912%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value192982%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp195820 _%stx192907%_))
                     (let ((__tmp195822
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object192980%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192912%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value192982%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp195822
                        _%stx192907%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd192932192954%_
                                       _%hd192929192946%_)
                                      (_%g192924192938%_ _%g192925192941%_))))
                              (_%g192924192938%_ _%g192925192941%_))))
                      (_%g192924192938%_ _%g192925192941%_)))))
          (_%g192923193017%_ _%args192908%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass195031 __method-table195032)
        (let ((__check-arguments195033
               (let ((__tmp195823
                      (lambda ()
                        (let ((__method195034
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table195032
                                  'check-arguments
                                  '#f))))
                          (if __method195034
                              __method195034
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195823))))
          (lambda (_%self190986192904%_
                   _%ctx192906%_
                   _%stx192907%_
                   _%args192908%_)
            (let* ((_%self192910%_ _%self190986192904%_)
                   (_%self192912%_ _%self192910%_)
                   (_%arguments-ok?192922%_
                    ((force __check-arguments195033)
                     _%self192912%_
                     _%ctx192906%_
                     _%stx192907%_
                     _%args192908%_))
                   (_%g192924192938%_
                    (lambda (_%g192925192935%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g192925192935%_))))
                   (_%g192923193017%_
                    (lambda (_%g192925192941%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g192925192941%_))
                          (let ((_%e192928192943%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g192925192941%_))))
                            (let ((_%hd192929192946%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192928192943%_)))
                                  (_%tl192930192948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192928192943%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192930192948%_))
                                  (let ((_%e192931192951%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192930192948%_))))
                                    (let ((_%hd192932192954%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192931192951%_)))
                                          (_%tl192933192956%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192931192951%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192933192956%_))
                                          ((lambda (_%L192959%_ _%L192960%_)
                                             (let* ((_%klass192976%_
                                                     (let ((__tmp195824
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192912%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx192907%_
                                                        __tmp195824)))
                                                    (_%field192978%_
                                                     (let ((__tmp195825
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192912%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass192976%_
                                                        __tmp195825)))
                                                    (_%object192980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx192906%_
                                                        _%L192960%_)))
                                                    (_%value192982%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx192906%_
                                                        _%L192959%_)))
                                                    (_%klass192985%_
                                                     _%klass192976%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass192985%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp195826
                                                          (cons (if (or _%arguments-ok?192922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self192912%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192912%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field192978%_ '()))
                                    (cons _%object192980%_
                                          (cons _%value192982%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp195826
                                                      _%stx192907%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass192985%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp195827
                                                              (cons (if (or _%arguments-ok?192922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self192912%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192912%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field192978%_ '()))
                                        (cons _%object192980%_
                                              (cons _%value192982%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp195827 _%stx192907%_))
               (let ((_%$e193005%_
                      (let ((__tmp195828
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self192912%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass192985%_
                         __tmp195828))))
                 (if _%$e193005%_
                     ((lambda (_%klass193008%_)
                        (let ((__tmp195829
                               (cons (if (or _%arguments-ok?192922%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self192912%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self192912%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field192978%_
                                                             '()))
                                                 (cons _%object192980%_
                                                       (cons _%value192982%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp195829 _%stx192907%_)))
                      _%$e193005%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192912%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp195830
                                (let ((_%$obj193014%_
                                       (let ((__tmp195831
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp195831))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj193014%_
                                                                '())
                                                          (cons _%object192980%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass192985%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj193014%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self192912%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field192978%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj193014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value192982%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?192922%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj193014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self192912%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value192982%_ '())))))
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
                                 _%self192912%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj193014%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192912%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value192982%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp195830 _%stx192907%_))
                         (let ((__tmp195832
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object192980%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192912%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value192982%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp195832
                            _%stx192907%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd192932192954%_
                                           _%hd192929192946%_)
                                          (_%g192924192938%_
                                           _%g192925192941%_))))
                                  (_%g192924192938%_ _%g192925192941%_))))
                          (_%g192924192938%_ _%g192925192941%_)))))
              (_%g192923193017%_ _%args192908%_))))))
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
      (lambda (_%self190987192717%_ _%ctx192719%_ _%stx192720%_ _%args192721%_)
        (let* ((_%self192723%_ _%self190987192717%_)
               (_%self192725%_ _%self192723%_)
               (_%self192734192744%_ _%self192725%_)
               (_%E192736192748%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self192734192744%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K192737192758%_
                (lambda (_%inline192751%_ _%dispatch192752%_ _%arity192753%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self192725%_
                         _%args192721%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx192720%_
                         _%arity192753%_)))
                  (if _%inline192751%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp195833 (_%inline192751%_ _%stx192720%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp195833
                           _%stx192720%_
                           _%ctx192719%_)))
                      (if (and _%dispatch192752%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch192752%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch192752%_))
                            (let ((__tmp195834
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch192752%_
                                                           '()))
                                               _%args192721%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp195834
                               _%stx192720%_
                               _%ctx192719%_)))
                          (gxc#!procedure::optimize-call
                           _%self192725%_
                           _%ctx192719%_
                           _%stx192720%_
                           _%args192721%_)))))
               (_%e192738192761%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192734192744%_ '1 '#f '#f)))
               (_%e192739192764%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192734192744%_ '2 '#f '#f)))
               (_%e192740192767%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192734192744%_ '3 '#f '#f)))
               (_%arity192770%_ _%e192740192767%_)
               (_%e192741192772%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192734192744%_ '4 '#f '#f)))
               (_%dispatch192775%_ _%e192741192772%_)
               (_%e192742192777%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192734192744%_ '5 '#f '#f)))
               (_%inline192780%_ _%e192742192777%_))
          (_%K192737192758%_
           _%inline192780%_
           _%dispatch192775%_
           _%arity192770%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self190988192567%_ _%ctx192569%_ _%stx192570%_ _%args192571%_)
        (let* ((_%self192573%_ _%self190988192567%_)
               (_%self192575%_ _%self192573%_)
               (_%$e192589%_
                (let ((__tmp195836
                       (lambda (_%g192584192586%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g192584192586%_
                            _%args192571%_))))
                      (__tmp195835
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self192575%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp195836 __tmp195835))))
          (if _%$e192589%_
              ((lambda (_%clause192592%_)
                 (let ((__method195740
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause192592%_ 'optimize-call))))
                   (if __method195740
                       (let ()
                         (declare (not safe))
                         (__method195740
                          _%clause192592%_
                          _%ctx192569%_
                          _%stx192570%_
                          _%args192571%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause192592%_
                                  'optimize-call))
                         '#!void))))
               _%$e192589%_)
              (let ((__tmp195837
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self192575%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx192570%_
                 __tmp195837))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self190989192305%_ _%ctx192307%_ _%stx192308%_ _%args192309%_)
        (let* ((_%self192311%_ _%self190989192305%_)
               (_%self192313%_ _%self192311%_)
               (_%self192322192331%_ _%self192313%_)
               (_%E192324192335%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self192322192331%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K192325192426%_
                (lambda (_%dispatch192338%_ _%table192339%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch192338%_))
                      (let* ((_%g192340192350%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch192338%_)))
                             (_%else192342192358%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch192338%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx192307%_
                                   _%stx192308%_))))
                             (_%K192344192407%_
                              (lambda (_%main192361%_ _%keys192362%_)
                                (let ((_g195838_
                                       (gxc#!kw-lambda-split-args
                                        _%stx192308%_
                                        _%args192309%_)))
                                  (begin
                                    (let ((_g195839_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195838_)
                                                 (##vector-length _g195838_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195839_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195839_)))
                                    (let ((_%pargs192364%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195838_ 0)))
                                          (_%kwargs192365%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195838_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main192361%_))
                                        (if _%table192339%_
                                            (let ((_%xargs192373%_
                                                   (map (lambda (_%key192367%_)
                                                          (let ((_%$e192369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key192367%_ _%kwargs192365%_))))
                    (if _%$e192369%_ _%$e192369%_ '(%#ref absent-value))))
                _%keys192362%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw192375%_)
                                                 (if (memq (car _%kw192375%_)
                                                           _%keys192362%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx192308%_
                                                        _%keys192362%_
                                                        _%kw192375%_))))
                                               _%kwargs192365%_)
                                              (let ((__tmp195840
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main192361%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs192364%_
                                  _%xargs192373%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp195840
                                                 _%stx192308%_
                                                 _%ctx192307%_)))
                                            (let* ((_%kwt192377%_
                                                    (let ((__tmp195841
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp195841)))
                                                   (_%kwvars192381%_
                                                    (map (lambda (_%_192379%_)
                                                           (let ((__tmp195842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp195842)))
                 _%kwargs192365%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind192386%_
                                                    (map (lambda (_%kw192383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192384%_)
                   (cons (cons _%kwvar192384%_ '())
                         (cons (cdr _%kw192383%_) '())))
                 _%kwargs192365%_
                 _%kwvars192381%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset192391%_
                                                    (map (lambda (_%kw192388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192389%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt192377%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw192388%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar192389%_
                                                             '()))
                                                 '()))))))
                 _%kwargs192365%_
                 _%kwvars192381%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs192396%_
                                                    (map (lambda (_%kw192393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192394%_)
                   (cons (car _%kw192393%_)
                         (cons '%#ref (cons _%kwvar192394%_ '()))))
                 _%kwargs192365%_
                 _%kwvars192381%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs192404%_
                                                    (map (lambda (_%key192398%_)
                                                           (let ((_%$e192400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key192398%_ _%xkwargs192396%_))))
                     (if _%$e192400%_ _%$e192400%_ '(%#ref absent-value))))
                 _%keys192362%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp195843
                                                    (cons '%#let-values
                                                          (cons _%kwbind192386%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt192377%_ '())
                                                      (cons (let ((__tmp195844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs192365%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195844 _%stx192308%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp195845
                                                             (cons (let ((__tmp195846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main192361%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt192377%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs192364%_
                                                       _%xargs192404%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp195846 _%stx192308%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp195845 _%kwset192391%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp195843
                                               _%stx192308%_
                                               _%ctx192307%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g192340192350%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e192345192410%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192340192350%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e192346192413%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192340192350%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e192347192416%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192340192350%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys192419%_ _%e192347192416%_)
                                   (_%e192348192421%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192340192350%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main192424%_ _%e192348192421%_))
                              (_%K192344192407%_
                               _%main192424%_
                               _%keys192419%_))
                            (_%else192342192358%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx192307%_ _%stx192308%_)))))
               (_%e192326192429%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192322192331%_ '1 '#f '#f)))
               (_%e192327192432%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192322192331%_ '2 '#f '#f)))
               (_%e192328192435%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192322192331%_ '3 '#f '#f)))
               (_%table192438%_ _%e192328192435%_)
               (_%e192329192440%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192322192331%_ '4 '#f '#f)))
               (_%dispatch192443%_ _%e192329192440%_))
          (_%K192325192426%_ _%dispatch192443%_ _%table192438%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx191918%_ _%args191919%_)
        (let _%lp191921%_ ((_%rest191923%_ _%args191919%_)
                           (_%pargs191924%_ '())
                           (_%kwargs191925%_ '()))
          (let* ((_%__stx195299195300%_ _%rest191923%_)
                 (_%g191931191983%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx195299195300%_)))))
            (let ((_%__kont195301195302%_
                   (lambda (_%L192162%_ _%L192163%_)
                     (_%lp191921%_
                      _%L192162%_
                      (cons _%L192163%_ _%pargs191924%_)
                      _%kwargs191925%_)))
                  (_%__kont195303195304%_
                   (lambda (_%L192108%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L192108%_ _%pargs191924%_))
                             (reverse _%kwargs191925%_))))
                  (_%__kont195305195306%_
                   (lambda (_%L192055%_ _%L192056%_ _%L192057%_)
                     (let ((_%kw192074%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L192057%_))))
                       (if (assq _%kw192074%_ _%kwargs191925%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx191918%_
                              _%kw192074%_))
                           (_%lp191921%_
                            _%L192055%_
                            _%pargs191924%_
                            (cons (cons _%kw192074%_ _%L192056%_)
                                  _%kwargs191925%_))))))
                  (_%__kont195307195308%_
                   (lambda (_%L192003%_ _%L192004%_)
                     (_%lp191921%_
                      _%L192003%_
                      (cons _%L192004%_ _%pargs191924%_)
                      _%kwargs191925%_)))
                  (_%__kont195309195310%_
                   (lambda ()
                     (values (reverse _%pargs191924%_)
                             (reverse _%kwargs191925%_)))))
              (let ((_%__match195406195407%_
                     (lambda (_%e191962192023%_
                              _%hd191963192026%_
                              _%tl191964192028%_
                              _%e191965192031%_
                              _%hd191966192034%_
                              _%tl191967192036%_
                              _%e191968192039%_
                              _%hd191969192042%_
                              _%tl191970192044%_
                              _%e191971192047%_
                              _%hd191972192050%_
                              _%tl191973192052%_)
                       (let ((_%L192055%_ _%tl191973192052%_)
                             (_%L192056%_ _%hd191972192050%_)
                             (_%L192057%_ _%hd191969192042%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L192057%_))
                             (_%__kont195305195306%_
                              _%L192055%_
                              _%L192056%_
                              _%L192057%_)
                             (_%__kont195307195308%_
                              _%tl191964192028%_
                              _%hd191963192026%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx195299195300%_))
                    (let ((_%e191935192127%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx195299195300%_))))
                      (let ((_%tl191937192132%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191935192127%_)))
                            (_%hd191936192130%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191935192127%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd191936192130%_))
                            (let ((_%e191938192135%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd191936192130%_))))
                              (let ((_%tl191940192140%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191938192135%_)))
                                    (_%hd191939192138%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191938192135%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191939192138%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd191939192138%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191940192140%_))
                                            (let ((_%e191941192143%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191940192140%_))))
                                              (let ((_%tl191943192148%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191941192143%_)))
                                                    (_%hd191942192146%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191941192143%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd191942192146%_))
                                                    (let ((_%e191944192151%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd191942192146%_))))
                                                      (if (equal? _%e191944192151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191943192148%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191937192132%_))
                          (let ((_%e191945192154%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191937192132%_))))
                            (let ((_%tl191947192159%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191945192154%_)))
                                  (_%hd191946192157%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191945192154%_))))
                              (_%__kont195301195302%_
                               _%tl191947192159%_
                               _%hd191946192157%_)))
                          (_%__kont195307195308%_
                           _%tl191937192132%_
                           _%hd191936192130%_))
                      (_%__kont195307195308%_
                       _%tl191937192132%_
                       _%hd191936192130%_))
                  (if (equal? _%e191944192151%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191943192148%_))
                          (_%__kont195303195304%_ _%tl191937192132%_)
                          (_%__kont195307195308%_
                           _%tl191937192132%_
                           _%hd191936192130%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191943192148%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191937192132%_))
                              (let ((_%e191971192047%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191937192132%_))))
                                (let ((_%tl191973192052%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191971192047%_)))
                                      (_%hd191972192050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191971192047%_))))
                                  (_%__match195406195407%_
                                   _%e191935192127%_
                                   _%hd191936192130%_
                                   _%tl191937192132%_
                                   _%e191938192135%_
                                   _%hd191939192138%_
                                   _%tl191940192140%_
                                   _%e191941192143%_
                                   _%hd191942192146%_
                                   _%tl191943192148%_
                                   _%e191971192047%_
                                   _%hd191972192050%_
                                   _%tl191973192052%_)))
                              (_%__kont195307195308%_
                               _%tl191937192132%_
                               _%hd191936192130%_))
                          (_%__kont195307195308%_
                           _%tl191937192132%_
                           _%hd191936192130%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191943192148%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191937192132%_))
                                                            (let ((_%e191971192047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191937192132%_))))
                      (let ((_%tl191973192052%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191971192047%_)))
                            (_%hd191972192050%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191971192047%_))))
                        (_%__match195406195407%_
                         _%e191935192127%_
                         _%hd191936192130%_
                         _%tl191937192132%_
                         _%e191938192135%_
                         _%hd191939192138%_
                         _%tl191940192140%_
                         _%e191941192143%_
                         _%hd191942192146%_
                         _%tl191943192148%_
                         _%e191971192047%_
                         _%hd191972192050%_
                         _%tl191973192052%_)))
                    (_%__kont195307195308%_
                     _%tl191937192132%_
                     _%hd191936192130%_))
                (_%__kont195307195308%_
                 _%tl191937192132%_
                 _%hd191936192130%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont195307195308%_
                                             _%tl191937192132%_
                                             _%hd191936192130%_))
                                        (_%__kont195307195308%_
                                         _%tl191937192132%_
                                         _%hd191936192130%_))
                                    (_%__kont195307195308%_
                                     _%tl191937192132%_
                                     _%hd191936192130%_))))
                            (_%__kont195307195308%_
                             _%tl191937192132%_
                             _%hd191936192130%_))))
                    (_%__kont195309195310%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self190990191900%_ _%ctx191902%_ _%stx191903%_ _%args191904%_)
        (let* ((_%self191906%_ _%self190990191900%_)
               (_%self191908%_ _%self191906%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx191902%_ _%stx191903%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self191588%_ _%stx191589%_)
        (let* ((_%__stx195415195416%_ _%stx191589%_)
               (_%g191592191632%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195415195416%_)))))
          (let ((_%__kont195417195418%_
                 (lambda (_%L191738%_ _%L191739%_)
                   (let ((_%$e191766%_
                          (member 'return:
                                  (let ((__tmp195847
                                         (lambda (_%g191758191761%_
                                                  _%g191759191763%_)
                                           (cons _%g191758191761%_
                                                 _%g191759191763%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp195847 '() _%L191739%_))
                                  gx#stx-eq?)))
                     (if _%$e191766%_
                         ((lambda (_%tail191769%_)
                            (let ((_%type191771%_
                                   (let ((__tmp195848
                                          (let ((__tmp195849
                                                 (cadr _%tail191769%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp195849))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx191589%_
                                      __tmp195848))))
                              (gxc#check-return-type!
                               _%stx191589%_
                               _%L191738%_
                               _%type191771%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self191588%_
                                 _%L191738%_))))
                          _%$e191766%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self191588%_ _%L191738%_))))))
                (_%__kont195421195422%_
                 (lambda (_%L191661%_ _%L191662%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self191588%_ _%L191661%_)))))
            (let ((_%__match195452195453%_
                   (lambda (_%e191596191682%_
                            _%hd191597191685%_
                            _%tl191598191687%_
                            _%e191599191690%_
                            _%hd191600191693%_
                            _%tl191601191695%_
                            _%e191602191698%_
                            _%hd191603191701%_
                            _%tl191604191703%_
                            _%__splice195419195420%_
                            _%target191605191706%_
                            _%tl191607191708%_)
                     (letrec ((_%loop191608191711%_
                               (lambda (_%hd191606191714%_
                                        _%signature191612191716%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd191606191714%_))
                                     (let ((_%e191609191719%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd191606191714%_))))
                                       (let ((_%lp-tl191611191724%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e191609191719%_)))
                                             (_%lp-hd191610191722%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e191609191719%_))))
                                         (_%loop191608191711%_
                                          _%lp-tl191611191724%_
                                          (cons _%lp-hd191610191722%_
                                                _%signature191612191716%_))))
                                     (let ((_%signature191613191727%_
                                            (reverse _%signature191612191716%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl191601191695%_))
                                           (let ((_%e191614191730%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl191601191695%_))))
                                             (let ((_%tl191616191735%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e191614191730%_)))
                                                   (_%hd191615191733%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e191614191730%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl191616191735%_))
                                                   (_%__kont195417195418%_
                                                    _%hd191615191733%_
                                                    _%signature191613191727%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g191592191632%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g191592191632%_))))))))
                       (_%loop191608191711%_ _%target191605191706%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195415195416%_))
                  (let ((_%e191596191682%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195415195416%_))))
                    (let ((_%tl191598191687%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191596191682%_)))
                          (_%hd191597191685%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191596191682%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191598191687%_))
                          (let ((_%e191599191690%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191598191687%_))))
                            (let ((_%tl191601191695%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191599191690%_)))
                                  (_%hd191600191693%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191599191690%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191600191693%_))
                                  (let ((_%e191602191698%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191600191693%_))))
                                    (let ((_%tl191604191703%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191602191698%_)))
                                          (_%hd191603191701%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191602191698%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191603191701%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd191603191701%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl191604191703%_))
                                                  (let ((_%__splice195419195420%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl191604191703%_
                                                            '0))))
                                                    (let ((_%tl191607191708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195419195420%_
                                                              '1)))
                                                          (_%target191605191706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195419195420%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191607191708%_))
                                                          (_%__match195452195453%_
                                                           _%e191596191682%_
                                                           _%hd191597191685%_
                                                           _%tl191598191687%_
                                                           _%e191599191690%_
                                                           _%hd191600191693%_
                                                           _%tl191601191695%_
                                                           _%e191602191698%_
                                                           _%hd191603191701%_
                                                           _%tl191604191703%_
                                                           _%__splice195419195420%_
                                                           _%target191605191706%_
                                                           _%tl191607191708%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191601191695%_))
                      (let ((_%e191625191653%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191601191695%_))))
                        (let ((_%tl191627191658%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191625191653%_)))
                              (_%hd191626191656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191625191653%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191627191658%_))
                              (_%__kont195421195422%_
                               _%hd191626191656%_
                               _%hd191600191693%_)
                              (let ()
                                (declare (not safe))
                                (_%g191592191632%_)))))
                      (let () (declare (not safe)) (_%g191592191632%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191601191695%_))
                                                      (let ((_%e191625191653%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191601191695%_))))
                (let ((_%tl191627191658%_
                       (let () (declare (not safe)) (##cdr _%e191625191653%_)))
                      (_%hd191626191656%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191625191653%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191627191658%_))
                      (_%__kont195421195422%_
                       _%hd191626191656%_
                       _%hd191600191693%_)
                      (let () (declare (not safe)) (_%g191592191632%_)))))
              (let () (declare (not safe)) (_%g191592191632%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191601191695%_))
                                                  (let ((_%e191625191653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191601191695%_))))
                                                    (let ((_%tl191627191658%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191625191653%_)))
                                                          (_%hd191626191656%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191625191653%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191627191658%_))
                                                          (_%__kont195421195422%_
                                                           _%hd191626191656%_
                                                           _%hd191600191693%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191592191632%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191592191632%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191601191695%_))
                                              (let ((_%e191625191653%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191601191695%_))))
                                                (let ((_%tl191627191658%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191625191653%_)))
                                                      (_%hd191626191656%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191625191653%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191627191658%_))
                                                      (_%__kont195421195422%_
                                                       _%hd191626191656%_
                                                       _%hd191600191693%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191592191632%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191592191632%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191601191695%_))
                                      (let ((_%e191625191653%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191601191695%_))))
                                        (let ((_%tl191627191658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191625191653%_)))
                                              (_%hd191626191656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191625191653%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191627191658%_))
                                              (_%__kont195421195422%_
                                               _%hd191626191656%_
                                               _%hd191600191693%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g191592191632%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191592191632%_))))))
                          (let () (declare (not safe)) (_%g191592191632%_)))))
                  (let () (declare (not safe)) (_%g191592191632%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx191566%_ _%expr191567%_ _%type191568%_)
        (let ((_%$e191570%_ (not _%type191568%_)))
          (if _%$e191570%_
              _%$e191570%_
              (let ((_%$e191573%_
                     (eq? (##structure-ref _%type191568%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e191573%_
                    _%$e191573%_
                    (let ((_%expr-type191577%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr191567%_))))
                      (if (not _%expr-type191577%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx191566%_
                             _%type191568%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type191577%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx191566%_
                                 _%type191568%_
                                 _%expr-type191577%_))
                              (let ((_%$e191581%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type191577%_
                                        'gxc#!abort::t))))
                                (if _%$e191581%_
                                    _%$e191581%_
                                    (let ((_%$e191584%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type191577%_
                                              _%type191568%_))))
                                      (if _%$e191584%_
                                          _%$e191584%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx191566%_
                                             _%type191568%_
                                             _%expr-type191577%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self190992%_ _%stx190993%_)
        (let* ((_%__stx195497195498%_ _%stx190993%_)
               (_%g190998191108%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195497195498%_)))))
          (let ((_%__kont195499195500%_
                 (lambda (_%L191540%_ _%L191541%_ _%L191542%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L191542%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self190992%_ _%L191541%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self190992%_ _%L191540%_)))))
                (_%__kont195501195502%_
                 (lambda (_%L191366%_ _%L191367%_ _%L191368%_ _%L191369%_)
                   (let ((_%$e191401%_
                          (let ((__tmp195850
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L191369%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp195850))))
                     (if _%$e191401%_
                         ((lambda (_%pred-type191404%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type191404%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type191404%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test191409%_
                                        (let ((__tmp195851
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L191369%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L191368%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp195851
                                           _%stx190993%_
                                           _%self190992%_)))
                                       (_%K191413%_
                                        (let ((__tmp195852
                                               (lambda ()
                                                 (let ((__tmp195855
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self190992%_
                                                             _%L191367%_))))
                                                       (__tmp195853
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L191368%_))
                            (let ((__tmp195854
                                   (##structure-ref
                                    _%pred-type191404%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx190993%_
                               __tmp195854)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp195855
                                                    gxc#current-compile-path-type
                                                    __tmp195853)))))
                                          (declare (not safe))
                                          (__make-promise __tmp195852)))
                                       (_%E191416%_
                                        (let ((__tmp195856
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self190992%_
                                                    _%L191366%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp195856)))
                                       (_%__stx195475195476%_ _%test191409%_)
                                       (_%g191420191434%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx195475195476%_)))))
                                  (let ((_%__kont195477195478%_
                                         (lambda (_%L191462%_ _%L191463%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L191462%_))
                                               (force _%K191413%_)
                                               (force _%E191416%_))))
                                        (_%__kont195479195480%_
                                         (lambda ()
                                           (let ((__tmp195857
                                                  (cons '%#if
                                                        (cons _%test191409%_
                                                              (cons (force _%K191413%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E191416%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195857
                                              _%stx190993%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx195475195476%_))
                                        (let ((_%e191424191446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx195475195476%_))))
                                          (let ((_%tl191426191451%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e191424191446%_)))
                                                (_%hd191425191449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e191424191446%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191426191451%_))
                                                (let ((_%e191427191454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191426191451%_))))
                                                  (let ((_%tl191429191459%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191427191454%_)))
                                                        (_%hd191428191457%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191427191454%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191429191459%_))
                                                        (_%__kont195477195478%_
                                                         _%hd191428191457%_
                                                         _%hd191425191449%_)
                                                        (_%__kont195479195480%_))))
                                                (_%__kont195479195480%_))))
                                        (_%__kont195479195480%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self190992%_
                                   _%stx190993%_))))
                          _%$e191401%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self190992%_
                            _%stx190993%_))))))
                (_%__kont195503195504%_
                 (lambda (_%L191242%_ _%L191243%_ _%L191244%_ _%L191245%_)
                   (gxc#optimize-if%
                    _%self190992%_
                    (let ((__tmp195858
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L191244%_
                                       (cons _%L191242%_
                                             (cons _%L191243%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195858 _%stx190993%_)))))
                (_%__kont195505195506%_
                 (lambda (_%L191145%_ _%L191146%_ _%L191147%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self190992%_ _%stx190993%_)))))
            (let ((_%__match195704195705%_
                   (lambda (_%e191062191170%_
                            _%hd191063191173%_
                            _%tl191064191175%_
                            _%e191065191178%_
                            _%hd191066191181%_
                            _%tl191067191183%_
                            _%e191068191186%_
                            _%hd191069191189%_
                            _%tl191070191191%_
                            _%e191071191194%_
                            _%hd191072191197%_
                            _%tl191073191199%_
                            _%e191074191202%_
                            _%hd191075191205%_
                            _%tl191076191207%_
                            _%e191077191210%_
                            _%hd191078191213%_
                            _%tl191079191215%_
                            _%e191080191218%_
                            _%hd191081191221%_
                            _%tl191082191223%_
                            _%e191083191226%_
                            _%hd191084191229%_
                            _%tl191085191231%_
                            _%e191086191234%_
                            _%hd191087191237%_
                            _%tl191088191239%_)
                     (let ((_%L191242%_ _%hd191087191237%_)
                           (_%L191243%_ _%hd191084191229%_)
                           (_%L191244%_ _%hd191081191221%_)
                           (_%L191245%_ _%hd191078191213%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L191245%_ 'not))
                           (_%__kont195503195504%_
                            _%L191242%_
                            _%L191243%_
                            _%L191244%_
                            _%L191245%_)
                           (_%__kont195505195506%_
                            _%hd191087191237%_
                            _%hd191084191229%_
                            _%hd191066191181%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195497195498%_))
                  (let ((_%e191003191492%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195497195498%_))))
                    (let ((_%tl191005191497%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191003191492%_)))
                          (_%hd191004191495%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191003191492%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191005191497%_))
                          (let ((_%e191006191500%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191005191497%_))))
                            (let ((_%tl191008191505%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191006191500%_)))
                                  (_%hd191007191503%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191006191500%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191007191503%_))
                                  (let ((_%e191009191508%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191007191503%_))))
                                    (let ((_%tl191011191513%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191009191508%_)))
                                          (_%hd191010191511%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191009191508%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191010191511%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd191010191511%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191011191513%_))
                                                  (let ((_%e191012191516%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191011191513%_))))
                                                    (let ((_%tl191014191521%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191012191516%_)))
                                                          (_%hd191013191519%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191012191516%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191014191521%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191008191505%_))
                      (let ((_%e191015191524%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191008191505%_))))
                        (let ((_%tl191017191529%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191015191524%_)))
                              (_%hd191016191527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191015191524%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191017191529%_))
                              (let ((_%e191018191532%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191017191529%_))))
                                (let ((_%tl191020191537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191018191532%_)))
                                      (_%hd191019191535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191018191532%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191020191537%_))
                                      (_%__kont195499195500%_
                                       _%hd191019191535%_
                                       _%hd191016191527%_
                                       _%hd191013191519%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g190998191108%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g190998191108%_)))))
                      (let () (declare (not safe)) (_%g190998191108%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191008191505%_))
                      (let ((_%e191098191129%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191008191505%_))))
                        (let ((_%tl191100191134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191098191129%_)))
                              (_%hd191099191132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191098191129%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191100191134%_))
                              (let ((_%e191101191137%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191100191134%_))))
                                (let ((_%tl191103191142%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191101191137%_)))
                                      (_%hd191102191140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191101191137%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191103191142%_))
                                      (_%__kont195505195506%_
                                       _%hd191102191140%_
                                       _%hd191099191132%_
                                       _%hd191007191503%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g190998191108%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g190998191108%_)))))
                      (let () (declare (not safe)) (_%g190998191108%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191008191505%_))
                                                      (let ((_%e191098191129%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191008191505%_))))
                (let ((_%tl191100191134%_
                       (let () (declare (not safe)) (##cdr _%e191098191129%_)))
                      (_%hd191099191132%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191098191129%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191100191134%_))
                      (let ((_%e191101191137%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191100191134%_))))
                        (let ((_%tl191103191142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191101191137%_)))
                              (_%hd191102191140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191101191137%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191103191142%_))
                              (_%__kont195505195506%_
                               _%hd191102191140%_
                               _%hd191099191132%_
                               _%hd191007191503%_)
                              (let ()
                                (declare (not safe))
                                (_%g190998191108%_)))))
                      (let () (declare (not safe)) (_%g190998191108%_)))))
              (let () (declare (not safe)) (_%g190998191108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd191010191511%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191011191513%_))
                                                      (let ((_%e191034191302%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191011191513%_))))
                (let ((_%tl191036191307%_
                       (let () (declare (not safe)) (##cdr _%e191034191302%_)))
                      (_%hd191035191305%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191034191302%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd191035191305%_))
                      (let ((_%e191037191310%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd191035191305%_))))
                        (let ((_%tl191039191315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191037191310%_)))
                              (_%hd191038191313%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191037191310%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd191038191313%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd191038191313%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191039191315%_))
                                      (let ((_%e191040191318%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191039191315%_))))
                                        (let ((_%tl191042191323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191040191318%_)))
                                              (_%hd191041191321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191040191318%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191042191323%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191036191307%_))
                                                  (let ((_%e191043191326%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191036191307%_))))
                                                    (let ((_%tl191045191331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191043191326%_)))
                                                          (_%hd191044191329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191043191326%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd191044191329%_))
                                                          (let ((_%e191046191334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd191044191329%_))))
                    (let ((_%tl191048191339%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191046191334%_)))
                          (_%hd191047191337%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191046191334%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd191047191337%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd191047191337%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191048191339%_))
                                  (let ((_%e191049191342%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191048191339%_))))
                                    (let ((_%tl191051191347%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191049191342%_)))
                                          (_%hd191050191345%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191049191342%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191051191347%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191045191331%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191008191505%_))
                                                  (let ((_%e191052191350%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191008191505%_))))
                                                    (let ((_%tl191054191355%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191052191350%_)))
                                                          (_%hd191053191353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191052191350%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191054191355%_))
                                                          (let ((_%e191055191358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191054191355%_))))
                    (let ((_%tl191057191363%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191055191358%_)))
                          (_%hd191056191361%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191055191358%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191057191363%_))
                          (_%__kont195501195502%_
                           _%hd191056191361%_
                           _%hd191053191353%_
                           _%hd191050191345%_
                           _%hd191041191321%_)
                          (let () (declare (not safe)) (_%g190998191108%_)))))
                  (let () (declare (not safe)) (_%g190998191108%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190998191108%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191008191505%_))
                                                  (let ((_%e191098191129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191008191505%_))))
                                                    (let ((_%tl191100191134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191098191129%_)))
                                                          (_%hd191099191132%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191098191129%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191100191134%_))
                                                          (let ((_%e191101191137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191100191134%_))))
                    (let ((_%tl191103191142%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191101191137%_)))
                          (_%hd191102191140%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191101191137%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191103191142%_))
                          (_%__kont195505195506%_
                           _%hd191102191140%_
                           _%hd191099191132%_
                           _%hd191007191503%_)
                          (let () (declare (not safe)) (_%g190998191108%_)))))
                  (let () (declare (not safe)) (_%g190998191108%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190998191108%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191045191331%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191008191505%_))
                                                  (let ((_%e191083191226%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191008191505%_))))
                                                    (let ((_%tl191085191231%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191083191226%_)))
                                                          (_%hd191084191229%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191083191226%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191085191231%_))
                                                          (let ((_%e191086191234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191085191231%_))))
                    (let ((_%tl191088191239%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191086191234%_)))
                          (_%hd191087191237%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191086191234%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191088191239%_))
                          (_%__match195704195705%_
                           _%e191003191492%_
                           _%hd191004191495%_
                           _%tl191005191497%_
                           _%e191006191500%_
                           _%hd191007191503%_
                           _%tl191008191505%_
                           _%e191009191508%_
                           _%hd191010191511%_
                           _%tl191011191513%_
                           _%e191034191302%_
                           _%hd191035191305%_
                           _%tl191036191307%_
                           _%e191037191310%_
                           _%hd191038191313%_
                           _%tl191039191315%_
                           _%e191040191318%_
                           _%hd191041191321%_
                           _%tl191042191323%_
                           _%e191043191326%_
                           _%hd191044191329%_
                           _%tl191045191331%_
                           _%e191083191226%_
                           _%hd191084191229%_
                           _%tl191085191231%_
                           _%e191086191234%_
                           _%hd191087191237%_
                           _%tl191088191239%_)
                          (let () (declare (not safe)) (_%g190998191108%_)))))
                  (let () (declare (not safe)) (_%g190998191108%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190998191108%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191008191505%_))
                                                  (let ((_%e191098191129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191008191505%_))))
                                                    (let ((_%tl191100191134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191098191129%_)))
                                                          (_%hd191099191132%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191098191129%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191100191134%_))
                                                          (let ((_%e191101191137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191100191134%_))))
                    (let ((_%tl191103191142%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191101191137%_)))
                          (_%hd191102191140%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191101191137%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191103191142%_))
                          (_%__kont195505195506%_
                           _%hd191102191140%_
                           _%hd191099191132%_
                           _%hd191007191503%_)
                          (let () (declare (not safe)) (_%g190998191108%_)))))
                  (let () (declare (not safe)) (_%g190998191108%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190998191108%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191045191331%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191008191505%_))
                                          (let ((_%e191083191226%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191008191505%_))))
                                            (let ((_%tl191085191231%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191083191226%_)))
                                                  (_%hd191084191229%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191083191226%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191085191231%_))
                                                  (let ((_%e191086191234%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191085191231%_))))
                                                    (let ((_%tl191088191239%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191086191234%_)))
                                                          (_%hd191087191237%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191086191234%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191088191239%_))
                                                          (_%__match195704195705%_
                                                           _%e191003191492%_
                                                           _%hd191004191495%_
                                                           _%tl191005191497%_
                                                           _%e191006191500%_
                                                           _%hd191007191503%_
                                                           _%tl191008191505%_
                                                           _%e191009191508%_
                                                           _%hd191010191511%_
                                                           _%tl191011191513%_
                                                           _%e191034191302%_
                                                           _%hd191035191305%_
                                                           _%tl191036191307%_
                                                           _%e191037191310%_
                                                           _%hd191038191313%_
                                                           _%tl191039191315%_
                                                           _%e191040191318%_
                                                           _%hd191041191321%_
                                                           _%tl191042191323%_
                                                           _%e191043191326%_
                                                           _%hd191044191329%_
                                                           _%tl191045191331%_
                                                           _%e191083191226%_
                                                           _%hd191084191229%_
                                                           _%tl191085191231%_
                                                           _%e191086191234%_
                                                           _%hd191087191237%_
                                                           _%tl191088191239%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190998191108%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190998191108%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190998191108%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191008191505%_))
                                          (let ((_%e191098191129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191008191505%_))))
                                            (let ((_%tl191100191134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191098191129%_)))
                                                  (_%hd191099191132%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191098191129%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191100191134%_))
                                                  (let ((_%e191101191137%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191100191134%_))))
                                                    (let ((_%tl191103191142%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191101191137%_)))
                                                          (_%hd191102191140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191101191137%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191103191142%_))
                                                          (_%__kont195505195506%_
                                                           _%hd191102191140%_
                                                           _%hd191099191132%_
                                                           _%hd191007191503%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190998191108%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190998191108%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190998191108%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl191045191331%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191008191505%_))
                                      (let ((_%e191083191226%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191008191505%_))))
                                        (let ((_%tl191085191231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191083191226%_)))
                                              (_%hd191084191229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191083191226%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191085191231%_))
                                              (let ((_%e191086191234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191085191231%_))))
                                                (let ((_%tl191088191239%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191086191234%_)))
                                                      (_%hd191087191237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191086191234%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191088191239%_))
                                                      (_%__match195704195705%_
                                                       _%e191003191492%_
                                                       _%hd191004191495%_
                                                       _%tl191005191497%_
                                                       _%e191006191500%_
                                                       _%hd191007191503%_
                                                       _%tl191008191505%_
                                                       _%e191009191508%_
                                                       _%hd191010191511%_
                                                       _%tl191011191513%_
                                                       _%e191034191302%_
                                                       _%hd191035191305%_
                                                       _%tl191036191307%_
                                                       _%e191037191310%_
                                                       _%hd191038191313%_
                                                       _%tl191039191315%_
                                                       _%e191040191318%_
                                                       _%hd191041191321%_
                                                       _%tl191042191323%_
                                                       _%e191043191326%_
                                                       _%hd191044191329%_
                                                       _%tl191045191331%_
                                                       _%e191083191226%_
                                                       _%hd191084191229%_
                                                       _%tl191085191231%_
                                                       _%e191086191234%_
                                                       _%hd191087191237%_
                                                       _%tl191088191239%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190998191108%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190998191108%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190998191108%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191008191505%_))
                                      (let ((_%e191098191129%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191008191505%_))))
                                        (let ((_%tl191100191134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191098191129%_)))
                                              (_%hd191099191132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191098191129%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191100191134%_))
                                              (let ((_%e191101191137%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191100191134%_))))
                                                (let ((_%tl191103191142%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191101191137%_)))
                                                      (_%hd191102191140%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191101191137%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191103191142%_))
                                                      (_%__kont195505195506%_
                                                       _%hd191102191140%_
                                                       _%hd191099191132%_
                                                       _%hd191007191503%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190998191108%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190998191108%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190998191108%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191045191331%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191008191505%_))
                                  (let ((_%e191083191226%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191008191505%_))))
                                    (let ((_%tl191085191231%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191083191226%_)))
                                          (_%hd191084191229%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191083191226%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191085191231%_))
                                          (let ((_%e191086191234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191085191231%_))))
                                            (let ((_%tl191088191239%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191086191234%_)))
                                                  (_%hd191087191237%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191086191234%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191088191239%_))
                                                  (_%__match195704195705%_
                                                   _%e191003191492%_
                                                   _%hd191004191495%_
                                                   _%tl191005191497%_
                                                   _%e191006191500%_
                                                   _%hd191007191503%_
                                                   _%tl191008191505%_
                                                   _%e191009191508%_
                                                   _%hd191010191511%_
                                                   _%tl191011191513%_
                                                   _%e191034191302%_
                                                   _%hd191035191305%_
                                                   _%tl191036191307%_
                                                   _%e191037191310%_
                                                   _%hd191038191313%_
                                                   _%tl191039191315%_
                                                   _%e191040191318%_
                                                   _%hd191041191321%_
                                                   _%tl191042191323%_
                                                   _%e191043191326%_
                                                   _%hd191044191329%_
                                                   _%tl191045191331%_
                                                   _%e191083191226%_
                                                   _%hd191084191229%_
                                                   _%tl191085191231%_
                                                   _%e191086191234%_
                                                   _%hd191087191237%_
                                                   _%tl191088191239%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190998191108%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190998191108%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190998191108%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191008191505%_))
                                  (let ((_%e191098191129%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191008191505%_))))
                                    (let ((_%tl191100191134%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191098191129%_)))
                                          (_%hd191099191132%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191098191129%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191100191134%_))
                                          (let ((_%e191101191137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191100191134%_))))
                                            (let ((_%tl191103191142%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191101191137%_)))
                                                  (_%hd191102191140%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191101191137%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191103191142%_))
                                                  (_%__kont195505195506%_
                                                   _%hd191102191140%_
                                                   _%hd191099191132%_
                                                   _%hd191007191503%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190998191108%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190998191108%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190998191108%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191045191331%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191008191505%_))
                          (let ((_%e191083191226%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191008191505%_))))
                            (let ((_%tl191085191231%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191083191226%_)))
                                  (_%hd191084191229%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191083191226%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191085191231%_))
                                  (let ((_%e191086191234%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191085191231%_))))
                                    (let ((_%tl191088191239%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191086191234%_)))
                                          (_%hd191087191237%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191086191234%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191088191239%_))
                                          (_%__match195704195705%_
                                           _%e191003191492%_
                                           _%hd191004191495%_
                                           _%tl191005191497%_
                                           _%e191006191500%_
                                           _%hd191007191503%_
                                           _%tl191008191505%_
                                           _%e191009191508%_
                                           _%hd191010191511%_
                                           _%tl191011191513%_
                                           _%e191034191302%_
                                           _%hd191035191305%_
                                           _%tl191036191307%_
                                           _%e191037191310%_
                                           _%hd191038191313%_
                                           _%tl191039191315%_
                                           _%e191040191318%_
                                           _%hd191041191321%_
                                           _%tl191042191323%_
                                           _%e191043191326%_
                                           _%hd191044191329%_
                                           _%tl191045191331%_
                                           _%e191083191226%_
                                           _%hd191084191229%_
                                           _%tl191085191231%_
                                           _%e191086191234%_
                                           _%hd191087191237%_
                                           _%tl191088191239%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190998191108%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190998191108%_)))))
                          (let () (declare (not safe)) (_%g190998191108%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191008191505%_))
                          (let ((_%e191098191129%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191008191505%_))))
                            (let ((_%tl191100191134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191098191129%_)))
                                  (_%hd191099191132%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191098191129%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191100191134%_))
                                  (let ((_%e191101191137%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191100191134%_))))
                                    (let ((_%tl191103191142%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191101191137%_)))
                                          (_%hd191102191140%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191101191137%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191103191142%_))
                                          (_%__kont195505195506%_
                                           _%hd191102191140%_
                                           _%hd191099191132%_
                                           _%hd191007191503%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190998191108%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190998191108%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g190998191108%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191008191505%_))
                                                      (let ((_%e191098191129%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191008191505%_))))
                (let ((_%tl191100191134%_
                       (let () (declare (not safe)) (##cdr _%e191098191129%_)))
                      (_%hd191099191132%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191098191129%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191100191134%_))
                      (let ((_%e191101191137%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191100191134%_))))
                        (let ((_%tl191103191142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191101191137%_)))
                              (_%hd191102191140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191101191137%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191103191142%_))
                              (_%__kont195505195506%_
                               _%hd191102191140%_
                               _%hd191099191132%_
                               _%hd191007191503%_)
                              (let ()
                                (declare (not safe))
                                (_%g190998191108%_)))))
                      (let () (declare (not safe)) (_%g190998191108%_)))))
              (let () (declare (not safe)) (_%g190998191108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191008191505%_))
                                                  (let ((_%e191098191129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191008191505%_))))
                                                    (let ((_%tl191100191134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191098191129%_)))
                                                          (_%hd191099191132%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191098191129%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191100191134%_))
                                                          (let ((_%e191101191137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191100191134%_))))
                    (let ((_%tl191103191142%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191101191137%_)))
                          (_%hd191102191140%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191101191137%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191103191142%_))
                          (_%__kont195505195506%_
                           _%hd191102191140%_
                           _%hd191099191132%_
                           _%hd191007191503%_)
                          (let () (declare (not safe)) (_%g190998191108%_)))))
                  (let () (declare (not safe)) (_%g190998191108%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190998191108%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191008191505%_))
                                          (let ((_%e191098191129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191008191505%_))))
                                            (let ((_%tl191100191134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191098191129%_)))
                                                  (_%hd191099191132%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191098191129%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191100191134%_))
                                                  (let ((_%e191101191137%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191100191134%_))))
                                                    (let ((_%tl191103191142%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191101191137%_)))
                                                          (_%hd191102191140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191101191137%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191103191142%_))
                                                          (_%__kont195505195506%_
                                                           _%hd191102191140%_
                                                           _%hd191099191132%_
                                                           _%hd191007191503%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190998191108%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190998191108%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190998191108%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191008191505%_))
                                      (let ((_%e191098191129%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191008191505%_))))
                                        (let ((_%tl191100191134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191098191129%_)))
                                              (_%hd191099191132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191098191129%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191100191134%_))
                                              (let ((_%e191101191137%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191100191134%_))))
                                                (let ((_%tl191103191142%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191101191137%_)))
                                                      (_%hd191102191140%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191101191137%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191103191142%_))
                                                      (_%__kont195505195506%_
                                                       _%hd191102191140%_
                                                       _%hd191099191132%_
                                                       _%hd191007191503%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190998191108%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190998191108%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190998191108%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191008191505%_))
                                  (let ((_%e191098191129%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191008191505%_))))
                                    (let ((_%tl191100191134%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191098191129%_)))
                                          (_%hd191099191132%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191098191129%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191100191134%_))
                                          (let ((_%e191101191137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191100191134%_))))
                                            (let ((_%tl191103191142%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191101191137%_)))
                                                  (_%hd191102191140%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191101191137%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191103191142%_))
                                                  (_%__kont195505195506%_
                                                   _%hd191102191140%_
                                                   _%hd191099191132%_
                                                   _%hd191007191503%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190998191108%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190998191108%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190998191108%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191008191505%_))
                          (let ((_%e191098191129%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191008191505%_))))
                            (let ((_%tl191100191134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191098191129%_)))
                                  (_%hd191099191132%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191098191129%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191100191134%_))
                                  (let ((_%e191101191137%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191100191134%_))))
                                    (let ((_%tl191103191142%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191101191137%_)))
                                          (_%hd191102191140%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191101191137%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191103191142%_))
                                          (_%__kont195505195506%_
                                           _%hd191102191140%_
                                           _%hd191099191132%_
                                           _%hd191007191503%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190998191108%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190998191108%_)))))
                          (let () (declare (not safe)) (_%g190998191108%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl191008191505%_))
                  (let ((_%e191098191129%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191008191505%_))))
                    (let ((_%tl191100191134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191098191129%_)))
                          (_%hd191099191132%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191098191129%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191100191134%_))
                          (let ((_%e191101191137%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191100191134%_))))
                            (let ((_%tl191103191142%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191101191137%_)))
                                  (_%hd191102191140%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191101191137%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl191103191142%_))
                                  (_%__kont195505195506%_
                                   _%hd191102191140%_
                                   _%hd191099191132%_
                                   _%hd191007191503%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g190998191108%_)))))
                          (let () (declare (not safe)) (_%g190998191108%_)))))
                  (let () (declare (not safe)) (_%g190998191108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191008191505%_))
                                                      (let ((_%e191098191129%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191008191505%_))))
                (let ((_%tl191100191134%_
                       (let () (declare (not safe)) (##cdr _%e191098191129%_)))
                      (_%hd191099191132%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191098191129%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191100191134%_))
                      (let ((_%e191101191137%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191100191134%_))))
                        (let ((_%tl191103191142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191101191137%_)))
                              (_%hd191102191140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191101191137%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191103191142%_))
                              (_%__kont195505195506%_
                               _%hd191102191140%_
                               _%hd191099191132%_
                               _%hd191007191503%_)
                              (let ()
                                (declare (not safe))
                                (_%g190998191108%_)))))
                      (let () (declare (not safe)) (_%g190998191108%_)))))
              (let () (declare (not safe)) (_%g190998191108%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191008191505%_))
                                              (let ((_%e191098191129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191008191505%_))))
                                                (let ((_%tl191100191134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191098191129%_)))
                                                      (_%hd191099191132%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191098191129%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191100191134%_))
                                                      (let ((_%e191101191137%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191100191134%_))))
                (let ((_%tl191103191142%_
                       (let () (declare (not safe)) (##cdr _%e191101191137%_)))
                      (_%hd191102191140%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191101191137%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191103191142%_))
                      (_%__kont195505195506%_
                       _%hd191102191140%_
                       _%hd191099191132%_
                       _%hd191007191503%_)
                      (let () (declare (not safe)) (_%g190998191108%_)))))
              (let () (declare (not safe)) (_%g190998191108%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g190998191108%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191008191505%_))
                                      (let ((_%e191098191129%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191008191505%_))))
                                        (let ((_%tl191100191134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191098191129%_)))
                                              (_%hd191099191132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191098191129%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191100191134%_))
                                              (let ((_%e191101191137%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191100191134%_))))
                                                (let ((_%tl191103191142%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191101191137%_)))
                                                      (_%hd191102191140%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191101191137%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191103191142%_))
                                                      (_%__kont195505195506%_
                                                       _%hd191102191140%_
                                                       _%hd191099191132%_
                                                       _%hd191007191503%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190998191108%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190998191108%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190998191108%_))))))
                          (let () (declare (not safe)) (_%g190998191108%_)))))
                  (let () (declare (not safe)) (_%g190998191108%_))))))))))
