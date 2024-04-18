(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1713454417)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp196016 (list gxc#::basic-xform::t))
            (__tmp196015 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp196016
         '()
         __tmp196015
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args195293%_
        (apply make-instance gxc#::optimize-call::t _%$args195293%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp196017
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
        (__make-promise __tmp196017)))
    (define gxc#apply-optimize-call
      (lambda (_%stx195285%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self195288%_
                (let ((__obj196007
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj196007))
               (__tmp196018
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self195288%_ _%stx195285%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp196018
           gxc#current-compile-method
           _%self195288%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp196020 (list gxc#::void::t))
            (__tmp196019 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp196020
         '()
         __tmp196019
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args195282%_
        (apply make-instance gxc#::check-return-type::t _%$args195282%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp196021
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
        (__make-promise __tmp196021)))
    (define gxc#apply-check-return-type
      (lambda (_%stx195274%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self195277%_
                (let ((__obj196009
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj196009))
               (__tmp196022
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self195277%_ _%stx195274%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp196022
           gxc#current-compile-method
           _%self195277%_))))
    (define gxc#optimize-call%
      (lambda (_%self194875%_ _%stx194876%_)
        (let* ((_%__stx195362195363%_ _%stx194876%_)
               (_%g194879194925%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195362195363%_)))))
          (let ((_%__kont195364195365%_
                 (lambda (_%L195068%_ _%L195069%_)
                   (let* ((_%rator-id195089%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L195069%_)))
                          (_%rator-type195091%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id195089%_))))
                     (if (or (not _%rator-type195091%_)
                             (eq? (##structure-ref
                                   _%rator-type195091%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self194875%_ _%stx194876%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type195091%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp196023
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type195091%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id195089%_
                                  '" => "
                                  _%rator-type195091%_
                                  '" "
                                  __tmp196023))
                               (let* ((_%optimized195106%_
                                       (let ((__method196010
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type195091%_
                                                 'optimize-call))))
                                         (if __method196010
                                             (let ((__tmp196024
                                                    (let ((__tmp196025
                                                           (lambda (_%g195098195101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g195099195103%_)
                     (cons _%g195098195101%_ _%g195099195103%_))))
              (declare (not safe))
              (__foldr1 __tmp196025 '() _%L195068%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method196010
                                                _%rator-type195091%_
                                                _%self194875%_
                                                _%stx194876%_
                                                __tmp196024))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type195091%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx195310195311%_
                                       _%optimized195106%_)
                                      (_%g195109195138%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx195310195311%_)))))
                                 (let ((_%__kont195312195313%_
                                        (lambda (_%L195206%_ _%L195207%_)
                                          (let* ((_%optimized-rator-id195234%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L195207%_)))
                                                 (_%rator-type195239%_
                                                  (let ((_%$e195236%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id195234%_))))
                                                    (if _%$e195236%_
                                                        _%$e195236%_
                                                        _%rator-type195091%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type195239%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id195234%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type195239%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type195239%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized195106%_
                                                (let ((__tmp196026
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L195207%_ '()))
                           (let ((__tmp196027
                                  (lambda (_%g195247195250%_ _%g195248195252%_)
                                    (cons _%g195247195250%_
                                          _%g195248195252%_))))
                             (declare (not safe))
                             (__foldr1 __tmp196027 '() _%L195206%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp196026
                                                   _%stx194876%_))))))
                                       (_%__kont195316195317%_
                                        (lambda () _%optimized195106%_)))
                                   (let ((_%__match195359195360%_
                                          (lambda (_%e195113195150%_
                                                   _%hd195114195153%_
                                                   _%tl195115195155%_
                                                   _%e195116195158%_
                                                   _%hd195117195161%_
                                                   _%tl195118195163%_
                                                   _%e195119195166%_
                                                   _%hd195120195169%_
                                                   _%tl195121195171%_
                                                   _%e195122195174%_
                                                   _%hd195123195177%_
                                                   _%tl195124195179%_
                                                   _%__splice195314195315%_
                                                   _%target195125195182%_
                                                   _%tl195127195184%_)
                                            (letrec ((_%loop195128195187%_
                                                      (lambda (_%hd195126195190%_
                                                               _%arg195132195192%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd195126195190%_))
                                                            (let ((_%e195129195195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd195126195190%_))))
                      (let ((_%lp-tl195131195200%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195129195195%_)))
                            (_%lp-hd195130195198%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195129195195%_))))
                        (_%loop195128195187%_
                         _%lp-tl195131195200%_
                         (cons _%lp-hd195130195198%_ _%arg195132195192%_))))
                    (let ((_%arg195133195203%_ (reverse _%arg195132195192%_)))
                      (_%__kont195312195313%_
                       _%arg195133195203%_
                       _%hd195123195177%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop195128195187%_
                                               _%target195125195182%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx195310195311%_))
                                         (let ((_%e195113195150%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx195310195311%_))))
                                           (let ((_%tl195115195155%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e195113195150%_)))
                                                 (_%hd195114195153%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e195113195150%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd195114195153%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd195114195153%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl195115195155%_))
                                                         (let ((_%e195116195158%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl195115195155%_))))
                   (let ((_%tl195118195163%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e195116195158%_)))
                         (_%hd195117195161%_
                          (let ()
                            (declare (not safe))
                            (##car _%e195116195158%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd195117195161%_))
                         (let ((_%e195119195166%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd195117195161%_))))
                           (let ((_%tl195121195171%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e195119195166%_)))
                                 (_%hd195120195169%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e195119195166%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd195120195169%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd195120195169%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl195121195171%_))
                                         (let ((_%e195122195174%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl195121195171%_))))
                                           (let ((_%tl195124195179%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e195122195174%_)))
                                                 (_%hd195123195177%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e195122195174%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl195124195179%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl195118195163%_))
                                                     (let ((_%__splice195314195315%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl195118195163%_
                                                               '0))))
                                                       (let ((_%tl195127195184%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice195314195315%_ '1)))
                     (_%target195125195182%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice195314195315%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl195127195184%_))
                     (_%__match195359195360%_
                      _%e195113195150%_
                      _%hd195114195153%_
                      _%tl195115195155%_
                      _%e195116195158%_
                      _%hd195117195161%_
                      _%tl195118195163%_
                      _%e195119195166%_
                      _%hd195120195169%_
                      _%tl195121195171%_
                      _%e195122195174%_
                      _%hd195123195177%_
                      _%tl195124195179%_
                      _%__splice195314195315%_
                      _%target195125195182%_
                      _%tl195127195184%_)
                     (_%__kont195316195317%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont195316195317%_))
                                                 (_%__kont195316195317%_))))
                                         (_%__kont195316195317%_))
                                     (_%__kont195316195317%_))
                                 (_%__kont195316195317%_))))
                         (_%__kont195316195317%_))))
                 (_%__kont195316195317%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont195316195317%_))
                                                 (_%__kont195316195317%_))))
                                         (_%__kont195316195317%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type195091%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type195091%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp196028
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L195069%_
                                                                '()))
                                                    (map (lambda (_%g195258195260%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self194875%_
                                                              _%g195258195260%_)))
                                                         (let ((__tmp196029
                                                                (lambda (_%g195262195265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g195263195267%_)
                          (cons _%g195262195265%_ _%g195263195267%_))))
                   (declare (not safe))
                   (__foldr1 __tmp196029 '() _%L195068%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp196028
                                    _%stx194876%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx194876%_
                                    _%rator-type195091%_))))))))
                (_%__kont195368195369%_
                 (lambda (_%L194970%_ _%L194971%_)
                   (let ((_%rator-type194988%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L194971%_))))
                     (if (and _%rator-type194988%_
                              (eq? (##structure-ref
                                    _%rator-type194988%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type194988%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type194988%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type194988%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp196030
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self194875%_
                                               _%L194971%_))
                                            (map (lambda (_%g194990194992%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self194875%_
                                                      _%g194990194992%_)))
                                                 (let ((__tmp196031
                                                        (lambda (_%g194994194997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g194995194999%_)
                  (cons _%g194994194997%_ _%g194995194999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp196031
                                                    '()
                                                    _%L194970%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp196030 _%stx194876%_))
                         (if (or (not _%rator-type194988%_)
                                 (let ((__tmp196032
                                        (##structure-ref
                                         _%rator-type194988%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp196032 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self194875%_ _%stx194876%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx194876%_
                                _%rator-type194988%_))))))))
            (let* ((_%__match195429195430%_
                    (lambda (_%e194906194930%_
                             _%hd194907194933%_
                             _%tl194908194935%_
                             _%e194909194938%_
                             _%hd194910194941%_
                             _%tl194911194943%_
                             _%__splice195370195371%_
                             _%target194912194946%_
                             _%tl194914194948%_)
                      (letrec ((_%loop194915194951%_
                                (lambda (_%hd194913194954%_
                                         _%rand194919194956%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194913194954%_))
                                      (let ((_%e194916194959%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd194913194954%_))))
                                        (let ((_%lp-tl194918194964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194916194959%_)))
                                              (_%lp-hd194917194962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194916194959%_))))
                                          (_%loop194915194951%_
                                           _%lp-tl194918194964%_
                                           (cons _%lp-hd194917194962%_
                                                 _%rand194919194956%_))))
                                      (let ((_%rand194920194967%_
                                             (reverse _%rand194919194956%_)))
                                        (_%__kont195368195369%_
                                         _%rand194920194967%_
                                         _%hd194910194941%_))))))
                        (_%loop194915194951%_ _%target194912194946%_ '()))))
                   (_%__match195409195410%_
                    (lambda (_%e194883195012%_
                             _%hd194884195015%_
                             _%tl194885195017%_
                             _%e194886195020%_
                             _%hd194887195023%_
                             _%tl194888195025%_
                             _%e194889195028%_
                             _%hd194890195031%_
                             _%tl194891195033%_
                             _%e194892195036%_
                             _%hd194893195039%_
                             _%tl194894195041%_
                             _%__splice195366195367%_
                             _%target194895195044%_
                             _%tl194897195046%_)
                      (letrec ((_%loop194898195049%_
                                (lambda (_%hd194896195052%_
                                         _%rand194902195054%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194896195052%_))
                                      (let ((_%e194899195057%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd194896195052%_))))
                                        (let ((_%lp-tl194901195062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194899195057%_)))
                                              (_%lp-hd194900195060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194899195057%_))))
                                          (_%loop194898195049%_
                                           _%lp-tl194901195062%_
                                           (cons _%lp-hd194900195060%_
                                                 _%rand194902195054%_))))
                                      (let ((_%rand194903195065%_
                                             (reverse _%rand194902195054%_)))
                                        (_%__kont195364195365%_
                                         _%rand194903195065%_
                                         _%hd194893195039%_))))))
                        (_%loop194898195049%_ _%target194895195044%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195362195363%_))
                  (let ((_%e194883195012%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195362195363%_))))
                    (let ((_%tl194885195017%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194883195012%_)))
                          (_%hd194884195015%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194883195012%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194885195017%_))
                          (let ((_%e194886195020%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194885195017%_))))
                            (let ((_%tl194888195025%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194886195020%_)))
                                  (_%hd194887195023%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194886195020%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194887195023%_))
                                  (let ((_%e194889195028%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194887195023%_))))
                                    (let ((_%tl194891195033%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194889195028%_)))
                                          (_%hd194890195031%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194889195028%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194890195031%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd194890195031%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194891195033%_))
                                                  (let ((_%e194892195036%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194891195033%_))))
                                                    (let ((_%tl194894195041%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194892195036%_)))
                                                          (_%hd194893195039%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194892195036%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194894195041%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl194888195025%_))
                      (let ((_%__splice195366195367%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl194888195025%_
                                '0))))
                        (let ((_%tl194897195046%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195366195367%_ '1)))
                              (_%target194895195044%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195366195367%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194897195046%_))
                              (_%__match195409195410%_
                               _%e194883195012%_
                               _%hd194884195015%_
                               _%tl194885195017%_
                               _%e194886195020%_
                               _%hd194887195023%_
                               _%tl194888195025%_
                               _%e194889195028%_
                               _%hd194890195031%_
                               _%tl194891195033%_
                               _%e194892195036%_
                               _%hd194893195039%_
                               _%tl194894195041%_
                               _%__splice195366195367%_
                               _%target194895195044%_
                               _%tl194897195046%_)
                              (let ()
                                (declare (not safe))
                                (_%g194879194925%_)))))
                      (let () (declare (not safe)) (_%g194879194925%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl194888195025%_))
                      (let ((_%__splice195370195371%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl194888195025%_
                                '0))))
                        (let ((_%tl194914194948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195370195371%_ '1)))
                              (_%target194912194946%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195370195371%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194914194948%_))
                              (_%__match195429195430%_
                               _%e194883195012%_
                               _%hd194884195015%_
                               _%tl194885195017%_
                               _%e194886195020%_
                               _%hd194887195023%_
                               _%tl194888195025%_
                               _%__splice195370195371%_
                               _%target194912194946%_
                               _%tl194914194948%_)
                              (let ()
                                (declare (not safe))
                                (_%g194879194925%_)))))
                      (let () (declare (not safe)) (_%g194879194925%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl194888195025%_))
                                                      (let ((_%__splice195370195371%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl194888195025%_ '0))))
                (let ((_%tl194914194948%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice195370195371%_ '1)))
                      (_%target194912194946%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice195370195371%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194914194948%_))
                      (_%__match195429195430%_
                       _%e194883195012%_
                       _%hd194884195015%_
                       _%tl194885195017%_
                       _%e194886195020%_
                       _%hd194887195023%_
                       _%tl194888195025%_
                       _%__splice195370195371%_
                       _%target194912194946%_
                       _%tl194914194948%_)
                      (let () (declare (not safe)) (_%g194879194925%_)))))
              (let () (declare (not safe)) (_%g194879194925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl194888195025%_))
                                                  (let ((_%__splice195370195371%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl194888195025%_
                                                            '0))))
                                                    (let ((_%tl194914194948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195370195371%_
                                                              '1)))
                                                          (_%target194912194946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195370195371%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194914194948%_))
                                                          (_%__match195429195430%_
                                                           _%e194883195012%_
                                                           _%hd194884195015%_
                                                           _%tl194885195017%_
                                                           _%e194886195020%_
                                                           _%hd194887195023%_
                                                           _%tl194888195025%_
                                                           _%__splice195370195371%_
                                                           _%target194912194946%_
                                                           _%tl194914194948%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194879194925%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g194879194925%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl194888195025%_))
                                              (let ((_%__splice195370195371%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl194888195025%_
                                                        '0))))
                                                (let ((_%tl194914194948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice195370195371%_
                                                          '1)))
                                                      (_%target194912194946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice195370195371%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194914194948%_))
                                                      (_%__match195429195430%_
                                                       _%e194883195012%_
                                                       _%hd194884195015%_
                                                       _%tl194885195017%_
                                                       _%e194886195020%_
                                                       _%hd194887195023%_
                                                       _%tl194888195025%_
                                                       _%__splice195370195371%_
                                                       _%target194912194946%_
                                                       _%tl194914194948%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194879194925%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g194879194925%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl194888195025%_))
                                      (let ((_%__splice195370195371%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl194888195025%_
                                                '0))))
                                        (let ((_%tl194914194948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195370195371%_
                                                  '1)))
                                              (_%target194912194946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195370195371%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194914194948%_))
                                              (_%__match195429195430%_
                                               _%e194883195012%_
                                               _%hd194884195015%_
                                               _%tl194885195017%_
                                               _%e194886195020%_
                                               _%hd194887195023%_
                                               _%tl194888195025%_
                                               _%__splice195370195371%_
                                               _%target194912194946%_
                                               _%tl194914194948%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g194879194925%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194879194925%_))))))
                          (let () (declare (not safe)) (_%g194879194925%_)))))
                  (let () (declare (not safe)) (_%g194879194925%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self191254194835%_ _%ctx194837%_ _%stx194838%_ _%args194839%_)
        (let* ((_%self194841%_ _%self191254194835%_)
               (_%self194843%_ _%self194841%_))
          (if (let ((__method196011
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self194843%_ 'check-arguments))))
                (if __method196011
                    (let ()
                      (declare (not safe))
                      (__method196011
                       _%self194843%_
                       _%ctx194837%_
                       _%stx194838%_
                       _%args194839%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self194843%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature194853%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self194843%_ '2 '#f '#f)))
                     (_%signature194855%_ _%signature194853%_)
                     (_%$e194865%_
                      (if _%signature194855%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature194855%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e194865%_
                    ((lambda (_%unchecked194868%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked194868%_))
                           (let ((__tmp196033
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked194868%_
                                                          '()))
                                              (map (lambda (_%g194869194871%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194837%_
                                                        _%g194869194871%_)))
                                                   _%args194839%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp196033
                              _%stx194838%_
                              _%ctx194837%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx194837%_ _%stx194838%_))))
                     _%$e194865%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx194837%_ _%stx194838%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx194837%_ _%stx194838%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass195295 __method-table195296)
        (let ((__check-arguments195297
               (let ((__tmp196034
                      (lambda ()
                        (let ((__method195298
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table195296
                                  'check-arguments
                                  '#f))))
                          (if __method195298
                              __method195298
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp196034))))
          (lambda (_%self191254194835%_
                   _%ctx194837%_
                   _%stx194838%_
                   _%args194839%_)
            (let* ((_%self194841%_ _%self191254194835%_)
                   (_%self194843%_ _%self194841%_))
              (if ((force __check-arguments195297)
                   _%self194843%_
                   _%ctx194837%_
                   _%stx194838%_
                   _%args194839%_)
                  (let* ((_%signature194853%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self194843%_
                             '2
                             '#f
                             '#f)))
                         (_%signature194855%_ _%signature194853%_)
                         (_%$e194865%_
                          (if _%signature194855%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature194855%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e194865%_
                        ((lambda (_%unchecked194868%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked194868%_))
                               (let ((__tmp196035
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked194868%_
                                                              '()))
                                                  (map (lambda (_%g194869194871%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx194837%_
                                                            _%g194869194871%_)))
                                                       _%args194839%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp196035
                                  _%stx194838%_
                                  _%ctx194837%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx194837%_
                                  _%stx194838%_))))
                         _%$e194865%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx194837%_ _%stx194838%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx194837%_ _%stx194838%_))))))))
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
      (lambda (_%self191255194584%_ _%ctx194586%_ _%stx194587%_ _%args194588%_)
        (let* ((_%self194590%_ _%self191255194584%_)
               (_%self194592%_ _%self194590%_)
               (_%signature194601194603%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194592%_ '2 '#f '#f))))
          (if _%signature194601194603%_
              (let* ((_%signature194606%_ _%signature194601194603%_)
                     (_%argument-types194607194609%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature194606%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types194607194609%_
                    (let* ((_%argument-types194612%_
                            _%argument-types194607194609%_)
                           (_%argument-types194617%_
                            (let ((__tmp196036
                                   (lambda (_%t194615%_)
                                     (if _%t194615%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194587%_
                                            _%t194615%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp196036
                               _%argument-types194612%_))))
                      (let _%loop194619%_ ((_%rest-args194621%_ _%args194588%_)
                                           (_%rest-types194622%_
                                            _%argument-types194617%_)
                                           (_%result194623%_ '#t))
                        (let* ((_%rest-args194624194632%_ _%rest-args194621%_)
                               (_%else194626194640%_
                                (lambda () _%result194623%_))
                               (_%K194628194701%_
                                (lambda (_%rest-args194643%_ _%arg194644%_)
                                  (let* ((_%rest-types194645194656%_
                                          _%rest-types194622%_)
                                         (_%E194649194660%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types194645194656%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K194652194689%_
                                           (lambda (_%rest-types194686%_
                                                    _%type194687%_)
                                             (_%loop194619%_
                                              _%rest-args194643%_
                                              _%rest-types194686%_
                                              (if (gxc#check-expression-type!
                                                   _%stx194587%_
                                                   _%arg194644%_
                                                   _%type194687%_)
                                                  _%result194623%_
                                                  '#f))))
                                          (_%K194651194680%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx194587%_
                                                _%argument-types194617%_))))
                                          (_%K194650194670%_
                                           (lambda (_%tail-type194664%_)
                                             (if (let ((__tmp196037
                                                        (lambda (_%g194665194667%_)
                                                          (gxc#check-expression-type!
                                                           _%stx194587%_
                                                           _%g194665194667%_
                                                           _%tail-type194664%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp196037
                                                    _%rest-args194643%_))
                                                 _%result194623%_
                                                 '#f))))
                                      (let ((_%try-match194647194683%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types194645194656%_))
                                                   (_%K194651194680%_)
                                                   (let ((_%tail-type194673%_
                                                          _%rest-types194645194656%_))
                                                     (_%K194650194670%_
                                                      _%tail-type194673%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types194645194656%_))
                                            (let ((_%tl194654194694%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types194645194656%_)))
                                                  (_%hd194653194692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types194645194656%_))))
                                              (let ((_%type194697%_
                                                     _%hd194653194692%_)
                                                    (_%rest-types194699%_
                                                     _%tl194654194694%_))
                                                (_%K194652194689%_
                                                 _%rest-types194699%_
                                                 _%type194697%_)))
                                            (_%try-match194647194683%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args194624194632%_))
                              (let ((_%hd194629194704%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args194624194632%_)))
                                    (_%tl194630194706%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args194624194632%_))))
                                (let* ((_%arg194709%_ _%hd194629194704%_)
                                       (_%rest-args194711%_
                                        _%tl194630194706%_))
                                  (_%K194628194701%_
                                   _%rest-args194711%_
                                   _%arg194709%_)))
                              (_%else194626194640%_)))))
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
      (lambda (_%self191256194393%_ _%ctx194395%_ _%stx194396%_ _%args194397%_)
        (let* ((_%self194399%_ _%self191256194393%_)
               (_%self194401%_ _%self194399%_)
               (_%g194411194421%_
                (lambda (_%g194412194418%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194412194418%_))))
               (_%g194410194459%_
                (lambda (_%g194412194424%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194412194424%_))
                      (let ((_%e194414194426%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194412194424%_))))
                        (let ((_%hd194415194429%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194414194426%_)))
                              (_%tl194416194431%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194414194426%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194416194431%_))
                              ((lambda (_%L194434%_)
                                 (let* ((_%klass194446%_
                                         (let ((__tmp196038
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194401%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194396%_
                                            __tmp196038)))
                                        (_%object194448%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx194395%_
                                            _%L194434%_)))
                                        (_%instance?194453%_
                                         (let ((_%$e194450%_
                                                (gxc#expression-type?
                                                 _%object194448%_
                                                 _%klass194446%_)))
                                           (if _%$e194450%_
                                               _%$e194450%_
                                               (gxc#expression-type?
                                                _%L194434%_
                                                _%klass194446%_)))))
                                   (if _%instance?194453%_
                                       (let ((__tmp196039
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object194448%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L194434%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object194448%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp196039
                                          _%stx194396%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx194395%_
                                          _%stx194396%_)))))
                               _%hd194415194429%_)
                              (_%g194411194421%_ _%g194412194424%_))))
                      (_%g194411194421%_ _%g194412194424%_)))))
          (_%g194410194459%_ _%args194397%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self191257194187%_ _%ctx194189%_ _%stx194190%_ _%args194191%_)
        (let* ((_%self194193%_ _%self191257194187%_)
               (_%self194195%_ _%self194193%_)
               (_%g194205194215%_
                (lambda (_%g194206194212%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194206194212%_))))
               (_%g194204194268%_
                (lambda (_%g194206194218%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194206194218%_))
                      (let ((_%e194208194220%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194206194218%_))))
                        (let ((_%hd194209194223%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194208194220%_)))
                              (_%tl194210194225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194208194220%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194210194225%_))
                              ((lambda (_%L194228%_)
                                 (let* ((_%klass194240%_
                                         (let ((__tmp196040
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194195%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194190%_
                                            __tmp196040)))
                                        (_%object194242%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx194189%_
                                            _%L194228%_)))
                                        (_%instance?194247%_
                                         (let ((_%$e194244%_
                                                (gxc#expression-type?
                                                 _%object194242%_
                                                 _%klass194240%_)))
                                           (if _%$e194244%_
                                               _%$e194244%_
                                               (gxc#expression-type?
                                                _%L194228%_
                                                _%klass194240%_))))
                                        (_%klass194250%_ _%klass194240%_))
                                   (if _%instance?194247%_
                                       (let ((__tmp196041
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object194242%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L194228%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object194242%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp196041
                                          _%stx194190%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass194250%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp196042
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass194250%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object194242%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp196042
                                              _%stx194190%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass194250%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp196043
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass194250%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object194242%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp196043
                                                  _%stx194190%_))
                                               (let ((__tmp196044
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self194195%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object194242%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp196044
                                                  _%stx194190%_)))))))
                               _%hd194209194223%_)
                              (_%g194205194215%_ _%g194206194218%_))))
                      (_%g194205194215%_ _%g194206194218%_)))))
          (_%g194204194268%_ _%args194191%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx193850%_)
        (let* ((_%__stx195439195440%_ _%stx193850%_)
               (_%g193855193896%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195439195440%_)))))
          (let ((_%__kont195441195442%_ (lambda () '#t))
                (_%__kont195443195444%_ (lambda () '#t))
                (_%__kont195445195446%_
                 (lambda (_%L193964%_ _%L193965%_)
                   (let ((_%rator-type193986193988%_
                          (let ((__tmp196045
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L193965%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp196045))))
                     (if _%rator-type193986193988%_
                         (let* ((_%rator-type193991%_
                                 _%rator-type193986193988%_)
                                (_%rator-signature193992193994%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type193991%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type193991%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature193992193994%_
                               (let* ((_%rator-signature193997%_
                                       _%rator-signature193992193994%_)
                                      (_%rator-effect193998194000%_
                                       (if _%rator-signature193997%_
                                           (##direct-structure-ref
                                            _%rator-signature193997%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect193998194000%_
                                     (let ((_%rator-effect194003%_
                                            _%rator-effect193998194000%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect194003%_)
                                               (equal? '(alloc)
                                                       _%rator-effect194003%_))
                                           (let ((__tmp196046
                                                  (let ((__tmp196047
                                                         (lambda (_%g194008194011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g194009194013%_)
                   (cons _%g194008194011%_ _%g194009194013%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp196047
                                                     '()
                                                     _%L193964%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp196046))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont195449195450%_ (lambda () '#f)))
            (let ((_%__match195528195529%_
                   (lambda (_%e193871193908%_
                            _%hd193872193911%_
                            _%tl193873193913%_
                            _%e193874193916%_
                            _%hd193875193919%_
                            _%tl193876193921%_
                            _%e193877193924%_
                            _%hd193878193927%_
                            _%tl193879193929%_
                            _%e193880193932%_
                            _%hd193881193935%_
                            _%tl193882193937%_
                            _%__splice195447195448%_
                            _%target193883193940%_
                            _%tl193885193942%_)
                     (letrec ((_%loop193886193945%_
                               (lambda (_%hd193884193948%_
                                        _%rand193890193950%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd193884193948%_))
                                     (let ((_%e193887193953%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd193884193948%_))))
                                       (let ((_%lp-tl193889193958%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e193887193953%_)))
                                             (_%lp-hd193888193956%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e193887193953%_))))
                                         (_%loop193886193945%_
                                          _%lp-tl193889193958%_
                                          (cons _%lp-hd193888193956%_
                                                _%rand193890193950%_))))
                                     (let ((_%rand193891193961%_
                                            (reverse _%rand193890193950%_)))
                                       (_%__kont195445195446%_
                                        _%rand193891193961%_
                                        _%hd193881193935%_))))))
                       (_%loop193886193945%_ _%target193883193940%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195439195440%_))
                  (let ((_%e193857194044%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195439195440%_))))
                    (let ((_%tl193859194049%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193857194044%_)))
                          (_%hd193858194047%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193857194044%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193858194047%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd193858194047%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193859194049%_))
                                  (let ((_%e193860194052%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193859194049%_))))
                                    (let ((_%tl193862194057%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193860194052%_)))
                                          (_%hd193861194055%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193860194052%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193862194057%_))
                                          (_%__kont195441195442%_)
                                          (_%__kont195449195450%_))))
                                  (_%__kont195449195450%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193858194047%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193859194049%_))
                                      (let ((_%e193866194029%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193859194049%_))))
                                        (let ((_%tl193868194034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193866194029%_)))
                                              (_%hd193867194032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193866194029%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193868194034%_))
                                              (_%__kont195443195444%_)
                                              (_%__kont195449195450%_))))
                                      (_%__kont195449195450%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd193858194047%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193859194049%_))
                                          (let ((_%e193874193916%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193859194049%_))))
                                            (let ((_%tl193876193921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193874193916%_)))
                                                  (_%hd193875193919%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193874193916%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd193875193919%_))
                                                  (let ((_%e193877193924%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd193875193919%_))))
                                                    (let ((_%tl193879193929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193877193924%_)))
                                                          (_%hd193878193927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193877193924%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd193878193927%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd193878193927%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193879193929%_))
                          (let ((_%e193880193932%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193879193929%_))))
                            (let ((_%tl193882193937%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193880193932%_)))
                                  (_%hd193881193935%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193880193932%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193882193937%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl193876193921%_))
                                      (let ((_%__splice195447195448%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl193876193921%_
                                                '0))))
                                        (let ((_%tl193885193942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195447195448%_
                                                  '1)))
                                              (_%target193883193940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195447195448%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193885193942%_))
                                              (_%__match195528195529%_
                                               _%e193857194044%_
                                               _%hd193858194047%_
                                               _%tl193859194049%_
                                               _%e193874193916%_
                                               _%hd193875193919%_
                                               _%tl193876193921%_
                                               _%e193877193924%_
                                               _%hd193878193927%_
                                               _%tl193879193929%_
                                               _%e193880193932%_
                                               _%hd193881193935%_
                                               _%tl193882193937%_
                                               _%__splice195447195448%_
                                               _%target193883193940%_
                                               _%tl193885193942%_)
                                              (_%__kont195449195450%_))))
                                      (_%__kont195449195450%_))
                                  (_%__kont195449195450%_))))
                          (_%__kont195449195450%_))
                      (_%__kont195449195450%_))
                  (_%__kont195449195450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont195449195450%_))))
                                          (_%__kont195449195450%_))
                                      (_%__kont195449195450%_))))
                          (_%__kont195449195450%_))))
                  (_%__kont195449195450%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx193845%_ _%klass193846%_)
        (let ((_%expr-type193848%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx193845%_))))
          (if _%expr-type193848%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type193848%_ _%klass193846%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx193823%_ _%expr193824%_ _%type193825%_)
        (if (not _%type193825%_)
            '#f
            (let ((_%$e193828%_
                   (eq? (##structure-ref _%type193825%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e193828%_
                  _%$e193828%_
                  (let ((_%expr-type193832%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr193824%_))))
                    (if (not _%expr-type193832%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type193832%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e193836%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type193832%_
                                      'gxc#!abort::t))))
                              (if _%$e193836%_
                                  _%$e193836%_
                                  (let ((_%$e193839%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type193832%_
                                            _%type193825%_))))
                                    (if _%$e193839%_
                                        _%$e193839%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type193825%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type193825%_
                                                   _%expr-type193832%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx193823%_
                                                   _%expr193824%_
                                                   _%expr-type193832%_
                                                   _%type193825%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self191258193635%_ _%ctx193637%_ _%stx193638%_ _%args193639%_)
        (let* ((_%self193641%_ _%self191258193635%_)
               (_%self193643%_ _%self193641%_)
               (_%klass193653%_
                (let ((__tmp196048
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self193643%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx193638%_ __tmp196048)))
               (_%fields193655%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass193653%_
                           '5
                           '#f
                           '#f))))
               (_%args193661%_
                (map (lambda (_%g193656193658%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx193637%_ _%g193656193658%_)))
                     _%args193639%_))
               (_%inline-make-object193663%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self193643%_
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
                           _%self193643%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields193655%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass193666%_ _%klass193653%_)
               (_%$e193680%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass193666%_ '6 '#f '#f))))
          (if _%$e193680%_
              ((lambda (_%ctor193683%_)
                 (let ((_%$obj193685%_
                        (let ((__tmp196049
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp196049)))
                       (_%ctor-impl193686%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass193666%_
                           _%ctor193683%_))))
                   (let ((__tmp196050
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj193685%_ '())
                                                  (cons _%inline-make-object193663%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl193686%_
                                                            (let ((__tmp196051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl193686%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj193685%_ '()))
                                             _%args193661%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp196051
                       _%stx193638%_
                       _%ctx193637%_))
                    (let ((_%$ctor193688%_
                           (let ((__tmp196052
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp196052))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor193688%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193643%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj193685%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor193683%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor193688%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor193688%_ '()))
                              (cons (cons '%#ref (cons _%$obj193685%_ '()))
                                    _%args193661%_)))
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
                             _%self193643%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor193683%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj193685%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp196050 _%stx193638%_))))
               _%$e193680%_)
              (let ((_%$e193690%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass193666%_
                        '10
                        '#f
                        '#f))))
                (if _%$e193690%_
                    ((lambda (_%metaclass193693%_)
                       (let* ((_%$obj193695%_
                               (let ((__tmp196053
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp196053)))
                              (_%metakons193697%_
                               (let ((__tmp196054
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx193638%_
                                         _%metaclass193693%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp196054
                                  'instance-init!)))
                              (__tmp196055
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj193695%_
                                                             '())
                                                       (cons _%inline-make-object193663%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons193697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp196056
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons193697%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self193643%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj193695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args193661%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp196056
                            _%stx193638%_
                            _%ctx193637%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self193643%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj193695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args193661%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj193695%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp196055 _%stx193638%_)))
                     _%$e193690%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass193666%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp196057
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args193661%_))))
                              (declare (not safe))
                              (##fx= __tmp196057 _%fields193655%_))
                            (let ((__tmp196058
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self193643%_
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
                                              _%self193643%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args193661%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp196058
                               _%stx193638%_))
                            (let ((__tmp196060
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self193643%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp196059
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass193666%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx193638%_
                               __tmp196060
                               __tmp196059)))
                        (let ((_%$obj193702%_
                               (let ((__tmp196061
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp196061))))
                          (let _%lp193704%_ ((_%rest193706%_ _%args193661%_)
                                             (_%initializers193707%_ '()))
                            (let* ((_%__stx195531195532%_ _%rest193706%_)
                                   (_%g193711193732%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx195531195532%_)))))
                              (let ((_%__kont195533195534%_
                                     (lambda (_%L193786%_
                                              _%L193787%_
                                              _%L193788%_)
                                       (let* ((_%slot193815%_
                                               (let ((__tmp196062
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L193788%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp196062)))
                                              (_%off193817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass193666%_
                                                  _%slot193815%_))))
                                         (if _%off193817%_
                                             (_%lp193704%_
                                              _%L193786%_
                                              (cons (cons _%off193817%_
                                                          _%L193787%_)
                                                    _%initializers193707%_))
                                             (let ((__tmp196063
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self193643%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx193638%_
                                                __tmp196063
                                                _%slot193815%_))))))
                                    (_%__kont195535195536%_
                                     (lambda ()
                                       (let ((__tmp196064
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj193702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object193663%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp196067
                                     (cons (cons '%#ref
                                                 (cons _%$obj193702%_ '()))
                                           '()))
                                    (__tmp196065
                                     (let ((__tmp196066
                                            (lambda (_%i193746%_ _%r193747%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self193643%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i193746%_) '()))
                              (cons (cons '%#ref (cons _%$obj193702%_ '()))
                                    (cons (cdr _%i193746%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r193747%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp196066
                                        '()
                                        _%initializers193707%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp196067 __tmp196065)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp196064
                                          _%stx193638%_))))
                                    (_%__kont195537195538%_
                                     (lambda ()
                                       (let ((__tmp196068
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj193702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object193663%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj193702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args193661%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj193702%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp196068
                                          _%stx193638%_)))))
                                (let* ((_%g193709193749%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx195531195532%_))
                                              (_%__kont195535195536%_)
                                              (_%__kont195537195538%_))))
                                       (_%__match195568195569%_
                                        (lambda (_%e193716193754%_
                                                 _%hd193717193757%_
                                                 _%tl193718193759%_
                                                 _%e193719193762%_
                                                 _%hd193720193765%_
                                                 _%tl193721193767%_
                                                 _%e193722193770%_
                                                 _%hd193723193773%_
                                                 _%tl193724193775%_
                                                 _%e193725193778%_
                                                 _%hd193726193781%_
                                                 _%tl193727193783%_)
                                          (let ((_%L193786%_
                                                 _%tl193727193783%_)
                                                (_%L193787%_
                                                 _%hd193726193781%_)
                                                (_%L193788%_
                                                 _%hd193723193773%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L193788%_))
                                                (_%__kont195533195534%_
                                                 _%L193786%_
                                                 _%L193787%_
                                                 _%L193788%_)
                                                (_%__kont195537195538%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx195531195532%_))
                                      (let ((_%e193716193754%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx195531195532%_))))
                                        (let ((_%tl193718193759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193716193754%_)))
                                              (_%hd193717193757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193716193754%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd193717193757%_))
                                              (let ((_%e193719193762%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd193717193757%_))))
                                                (let ((_%tl193721193767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193719193762%_)))
                                                      (_%hd193720193765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193719193762%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd193720193765%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd193720193765%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193721193767%_))
                      (let ((_%e193722193770%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193721193767%_))))
                        (let ((_%tl193724193775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193722193770%_)))
                              (_%hd193723193773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193722193770%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193724193775%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193718193759%_))
                                  (let ((_%e193725193778%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193718193759%_))))
                                    (let ((_%tl193727193783%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193725193778%_)))
                                          (_%hd193726193781%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193725193778%_))))
                                      (_%__match195568195569%_
                                       _%e193716193754%_
                                       _%hd193717193757%_
                                       _%tl193718193759%_
                                       _%e193719193762%_
                                       _%hd193720193765%_
                                       _%tl193721193767%_
                                       _%e193722193770%_
                                       _%hd193723193773%_
                                       _%tl193724193775%_
                                       _%e193725193778%_
                                       _%hd193726193781%_
                                       _%tl193727193783%_)))
                                  (_%__kont195537195538%_))
                              (_%__kont195537195538%_))))
                      (_%__kont195537195538%_))
                  (_%__kont195537195538%_))
              (_%__kont195537195538%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont195537195538%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193709193749%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self191259193416%_ _%ctx193418%_ _%stx193419%_ _%args193420%_)
        (let* ((_%self193422%_ _%self191259193416%_)
               (_%self193424%_ _%self193422%_)
               (_%arguments-ok?193434%_
                (let ((__method196012
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self193424%_ 'check-arguments))))
                  (if __method196012
                      (let ()
                        (declare (not safe))
                        (__method196012
                         _%self193424%_
                         _%ctx193418%_
                         _%stx193419%_
                         _%args193420%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self193424%_
                                 'check-arguments))
                        '#!void))))
               (_%g193436193446%_
                (lambda (_%g193437193443%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193437193443%_))))
               (_%g193435193510%_
                (lambda (_%g193437193449%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193437193449%_))
                      (let ((_%e193439193451%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193437193449%_))))
                        (let ((_%hd193440193454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193439193451%_)))
                              (_%tl193441193456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193439193451%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193441193456%_))
                              ((lambda (_%L193459%_)
                                 (let* ((_%klass193472%_
                                         (let ((__tmp196069
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193424%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193419%_
                                            __tmp196069)))
                                        (_%field193474%_
                                         (let ((__tmp196070
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193424%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass193472%_
                                            __tmp196070)))
                                        (_%object193476%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx193418%_
                                            _%L193459%_)))
                                        (_%klass193479%_ _%klass193472%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass193479%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp196071
                                              (cons (if (or _%arguments-ok?193434%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self193424%_
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
                                 _%self193424%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field193474%_ '()))
                        (cons _%object193476%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp196071
                                          _%stx193419%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass193479%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp196072
                                                  (cons (if (or _%arguments-ok?193434%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self193424%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193424%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field193474%_ '()))
                            (cons _%object193476%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp196072
                                              _%stx193419%_))
                                           (let ((_%$e193498%_
                                                  (let ((__tmp196073
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self193424%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass193479%_
                                                     __tmp196073))))
                                             (if _%$e193498%_
                                                 ((lambda (_%klass193501%_)
                                                    (let ((__tmp196074
                                                           (cons (if (or _%arguments-ok?193434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self193424%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self193424%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field193474%_ '()))
                                     (cons _%object193476%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp196074 _%stx193419%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e193498%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self193424%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp196075
                                                            (let ((_%$obj193507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp196076
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp196076))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj193507%_ '())
                                              (cons _%object193476%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass193479%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj193507%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193424%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field193474%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj193507%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?193434%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj193507%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193424%_
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
                                                             _%self193424%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj193507%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self193424%_
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
               (gxc#xform-wrap-source __tmp196075 _%stx193419%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp196077
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object193476%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self193424%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp196077 _%stx193419%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd193440193454%_)
                              (_%g193436193446%_ _%g193437193449%_))))
                      (_%g193436193446%_ _%g193437193449%_)))))
          (_%g193435193510%_ _%args193420%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass195299 __method-table195300)
        (let ((__check-arguments195301
               (let ((__tmp196078
                      (lambda ()
                        (let ((__method195302
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table195300
                                  'check-arguments
                                  '#f))))
                          (if __method195302
                              __method195302
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp196078)))
              (__slot195303
               (let ((__slot195304
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass195299 'slot))))
                 (if __slot195304
                     __slot195304
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self191259193416%_
                   _%ctx193418%_
                   _%stx193419%_
                   _%args193420%_)
            (let* ((_%self193422%_ _%self191259193416%_)
                   (_%self193424%_ _%self193422%_)
                   (_%arguments-ok?193434%_
                    ((force __check-arguments195301)
                     _%self193424%_
                     _%ctx193418%_
                     _%stx193419%_
                     _%args193420%_))
                   (_%g193436193446%_
                    (lambda (_%g193437193443%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g193437193443%_))))
                   (_%g193435193510%_
                    (lambda (_%g193437193449%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g193437193449%_))
                          (let ((_%e193439193451%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g193437193449%_))))
                            (let ((_%hd193440193454%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193439193451%_)))
                                  (_%tl193441193456%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193439193451%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193441193456%_))
                                  ((lambda (_%L193459%_)
                                     (let* ((_%klass193472%_
                                             (let ((__tmp196079
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self193424%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx193419%_
                                                __tmp196079)))
                                            (_%field193474%_
                                             (let ((__tmp196080
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self193424%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass193472%_
                                                __tmp196080)))
                                            (_%object193476%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx193418%_
                                                _%L193459%_)))
                                            (_%klass193479%_ _%klass193472%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass193479%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp196081
                                                  (cons (if (or _%arguments-ok?193434%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self193424%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193424%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field193474%_ '()))
                            (cons _%object193476%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp196081
                                              _%stx193419%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass193479%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp196082
                                                      (cons (if (or _%arguments-ok?193434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self193424%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self193424%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field193474%_ '()))
                                (cons _%object193476%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp196082
                                                  _%stx193419%_))
                                               (let ((_%$e193498%_
                                                      (let ((__tmp196083
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self193424%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass193479%_ __tmp196083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e193498%_
                                                     ((lambda (_%klass193501%_)
                                                        (let ((__tmp196084
                                                               (cons (if (or _%arguments-ok?193434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193424%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self193424%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field193474%_ '()))
                                         (cons _%object193476%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp196084 _%stx193419%_)))
              _%$e193498%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self193424%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp196085
                                                                (let ((_%$obj193507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp196086
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp196086))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj193507%_ '())
                                                  (cons _%object193476%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass193479%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj193507%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self193424%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field193474%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj193507%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?193434%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj193507%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self193424%_
                               __slot195303
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
                        (##unchecked-structure-ref _%self193424%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj193507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193424%_
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
                   (gxc#xform-wrap-source __tmp196085 _%stx193419%_))
                 (let ((__tmp196087
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object193476%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self193424%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp196087 _%stx193419%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd193440193454%_)
                                  (_%g193436193446%_ _%g193437193449%_))))
                          (_%g193436193446%_ _%g193437193449%_)))))
              (_%g193435193510%_ _%args193420%_))))))
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
      (lambda (_%self191260193178%_ _%ctx193180%_ _%stx193181%_ _%args193182%_)
        (let* ((_%self193184%_ _%self191260193178%_)
               (_%self193186%_ _%self193184%_)
               (_%arguments-ok?193196%_
                (let ((__method196013
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self193186%_ 'check-arguments))))
                  (if __method196013
                      (let ()
                        (declare (not safe))
                        (__method196013
                         _%self193186%_
                         _%ctx193180%_
                         _%stx193181%_
                         _%args193182%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self193186%_
                                 'check-arguments))
                        '#!void))))
               (_%g193198193212%_
                (lambda (_%g193199193209%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193199193209%_))))
               (_%g193197193291%_
                (lambda (_%g193199193215%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193199193215%_))
                      (let ((_%e193202193217%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193199193215%_))))
                        (let ((_%hd193203193220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193202193217%_)))
                              (_%tl193204193222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193202193217%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193204193222%_))
                              (let ((_%e193205193225%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193204193222%_))))
                                (let ((_%hd193206193228%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193205193225%_)))
                                      (_%tl193207193230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193205193225%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193207193230%_))
                                      ((lambda (_%L193233%_ _%L193234%_)
                                         (let* ((_%klass193250%_
                                                 (let ((__tmp196088
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self193186%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx193181%_
                                                    __tmp196088)))
                                                (_%field193252%_
                                                 (let ((__tmp196089
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self193186%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass193250%_
                                                    __tmp196089)))
                                                (_%object193254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx193180%_
                                                    _%L193234%_)))
                                                (_%value193256%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx193180%_
                                                    _%L193233%_)))
                                                (_%klass193259%_
                                                 _%klass193250%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass193259%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp196090
                                                      (cons (if (or _%arguments-ok?193196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self193186%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self193186%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field193252%_ '()))
                                (cons _%object193254%_
                                      (cons _%value193256%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp196090
                                                  _%stx193181%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass193259%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp196091
                                                          (cons (if (or _%arguments-ok?193196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self193186%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193186%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field193252%_ '()))
                                    (cons _%object193254%_
                                          (cons _%value193256%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp196091
                                                      _%stx193181%_))
                                                   (let ((_%$e193279%_
                                                          (let ((__tmp196092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self193186%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass193259%_
                     __tmp196092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e193279%_
                                                         ((lambda (_%klass193282%_)
                                                            (let ((__tmp196093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?193196%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self193186%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self193186%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field193252%_ '()))
                                             (cons _%object193254%_
                                                   (cons _%value193256%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp196093 _%stx193181%_)))
                  _%$e193279%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self193186%_ '4 '#f '#f))
                     (let ((__tmp196094
                            (let ((_%$obj193288%_
                                   (let ((__tmp196095
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp196095))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj193288%_ '())
                                                      (cons _%object193254%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass193259%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj193288%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self193186%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field193252%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj193288%_
                                                              '()))
                                                  (cons _%value193256%_
                                                        '())))))
                          (cons (if _%arguments-ok?193196%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj193288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self193186%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value193256%_ '())))))
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
                             _%self193186%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj193288%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self193186%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value193256%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp196094 _%stx193181%_))
                     (let ((__tmp196096
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object193254%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193186%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value193256%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp196096
                        _%stx193181%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd193206193228%_
                                       _%hd193203193220%_)
                                      (_%g193198193212%_ _%g193199193215%_))))
                              (_%g193198193212%_ _%g193199193215%_))))
                      (_%g193198193212%_ _%g193199193215%_)))))
          (_%g193197193291%_ _%args193182%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass195305 __method-table195306)
        (let ((__check-arguments195307
               (let ((__tmp196097
                      (lambda ()
                        (let ((__method195308
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table195306
                                  'check-arguments
                                  '#f))))
                          (if __method195308
                              __method195308
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp196097))))
          (lambda (_%self191260193178%_
                   _%ctx193180%_
                   _%stx193181%_
                   _%args193182%_)
            (let* ((_%self193184%_ _%self191260193178%_)
                   (_%self193186%_ _%self193184%_)
                   (_%arguments-ok?193196%_
                    ((force __check-arguments195307)
                     _%self193186%_
                     _%ctx193180%_
                     _%stx193181%_
                     _%args193182%_))
                   (_%g193198193212%_
                    (lambda (_%g193199193209%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g193199193209%_))))
                   (_%g193197193291%_
                    (lambda (_%g193199193215%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g193199193215%_))
                          (let ((_%e193202193217%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g193199193215%_))))
                            (let ((_%hd193203193220%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193202193217%_)))
                                  (_%tl193204193222%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193202193217%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193204193222%_))
                                  (let ((_%e193205193225%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193204193222%_))))
                                    (let ((_%hd193206193228%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193205193225%_)))
                                          (_%tl193207193230%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193205193225%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193207193230%_))
                                          ((lambda (_%L193233%_ _%L193234%_)
                                             (let* ((_%klass193250%_
                                                     (let ((__tmp196098
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self193186%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx193181%_
                                                        __tmp196098)))
                                                    (_%field193252%_
                                                     (let ((__tmp196099
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self193186%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass193250%_
                                                        __tmp196099)))
                                                    (_%object193254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx193180%_
                                                        _%L193234%_)))
                                                    (_%value193256%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx193180%_
                                                        _%L193233%_)))
                                                    (_%klass193259%_
                                                     _%klass193250%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass193259%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp196100
                                                          (cons (if (or _%arguments-ok?193196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self193186%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193186%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field193252%_ '()))
                                    (cons _%object193254%_
                                          (cons _%value193256%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp196100
                                                      _%stx193181%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass193259%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp196101
                                                              (cons (if (or _%arguments-ok?193196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self193186%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self193186%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field193252%_ '()))
                                        (cons _%object193254%_
                                              (cons _%value193256%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp196101 _%stx193181%_))
               (let ((_%$e193279%_
                      (let ((__tmp196102
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self193186%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass193259%_
                         __tmp196102))))
                 (if _%$e193279%_
                     ((lambda (_%klass193282%_)
                        (let ((__tmp196103
                               (cons (if (or _%arguments-ok?193196%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self193186%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self193186%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field193252%_
                                                             '()))
                                                 (cons _%object193254%_
                                                       (cons _%value193256%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp196103 _%stx193181%_)))
                      _%$e193279%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self193186%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp196104
                                (let ((_%$obj193288%_
                                       (let ((__tmp196105
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp196105))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj193288%_
                                                                '())
                                                          (cons _%object193254%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass193259%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj193288%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self193186%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field193252%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj193288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value193256%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?193196%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj193288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self193186%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value193256%_ '())))))
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
                                 _%self193186%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj193288%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193186%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value193256%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp196104 _%stx193181%_))
                         (let ((__tmp196106
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object193254%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self193186%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value193256%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp196106
                            _%stx193181%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd193206193228%_
                                           _%hd193203193220%_)
                                          (_%g193198193212%_
                                           _%g193199193215%_))))
                                  (_%g193198193212%_ _%g193199193215%_))))
                          (_%g193198193212%_ _%g193199193215%_)))))
              (_%g193197193291%_ _%args193182%_))))))
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
      (lambda (_%self191261192991%_ _%ctx192993%_ _%stx192994%_ _%args192995%_)
        (let* ((_%self192997%_ _%self191261192991%_)
               (_%self192999%_ _%self192997%_)
               (_%self193008193018%_ _%self192999%_)
               (_%E193010193022%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self193008193018%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K193011193032%_
                (lambda (_%inline193025%_ _%dispatch193026%_ _%arity193027%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self192999%_
                         _%args192995%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx192994%_
                         _%arity193027%_)))
                  (if _%inline193025%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp196107 (_%inline193025%_ _%stx192994%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp196107
                           _%stx192994%_
                           _%ctx192993%_)))
                      (if (and _%dispatch193026%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch193026%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch193026%_))
                            (let ((__tmp196108
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch193026%_
                                                           '()))
                                               _%args192995%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp196108
                               _%stx192994%_
                               _%ctx192993%_)))
                          (gxc#!procedure::optimize-call
                           _%self192999%_
                           _%ctx192993%_
                           _%stx192994%_
                           _%args192995%_)))))
               (_%e193012193035%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193008193018%_ '1 '#f '#f)))
               (_%e193013193038%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193008193018%_ '2 '#f '#f)))
               (_%e193014193041%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193008193018%_ '3 '#f '#f)))
               (_%arity193044%_ _%e193014193041%_)
               (_%e193015193046%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193008193018%_ '4 '#f '#f)))
               (_%dispatch193049%_ _%e193015193046%_)
               (_%e193016193051%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193008193018%_ '5 '#f '#f)))
               (_%inline193054%_ _%e193016193051%_))
          (_%K193011193032%_
           _%inline193054%_
           _%dispatch193049%_
           _%arity193044%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self191262192841%_ _%ctx192843%_ _%stx192844%_ _%args192845%_)
        (let* ((_%self192847%_ _%self191262192841%_)
               (_%self192849%_ _%self192847%_)
               (_%$e192863%_
                (let ((__tmp196110
                       (lambda (_%g192858192860%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g192858192860%_
                            _%args192845%_))))
                      (__tmp196109
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self192849%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp196110 __tmp196109))))
          (if _%$e192863%_
              ((lambda (_%clause192866%_)
                 (let ((__method196014
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause192866%_ 'optimize-call))))
                   (if __method196014
                       (let ()
                         (declare (not safe))
                         (__method196014
                          _%clause192866%_
                          _%ctx192843%_
                          _%stx192844%_
                          _%args192845%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause192866%_
                                  'optimize-call))
                         '#!void))))
               _%$e192863%_)
              (let ((__tmp196111
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self192849%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx192844%_
                 __tmp196111))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self191263192579%_ _%ctx192581%_ _%stx192582%_ _%args192583%_)
        (let* ((_%self192585%_ _%self191263192579%_)
               (_%self192587%_ _%self192585%_)
               (_%self192596192605%_ _%self192587%_)
               (_%E192598192609%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self192596192605%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K192599192700%_
                (lambda (_%dispatch192612%_ _%table192613%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch192612%_))
                      (let* ((_%g192614192624%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch192612%_)))
                             (_%else192616192632%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch192612%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx192581%_
                                   _%stx192582%_))))
                             (_%K192618192681%_
                              (lambda (_%main192635%_ _%keys192636%_)
                                (let ((_g196112_
                                       (gxc#!kw-lambda-split-args
                                        _%stx192582%_
                                        _%args192583%_)))
                                  (begin
                                    (let ((_g196113_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g196112_)
                                                 (##vector-length _g196112_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g196113_ 2)))
                                          (error "Context expects 2 values"
                                                 _g196113_)))
                                    (let ((_%pargs192638%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g196112_ 0)))
                                          (_%kwargs192639%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g196112_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main192635%_))
                                        (if _%table192613%_
                                            (let ((_%xargs192647%_
                                                   (map (lambda (_%key192641%_)
                                                          (let ((_%$e192643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key192641%_ _%kwargs192639%_))))
                    (if _%$e192643%_ _%$e192643%_ '(%#ref absent-value))))
                _%keys192636%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw192649%_)
                                                 (if (memq (car _%kw192649%_)
                                                           _%keys192636%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx192582%_
                                                        _%keys192636%_
                                                        _%kw192649%_))))
                                               _%kwargs192639%_)
                                              (let ((__tmp196114
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main192635%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs192638%_
                                  _%xargs192647%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp196114
                                                 _%stx192582%_
                                                 _%ctx192581%_)))
                                            (let* ((_%kwt192651%_
                                                    (let ((__tmp196115
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp196115)))
                                                   (_%kwvars192655%_
                                                    (map (lambda (_%_192653%_)
                                                           (let ((__tmp196116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp196116)))
                 _%kwargs192639%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind192660%_
                                                    (map (lambda (_%kw192657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192658%_)
                   (cons (cons _%kwvar192658%_ '())
                         (cons (cdr _%kw192657%_) '())))
                 _%kwargs192639%_
                 _%kwvars192655%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset192665%_
                                                    (map (lambda (_%kw192662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192663%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt192651%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw192662%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar192663%_
                                                             '()))
                                                 '()))))))
                 _%kwargs192639%_
                 _%kwvars192655%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs192670%_
                                                    (map (lambda (_%kw192667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192668%_)
                   (cons (car _%kw192667%_)
                         (cons '%#ref (cons _%kwvar192668%_ '()))))
                 _%kwargs192639%_
                 _%kwvars192655%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs192678%_
                                                    (map (lambda (_%key192672%_)
                                                           (let ((_%$e192674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key192672%_ _%xkwargs192670%_))))
                     (if _%$e192674%_ _%$e192674%_ '(%#ref absent-value))))
                 _%keys192636%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp196117
                                                    (cons '%#let-values
                                                          (cons _%kwbind192660%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt192651%_ '())
                                                      (cons (let ((__tmp196118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs192639%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp196118 _%stx192582%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp196119
                                                             (cons (let ((__tmp196120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main192635%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt192651%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs192638%_
                                                       _%xargs192678%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp196120 _%stx192582%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp196119 _%kwset192665%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp196117
                                               _%stx192582%_
                                               _%ctx192581%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g192614192624%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e192619192684%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192614192624%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e192620192687%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192614192624%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e192621192690%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192614192624%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys192693%_ _%e192621192690%_)
                                   (_%e192622192695%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192614192624%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main192698%_ _%e192622192695%_))
                              (_%K192618192681%_
                               _%main192698%_
                               _%keys192693%_))
                            (_%else192616192632%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx192581%_ _%stx192582%_)))))
               (_%e192600192703%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192596192605%_ '1 '#f '#f)))
               (_%e192601192706%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192596192605%_ '2 '#f '#f)))
               (_%e192602192709%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192596192605%_ '3 '#f '#f)))
               (_%table192712%_ _%e192602192709%_)
               (_%e192603192714%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192596192605%_ '4 '#f '#f)))
               (_%dispatch192717%_ _%e192603192714%_))
          (_%K192599192700%_ _%dispatch192717%_ _%table192712%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx192192%_ _%args192193%_)
        (let _%lp192195%_ ((_%rest192197%_ _%args192193%_)
                           (_%pargs192198%_ '())
                           (_%kwargs192199%_ '()))
          (let* ((_%__stx195573195574%_ _%rest192197%_)
                 (_%g192205192257%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx195573195574%_)))))
            (let ((_%__kont195575195576%_
                   (lambda (_%L192436%_ _%L192437%_)
                     (_%lp192195%_
                      _%L192436%_
                      (cons _%L192437%_ _%pargs192198%_)
                      _%kwargs192199%_)))
                  (_%__kont195577195578%_
                   (lambda (_%L192382%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L192382%_ _%pargs192198%_))
                             (reverse _%kwargs192199%_))))
                  (_%__kont195579195580%_
                   (lambda (_%L192329%_ _%L192330%_ _%L192331%_)
                     (let ((_%kw192348%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L192331%_))))
                       (if (assq _%kw192348%_ _%kwargs192199%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx192192%_
                              _%kw192348%_))
                           (_%lp192195%_
                            _%L192329%_
                            _%pargs192198%_
                            (cons (cons _%kw192348%_ _%L192330%_)
                                  _%kwargs192199%_))))))
                  (_%__kont195581195582%_
                   (lambda (_%L192277%_ _%L192278%_)
                     (_%lp192195%_
                      _%L192277%_
                      (cons _%L192278%_ _%pargs192198%_)
                      _%kwargs192199%_)))
                  (_%__kont195583195584%_
                   (lambda ()
                     (values (reverse _%pargs192198%_)
                             (reverse _%kwargs192199%_)))))
              (let ((_%__match195680195681%_
                     (lambda (_%e192236192297%_
                              _%hd192237192300%_
                              _%tl192238192302%_
                              _%e192239192305%_
                              _%hd192240192308%_
                              _%tl192241192310%_
                              _%e192242192313%_
                              _%hd192243192316%_
                              _%tl192244192318%_
                              _%e192245192321%_
                              _%hd192246192324%_
                              _%tl192247192326%_)
                       (let ((_%L192329%_ _%tl192247192326%_)
                             (_%L192330%_ _%hd192246192324%_)
                             (_%L192331%_ _%hd192243192316%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L192331%_))
                             (_%__kont195579195580%_
                              _%L192329%_
                              _%L192330%_
                              _%L192331%_)
                             (_%__kont195581195582%_
                              _%tl192238192302%_
                              _%hd192237192300%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx195573195574%_))
                    (let ((_%e192209192401%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx195573195574%_))))
                      (let ((_%tl192211192406%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192209192401%_)))
                            (_%hd192210192404%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192209192401%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd192210192404%_))
                            (let ((_%e192212192409%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd192210192404%_))))
                              (let ((_%tl192214192414%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192212192409%_)))
                                    (_%hd192213192412%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192212192409%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd192213192412%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd192213192412%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl192214192414%_))
                                            (let ((_%e192215192417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl192214192414%_))))
                                              (let ((_%tl192217192422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192215192417%_)))
                                                    (_%hd192216192420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192215192417%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd192216192420%_))
                                                    (let ((_%e192218192425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd192216192420%_))))
                                                      (if (equal? _%e192218192425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192217192422%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192211192406%_))
                          (let ((_%e192219192428%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192211192406%_))))
                            (let ((_%tl192221192433%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192219192428%_)))
                                  (_%hd192220192431%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192219192428%_))))
                              (_%__kont195575195576%_
                               _%tl192221192433%_
                               _%hd192220192431%_)))
                          (_%__kont195581195582%_
                           _%tl192211192406%_
                           _%hd192210192404%_))
                      (_%__kont195581195582%_
                       _%tl192211192406%_
                       _%hd192210192404%_))
                  (if (equal? _%e192218192425%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192217192422%_))
                          (_%__kont195577195578%_ _%tl192211192406%_)
                          (_%__kont195581195582%_
                           _%tl192211192406%_
                           _%hd192210192404%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192217192422%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192211192406%_))
                              (let ((_%e192245192321%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192211192406%_))))
                                (let ((_%tl192247192326%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192245192321%_)))
                                      (_%hd192246192324%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192245192321%_))))
                                  (_%__match195680195681%_
                                   _%e192209192401%_
                                   _%hd192210192404%_
                                   _%tl192211192406%_
                                   _%e192212192409%_
                                   _%hd192213192412%_
                                   _%tl192214192414%_
                                   _%e192215192417%_
                                   _%hd192216192420%_
                                   _%tl192217192422%_
                                   _%e192245192321%_
                                   _%hd192246192324%_
                                   _%tl192247192326%_)))
                              (_%__kont195581195582%_
                               _%tl192211192406%_
                               _%hd192210192404%_))
                          (_%__kont195581195582%_
                           _%tl192211192406%_
                           _%hd192210192404%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192217192422%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl192211192406%_))
                                                            (let ((_%e192245192321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl192211192406%_))))
                      (let ((_%tl192247192326%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192245192321%_)))
                            (_%hd192246192324%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192245192321%_))))
                        (_%__match195680195681%_
                         _%e192209192401%_
                         _%hd192210192404%_
                         _%tl192211192406%_
                         _%e192212192409%_
                         _%hd192213192412%_
                         _%tl192214192414%_
                         _%e192215192417%_
                         _%hd192216192420%_
                         _%tl192217192422%_
                         _%e192245192321%_
                         _%hd192246192324%_
                         _%tl192247192326%_)))
                    (_%__kont195581195582%_
                     _%tl192211192406%_
                     _%hd192210192404%_))
                (_%__kont195581195582%_
                 _%tl192211192406%_
                 _%hd192210192404%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont195581195582%_
                                             _%tl192211192406%_
                                             _%hd192210192404%_))
                                        (_%__kont195581195582%_
                                         _%tl192211192406%_
                                         _%hd192210192404%_))
                                    (_%__kont195581195582%_
                                     _%tl192211192406%_
                                     _%hd192210192404%_))))
                            (_%__kont195581195582%_
                             _%tl192211192406%_
                             _%hd192210192404%_))))
                    (_%__kont195583195584%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self191264192174%_ _%ctx192176%_ _%stx192177%_ _%args192178%_)
        (let* ((_%self192180%_ _%self191264192174%_)
               (_%self192182%_ _%self192180%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx192176%_ _%stx192177%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self191862%_ _%stx191863%_)
        (let* ((_%__stx195689195690%_ _%stx191863%_)
               (_%g191866191906%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195689195690%_)))))
          (let ((_%__kont195691195692%_
                 (lambda (_%L192012%_ _%L192013%_)
                   (let ((_%$e192040%_
                          (member 'return:
                                  (let ((__tmp196121
                                         (lambda (_%g192032192035%_
                                                  _%g192033192037%_)
                                           (cons _%g192032192035%_
                                                 _%g192033192037%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp196121 '() _%L192013%_))
                                  gx#stx-eq?)))
                     (if _%$e192040%_
                         ((lambda (_%tail192043%_)
                            (let ((_%type192045%_
                                   (let ((__tmp196122
                                          (let ((__tmp196123
                                                 (cadr _%tail192043%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp196123))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx191863%_
                                      __tmp196122))))
                              (gxc#check-return-type!
                               _%stx191863%_
                               _%L192012%_
                               _%type192045%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self191862%_
                                 _%L192012%_))))
                          _%$e192040%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self191862%_ _%L192012%_))))))
                (_%__kont195695195696%_
                 (lambda (_%L191935%_ _%L191936%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self191862%_ _%L191935%_)))))
            (let ((_%__match195726195727%_
                   (lambda (_%e191870191956%_
                            _%hd191871191959%_
                            _%tl191872191961%_
                            _%e191873191964%_
                            _%hd191874191967%_
                            _%tl191875191969%_
                            _%e191876191972%_
                            _%hd191877191975%_
                            _%tl191878191977%_
                            _%__splice195693195694%_
                            _%target191879191980%_
                            _%tl191881191982%_)
                     (letrec ((_%loop191882191985%_
                               (lambda (_%hd191880191988%_
                                        _%signature191886191990%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd191880191988%_))
                                     (let ((_%e191883191993%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd191880191988%_))))
                                       (let ((_%lp-tl191885191998%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e191883191993%_)))
                                             (_%lp-hd191884191996%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e191883191993%_))))
                                         (_%loop191882191985%_
                                          _%lp-tl191885191998%_
                                          (cons _%lp-hd191884191996%_
                                                _%signature191886191990%_))))
                                     (let ((_%signature191887192001%_
                                            (reverse _%signature191886191990%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl191875191969%_))
                                           (let ((_%e191888192004%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl191875191969%_))))
                                             (let ((_%tl191890192009%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e191888192004%_)))
                                                   (_%hd191889192007%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e191888192004%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl191890192009%_))
                                                   (_%__kont195691195692%_
                                                    _%hd191889192007%_
                                                    _%signature191887192001%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g191866191906%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g191866191906%_))))))))
                       (_%loop191882191985%_ _%target191879191980%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195689195690%_))
                  (let ((_%e191870191956%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195689195690%_))))
                    (let ((_%tl191872191961%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191870191956%_)))
                          (_%hd191871191959%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191870191956%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191872191961%_))
                          (let ((_%e191873191964%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191872191961%_))))
                            (let ((_%tl191875191969%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191873191964%_)))
                                  (_%hd191874191967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191873191964%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191874191967%_))
                                  (let ((_%e191876191972%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191874191967%_))))
                                    (let ((_%tl191878191977%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191876191972%_)))
                                          (_%hd191877191975%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191876191972%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191877191975%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd191877191975%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl191878191977%_))
                                                  (let ((_%__splice195693195694%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl191878191977%_
                                                            '0))))
                                                    (let ((_%tl191881191982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195693195694%_
                                                              '1)))
                                                          (_%target191879191980%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195693195694%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191881191982%_))
                                                          (_%__match195726195727%_
                                                           _%e191870191956%_
                                                           _%hd191871191959%_
                                                           _%tl191872191961%_
                                                           _%e191873191964%_
                                                           _%hd191874191967%_
                                                           _%tl191875191969%_
                                                           _%e191876191972%_
                                                           _%hd191877191975%_
                                                           _%tl191878191977%_
                                                           _%__splice195693195694%_
                                                           _%target191879191980%_
                                                           _%tl191881191982%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191875191969%_))
                      (let ((_%e191899191927%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191875191969%_))))
                        (let ((_%tl191901191932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191899191927%_)))
                              (_%hd191900191930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191899191927%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191901191932%_))
                              (_%__kont195695195696%_
                               _%hd191900191930%_
                               _%hd191874191967%_)
                              (let ()
                                (declare (not safe))
                                (_%g191866191906%_)))))
                      (let () (declare (not safe)) (_%g191866191906%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191875191969%_))
                                                      (let ((_%e191899191927%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191875191969%_))))
                (let ((_%tl191901191932%_
                       (let () (declare (not safe)) (##cdr _%e191899191927%_)))
                      (_%hd191900191930%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191899191927%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191901191932%_))
                      (_%__kont195695195696%_
                       _%hd191900191930%_
                       _%hd191874191967%_)
                      (let () (declare (not safe)) (_%g191866191906%_)))))
              (let () (declare (not safe)) (_%g191866191906%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191875191969%_))
                                                  (let ((_%e191899191927%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191875191969%_))))
                                                    (let ((_%tl191901191932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191899191927%_)))
                                                          (_%hd191900191930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191899191927%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191901191932%_))
                                                          (_%__kont195695195696%_
                                                           _%hd191900191930%_
                                                           _%hd191874191967%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191866191906%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191866191906%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191875191969%_))
                                              (let ((_%e191899191927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191875191969%_))))
                                                (let ((_%tl191901191932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191899191927%_)))
                                                      (_%hd191900191930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191899191927%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191901191932%_))
                                                      (_%__kont195695195696%_
                                                       _%hd191900191930%_
                                                       _%hd191874191967%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191866191906%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191866191906%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191875191969%_))
                                      (let ((_%e191899191927%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191875191969%_))))
                                        (let ((_%tl191901191932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191899191927%_)))
                                              (_%hd191900191930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191899191927%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191901191932%_))
                                              (_%__kont195695195696%_
                                               _%hd191900191930%_
                                               _%hd191874191967%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g191866191906%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191866191906%_))))))
                          (let () (declare (not safe)) (_%g191866191906%_)))))
                  (let () (declare (not safe)) (_%g191866191906%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx191840%_ _%expr191841%_ _%type191842%_)
        (let ((_%$e191844%_ (not _%type191842%_)))
          (if _%$e191844%_
              _%$e191844%_
              (let ((_%$e191847%_
                     (eq? (##structure-ref _%type191842%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e191847%_
                    _%$e191847%_
                    (let ((_%expr-type191851%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr191841%_))))
                      (if (not _%expr-type191851%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx191840%_
                             _%type191842%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type191851%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx191840%_
                                 _%type191842%_
                                 _%expr-type191851%_))
                              (let ((_%$e191855%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type191851%_
                                        'gxc#!abort::t))))
                                (if _%$e191855%_
                                    _%$e191855%_
                                    (let ((_%$e191858%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type191851%_
                                              _%type191842%_))))
                                      (if _%$e191858%_
                                          _%$e191858%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx191840%_
                                             _%type191842%_
                                             _%expr-type191851%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self191266%_ _%stx191267%_)
        (let* ((_%__stx195771195772%_ _%stx191267%_)
               (_%g191272191382%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195771195772%_)))))
          (let ((_%__kont195773195774%_
                 (lambda (_%L191814%_ _%L191815%_ _%L191816%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L191816%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self191266%_ _%L191815%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self191266%_ _%L191814%_)))))
                (_%__kont195775195776%_
                 (lambda (_%L191640%_ _%L191641%_ _%L191642%_ _%L191643%_)
                   (let ((_%$e191675%_
                          (let ((__tmp196124
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L191643%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp196124))))
                     (if _%$e191675%_
                         ((lambda (_%pred-type191678%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type191678%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type191678%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test191683%_
                                        (let ((__tmp196125
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L191643%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L191642%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp196125
                                           _%stx191267%_
                                           _%self191266%_)))
                                       (_%K191687%_
                                        (let ((__tmp196126
                                               (lambda ()
                                                 (let ((__tmp196129
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self191266%_
                                                             _%L191641%_))))
                                                       (__tmp196127
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L191642%_))
                            (let ((__tmp196128
                                   (##structure-ref
                                    _%pred-type191678%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx191267%_
                               __tmp196128)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp196129
                                                    gxc#current-compile-path-type
                                                    __tmp196127)))))
                                          (declare (not safe))
                                          (__make-promise __tmp196126)))
                                       (_%E191690%_
                                        (let ((__tmp196130
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self191266%_
                                                    _%L191640%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp196130)))
                                       (_%__stx195749195750%_ _%test191683%_)
                                       (_%g191694191708%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx195749195750%_)))))
                                  (let ((_%__kont195751195752%_
                                         (lambda (_%L191736%_ _%L191737%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L191736%_))
                                               (force _%K191687%_)
                                               (force _%E191690%_))))
                                        (_%__kont195753195754%_
                                         (lambda ()
                                           (let ((__tmp196131
                                                  (cons '%#if
                                                        (cons _%test191683%_
                                                              (cons (force _%K191687%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E191690%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp196131
                                              _%stx191267%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx195749195750%_))
                                        (let ((_%e191698191720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx195749195750%_))))
                                          (let ((_%tl191700191725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e191698191720%_)))
                                                (_%hd191699191723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e191698191720%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191700191725%_))
                                                (let ((_%e191701191728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191700191725%_))))
                                                  (let ((_%tl191703191733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191701191728%_)))
                                                        (_%hd191702191731%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191701191728%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191703191733%_))
                                                        (_%__kont195751195752%_
                                                         _%hd191702191731%_
                                                         _%hd191699191723%_)
                                                        (_%__kont195753195754%_))))
                                                (_%__kont195753195754%_))))
                                        (_%__kont195753195754%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self191266%_
                                   _%stx191267%_))))
                          _%$e191675%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self191266%_
                            _%stx191267%_))))))
                (_%__kont195777195778%_
                 (lambda (_%L191516%_ _%L191517%_ _%L191518%_ _%L191519%_)
                   (gxc#optimize-if%
                    _%self191266%_
                    (let ((__tmp196132
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L191518%_
                                       (cons _%L191516%_
                                             (cons _%L191517%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp196132 _%stx191267%_)))))
                (_%__kont195779195780%_
                 (lambda (_%L191419%_ _%L191420%_ _%L191421%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self191266%_ _%stx191267%_)))))
            (let ((_%__match195978195979%_
                   (lambda (_%e191336191444%_
                            _%hd191337191447%_
                            _%tl191338191449%_
                            _%e191339191452%_
                            _%hd191340191455%_
                            _%tl191341191457%_
                            _%e191342191460%_
                            _%hd191343191463%_
                            _%tl191344191465%_
                            _%e191345191468%_
                            _%hd191346191471%_
                            _%tl191347191473%_
                            _%e191348191476%_
                            _%hd191349191479%_
                            _%tl191350191481%_
                            _%e191351191484%_
                            _%hd191352191487%_
                            _%tl191353191489%_
                            _%e191354191492%_
                            _%hd191355191495%_
                            _%tl191356191497%_
                            _%e191357191500%_
                            _%hd191358191503%_
                            _%tl191359191505%_
                            _%e191360191508%_
                            _%hd191361191511%_
                            _%tl191362191513%_)
                     (let ((_%L191516%_ _%hd191361191511%_)
                           (_%L191517%_ _%hd191358191503%_)
                           (_%L191518%_ _%hd191355191495%_)
                           (_%L191519%_ _%hd191352191487%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L191519%_ 'not))
                           (_%__kont195777195778%_
                            _%L191516%_
                            _%L191517%_
                            _%L191518%_
                            _%L191519%_)
                           (_%__kont195779195780%_
                            _%hd191361191511%_
                            _%hd191358191503%_
                            _%hd191340191455%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195771195772%_))
                  (let ((_%e191277191766%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195771195772%_))))
                    (let ((_%tl191279191771%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191277191766%_)))
                          (_%hd191278191769%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191277191766%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191279191771%_))
                          (let ((_%e191280191774%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191279191771%_))))
                            (let ((_%tl191282191779%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191280191774%_)))
                                  (_%hd191281191777%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191280191774%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191281191777%_))
                                  (let ((_%e191283191782%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191281191777%_))))
                                    (let ((_%tl191285191787%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191283191782%_)))
                                          (_%hd191284191785%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191283191782%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191284191785%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd191284191785%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191285191787%_))
                                                  (let ((_%e191286191790%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191285191787%_))))
                                                    (let ((_%tl191288191795%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191286191790%_)))
                                                          (_%hd191287191793%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191286191790%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191288191795%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191282191779%_))
                      (let ((_%e191289191798%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191282191779%_))))
                        (let ((_%tl191291191803%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191289191798%_)))
                              (_%hd191290191801%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191289191798%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191291191803%_))
                              (let ((_%e191292191806%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191291191803%_))))
                                (let ((_%tl191294191811%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191292191806%_)))
                                      (_%hd191293191809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191292191806%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191294191811%_))
                                      (_%__kont195773195774%_
                                       _%hd191293191809%_
                                       _%hd191290191801%_
                                       _%hd191287191793%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g191272191382%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g191272191382%_)))))
                      (let () (declare (not safe)) (_%g191272191382%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191282191779%_))
                      (let ((_%e191372191403%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191282191779%_))))
                        (let ((_%tl191374191408%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191372191403%_)))
                              (_%hd191373191406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191372191403%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191374191408%_))
                              (let ((_%e191375191411%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191374191408%_))))
                                (let ((_%tl191377191416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191375191411%_)))
                                      (_%hd191376191414%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191375191411%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191377191416%_))
                                      (_%__kont195779195780%_
                                       _%hd191376191414%_
                                       _%hd191373191406%_
                                       _%hd191281191777%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g191272191382%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g191272191382%_)))))
                      (let () (declare (not safe)) (_%g191272191382%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191282191779%_))
                                                      (let ((_%e191372191403%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191282191779%_))))
                (let ((_%tl191374191408%_
                       (let () (declare (not safe)) (##cdr _%e191372191403%_)))
                      (_%hd191373191406%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191372191403%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191374191408%_))
                      (let ((_%e191375191411%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191374191408%_))))
                        (let ((_%tl191377191416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191375191411%_)))
                              (_%hd191376191414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191375191411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191377191416%_))
                              (_%__kont195779195780%_
                               _%hd191376191414%_
                               _%hd191373191406%_
                               _%hd191281191777%_)
                              (let ()
                                (declare (not safe))
                                (_%g191272191382%_)))))
                      (let () (declare (not safe)) (_%g191272191382%_)))))
              (let () (declare (not safe)) (_%g191272191382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd191284191785%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191285191787%_))
                                                      (let ((_%e191308191576%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191285191787%_))))
                (let ((_%tl191310191581%_
                       (let () (declare (not safe)) (##cdr _%e191308191576%_)))
                      (_%hd191309191579%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191308191576%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd191309191579%_))
                      (let ((_%e191311191584%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd191309191579%_))))
                        (let ((_%tl191313191589%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191311191584%_)))
                              (_%hd191312191587%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191311191584%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd191312191587%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd191312191587%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191313191589%_))
                                      (let ((_%e191314191592%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191313191589%_))))
                                        (let ((_%tl191316191597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191314191592%_)))
                                              (_%hd191315191595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191314191592%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191316191597%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191310191581%_))
                                                  (let ((_%e191317191600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191310191581%_))))
                                                    (let ((_%tl191319191605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191317191600%_)))
                                                          (_%hd191318191603%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191317191600%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd191318191603%_))
                                                          (let ((_%e191320191608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd191318191603%_))))
                    (let ((_%tl191322191613%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191320191608%_)))
                          (_%hd191321191611%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191320191608%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd191321191611%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd191321191611%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191322191613%_))
                                  (let ((_%e191323191616%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191322191613%_))))
                                    (let ((_%tl191325191621%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191323191616%_)))
                                          (_%hd191324191619%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191323191616%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191325191621%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191319191605%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191282191779%_))
                                                  (let ((_%e191326191624%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191282191779%_))))
                                                    (let ((_%tl191328191629%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191326191624%_)))
                                                          (_%hd191327191627%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191326191624%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191328191629%_))
                                                          (let ((_%e191329191632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191328191629%_))))
                    (let ((_%tl191331191637%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191329191632%_)))
                          (_%hd191330191635%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191329191632%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191331191637%_))
                          (_%__kont195775195776%_
                           _%hd191330191635%_
                           _%hd191327191627%_
                           _%hd191324191619%_
                           _%hd191315191595%_)
                          (let () (declare (not safe)) (_%g191272191382%_)))))
                  (let () (declare (not safe)) (_%g191272191382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191272191382%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191282191779%_))
                                                  (let ((_%e191372191403%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191282191779%_))))
                                                    (let ((_%tl191374191408%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191372191403%_)))
                                                          (_%hd191373191406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191372191403%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191374191408%_))
                                                          (let ((_%e191375191411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191374191408%_))))
                    (let ((_%tl191377191416%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191375191411%_)))
                          (_%hd191376191414%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191375191411%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191377191416%_))
                          (_%__kont195779195780%_
                           _%hd191376191414%_
                           _%hd191373191406%_
                           _%hd191281191777%_)
                          (let () (declare (not safe)) (_%g191272191382%_)))))
                  (let () (declare (not safe)) (_%g191272191382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191272191382%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191319191605%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191282191779%_))
                                                  (let ((_%e191357191500%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191282191779%_))))
                                                    (let ((_%tl191359191505%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191357191500%_)))
                                                          (_%hd191358191503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191357191500%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191359191505%_))
                                                          (let ((_%e191360191508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191359191505%_))))
                    (let ((_%tl191362191513%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191360191508%_)))
                          (_%hd191361191511%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191360191508%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191362191513%_))
                          (_%__match195978195979%_
                           _%e191277191766%_
                           _%hd191278191769%_
                           _%tl191279191771%_
                           _%e191280191774%_
                           _%hd191281191777%_
                           _%tl191282191779%_
                           _%e191283191782%_
                           _%hd191284191785%_
                           _%tl191285191787%_
                           _%e191308191576%_
                           _%hd191309191579%_
                           _%tl191310191581%_
                           _%e191311191584%_
                           _%hd191312191587%_
                           _%tl191313191589%_
                           _%e191314191592%_
                           _%hd191315191595%_
                           _%tl191316191597%_
                           _%e191317191600%_
                           _%hd191318191603%_
                           _%tl191319191605%_
                           _%e191357191500%_
                           _%hd191358191503%_
                           _%tl191359191505%_
                           _%e191360191508%_
                           _%hd191361191511%_
                           _%tl191362191513%_)
                          (let () (declare (not safe)) (_%g191272191382%_)))))
                  (let () (declare (not safe)) (_%g191272191382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191272191382%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191282191779%_))
                                                  (let ((_%e191372191403%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191282191779%_))))
                                                    (let ((_%tl191374191408%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191372191403%_)))
                                                          (_%hd191373191406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191372191403%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191374191408%_))
                                                          (let ((_%e191375191411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191374191408%_))))
                    (let ((_%tl191377191416%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191375191411%_)))
                          (_%hd191376191414%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191375191411%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191377191416%_))
                          (_%__kont195779195780%_
                           _%hd191376191414%_
                           _%hd191373191406%_
                           _%hd191281191777%_)
                          (let () (declare (not safe)) (_%g191272191382%_)))))
                  (let () (declare (not safe)) (_%g191272191382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191272191382%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191319191605%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191282191779%_))
                                          (let ((_%e191357191500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191282191779%_))))
                                            (let ((_%tl191359191505%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191357191500%_)))
                                                  (_%hd191358191503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191357191500%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191359191505%_))
                                                  (let ((_%e191360191508%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191359191505%_))))
                                                    (let ((_%tl191362191513%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191360191508%_)))
                                                          (_%hd191361191511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191360191508%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191362191513%_))
                                                          (_%__match195978195979%_
                                                           _%e191277191766%_
                                                           _%hd191278191769%_
                                                           _%tl191279191771%_
                                                           _%e191280191774%_
                                                           _%hd191281191777%_
                                                           _%tl191282191779%_
                                                           _%e191283191782%_
                                                           _%hd191284191785%_
                                                           _%tl191285191787%_
                                                           _%e191308191576%_
                                                           _%hd191309191579%_
                                                           _%tl191310191581%_
                                                           _%e191311191584%_
                                                           _%hd191312191587%_
                                                           _%tl191313191589%_
                                                           _%e191314191592%_
                                                           _%hd191315191595%_
                                                           _%tl191316191597%_
                                                           _%e191317191600%_
                                                           _%hd191318191603%_
                                                           _%tl191319191605%_
                                                           _%e191357191500%_
                                                           _%hd191358191503%_
                                                           _%tl191359191505%_
                                                           _%e191360191508%_
                                                           _%hd191361191511%_
                                                           _%tl191362191513%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191272191382%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191272191382%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191272191382%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191282191779%_))
                                          (let ((_%e191372191403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191282191779%_))))
                                            (let ((_%tl191374191408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191372191403%_)))
                                                  (_%hd191373191406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191372191403%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191374191408%_))
                                                  (let ((_%e191375191411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191374191408%_))))
                                                    (let ((_%tl191377191416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191375191411%_)))
                                                          (_%hd191376191414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191375191411%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191377191416%_))
                                                          (_%__kont195779195780%_
                                                           _%hd191376191414%_
                                                           _%hd191373191406%_
                                                           _%hd191281191777%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191272191382%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191272191382%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191272191382%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl191319191605%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191282191779%_))
                                      (let ((_%e191357191500%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191282191779%_))))
                                        (let ((_%tl191359191505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191357191500%_)))
                                              (_%hd191358191503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191357191500%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191359191505%_))
                                              (let ((_%e191360191508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191359191505%_))))
                                                (let ((_%tl191362191513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191360191508%_)))
                                                      (_%hd191361191511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191360191508%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191362191513%_))
                                                      (_%__match195978195979%_
                                                       _%e191277191766%_
                                                       _%hd191278191769%_
                                                       _%tl191279191771%_
                                                       _%e191280191774%_
                                                       _%hd191281191777%_
                                                       _%tl191282191779%_
                                                       _%e191283191782%_
                                                       _%hd191284191785%_
                                                       _%tl191285191787%_
                                                       _%e191308191576%_
                                                       _%hd191309191579%_
                                                       _%tl191310191581%_
                                                       _%e191311191584%_
                                                       _%hd191312191587%_
                                                       _%tl191313191589%_
                                                       _%e191314191592%_
                                                       _%hd191315191595%_
                                                       _%tl191316191597%_
                                                       _%e191317191600%_
                                                       _%hd191318191603%_
                                                       _%tl191319191605%_
                                                       _%e191357191500%_
                                                       _%hd191358191503%_
                                                       _%tl191359191505%_
                                                       _%e191360191508%_
                                                       _%hd191361191511%_
                                                       _%tl191362191513%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191272191382%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191272191382%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191272191382%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191282191779%_))
                                      (let ((_%e191372191403%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191282191779%_))))
                                        (let ((_%tl191374191408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191372191403%_)))
                                              (_%hd191373191406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191372191403%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191374191408%_))
                                              (let ((_%e191375191411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191374191408%_))))
                                                (let ((_%tl191377191416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191375191411%_)))
                                                      (_%hd191376191414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191375191411%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191377191416%_))
                                                      (_%__kont195779195780%_
                                                       _%hd191376191414%_
                                                       _%hd191373191406%_
                                                       _%hd191281191777%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191272191382%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191272191382%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191272191382%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191319191605%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191282191779%_))
                                  (let ((_%e191357191500%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191282191779%_))))
                                    (let ((_%tl191359191505%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191357191500%_)))
                                          (_%hd191358191503%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191357191500%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191359191505%_))
                                          (let ((_%e191360191508%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191359191505%_))))
                                            (let ((_%tl191362191513%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191360191508%_)))
                                                  (_%hd191361191511%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191360191508%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191362191513%_))
                                                  (_%__match195978195979%_
                                                   _%e191277191766%_
                                                   _%hd191278191769%_
                                                   _%tl191279191771%_
                                                   _%e191280191774%_
                                                   _%hd191281191777%_
                                                   _%tl191282191779%_
                                                   _%e191283191782%_
                                                   _%hd191284191785%_
                                                   _%tl191285191787%_
                                                   _%e191308191576%_
                                                   _%hd191309191579%_
                                                   _%tl191310191581%_
                                                   _%e191311191584%_
                                                   _%hd191312191587%_
                                                   _%tl191313191589%_
                                                   _%e191314191592%_
                                                   _%hd191315191595%_
                                                   _%tl191316191597%_
                                                   _%e191317191600%_
                                                   _%hd191318191603%_
                                                   _%tl191319191605%_
                                                   _%e191357191500%_
                                                   _%hd191358191503%_
                                                   _%tl191359191505%_
                                                   _%e191360191508%_
                                                   _%hd191361191511%_
                                                   _%tl191362191513%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191272191382%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191272191382%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191272191382%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191282191779%_))
                                  (let ((_%e191372191403%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191282191779%_))))
                                    (let ((_%tl191374191408%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191372191403%_)))
                                          (_%hd191373191406%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191372191403%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191374191408%_))
                                          (let ((_%e191375191411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191374191408%_))))
                                            (let ((_%tl191377191416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191375191411%_)))
                                                  (_%hd191376191414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191375191411%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191377191416%_))
                                                  (_%__kont195779195780%_
                                                   _%hd191376191414%_
                                                   _%hd191373191406%_
                                                   _%hd191281191777%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191272191382%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191272191382%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191272191382%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191319191605%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191282191779%_))
                          (let ((_%e191357191500%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191282191779%_))))
                            (let ((_%tl191359191505%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191357191500%_)))
                                  (_%hd191358191503%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191357191500%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191359191505%_))
                                  (let ((_%e191360191508%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191359191505%_))))
                                    (let ((_%tl191362191513%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191360191508%_)))
                                          (_%hd191361191511%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191360191508%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191362191513%_))
                                          (_%__match195978195979%_
                                           _%e191277191766%_
                                           _%hd191278191769%_
                                           _%tl191279191771%_
                                           _%e191280191774%_
                                           _%hd191281191777%_
                                           _%tl191282191779%_
                                           _%e191283191782%_
                                           _%hd191284191785%_
                                           _%tl191285191787%_
                                           _%e191308191576%_
                                           _%hd191309191579%_
                                           _%tl191310191581%_
                                           _%e191311191584%_
                                           _%hd191312191587%_
                                           _%tl191313191589%_
                                           _%e191314191592%_
                                           _%hd191315191595%_
                                           _%tl191316191597%_
                                           _%e191317191600%_
                                           _%hd191318191603%_
                                           _%tl191319191605%_
                                           _%e191357191500%_
                                           _%hd191358191503%_
                                           _%tl191359191505%_
                                           _%e191360191508%_
                                           _%hd191361191511%_
                                           _%tl191362191513%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g191272191382%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191272191382%_)))))
                          (let () (declare (not safe)) (_%g191272191382%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191282191779%_))
                          (let ((_%e191372191403%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191282191779%_))))
                            (let ((_%tl191374191408%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191372191403%_)))
                                  (_%hd191373191406%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191372191403%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191374191408%_))
                                  (let ((_%e191375191411%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191374191408%_))))
                                    (let ((_%tl191377191416%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191375191411%_)))
                                          (_%hd191376191414%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191375191411%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191377191416%_))
                                          (_%__kont195779195780%_
                                           _%hd191376191414%_
                                           _%hd191373191406%_
                                           _%hd191281191777%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g191272191382%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191272191382%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g191272191382%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191282191779%_))
                                                      (let ((_%e191372191403%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191282191779%_))))
                (let ((_%tl191374191408%_
                       (let () (declare (not safe)) (##cdr _%e191372191403%_)))
                      (_%hd191373191406%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191372191403%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191374191408%_))
                      (let ((_%e191375191411%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191374191408%_))))
                        (let ((_%tl191377191416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191375191411%_)))
                              (_%hd191376191414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191375191411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191377191416%_))
                              (_%__kont195779195780%_
                               _%hd191376191414%_
                               _%hd191373191406%_
                               _%hd191281191777%_)
                              (let ()
                                (declare (not safe))
                                (_%g191272191382%_)))))
                      (let () (declare (not safe)) (_%g191272191382%_)))))
              (let () (declare (not safe)) (_%g191272191382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191282191779%_))
                                                  (let ((_%e191372191403%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191282191779%_))))
                                                    (let ((_%tl191374191408%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191372191403%_)))
                                                          (_%hd191373191406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191372191403%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191374191408%_))
                                                          (let ((_%e191375191411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191374191408%_))))
                    (let ((_%tl191377191416%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191375191411%_)))
                          (_%hd191376191414%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191375191411%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191377191416%_))
                          (_%__kont195779195780%_
                           _%hd191376191414%_
                           _%hd191373191406%_
                           _%hd191281191777%_)
                          (let () (declare (not safe)) (_%g191272191382%_)))))
                  (let () (declare (not safe)) (_%g191272191382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191272191382%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191282191779%_))
                                          (let ((_%e191372191403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191282191779%_))))
                                            (let ((_%tl191374191408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191372191403%_)))
                                                  (_%hd191373191406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191372191403%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191374191408%_))
                                                  (let ((_%e191375191411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191374191408%_))))
                                                    (let ((_%tl191377191416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191375191411%_)))
                                                          (_%hd191376191414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191375191411%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191377191416%_))
                                                          (_%__kont195779195780%_
                                                           _%hd191376191414%_
                                                           _%hd191373191406%_
                                                           _%hd191281191777%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191272191382%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191272191382%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191272191382%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191282191779%_))
                                      (let ((_%e191372191403%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191282191779%_))))
                                        (let ((_%tl191374191408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191372191403%_)))
                                              (_%hd191373191406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191372191403%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191374191408%_))
                                              (let ((_%e191375191411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191374191408%_))))
                                                (let ((_%tl191377191416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191375191411%_)))
                                                      (_%hd191376191414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191375191411%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191377191416%_))
                                                      (_%__kont195779195780%_
                                                       _%hd191376191414%_
                                                       _%hd191373191406%_
                                                       _%hd191281191777%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191272191382%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191272191382%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191272191382%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191282191779%_))
                                  (let ((_%e191372191403%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191282191779%_))))
                                    (let ((_%tl191374191408%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191372191403%_)))
                                          (_%hd191373191406%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191372191403%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191374191408%_))
                                          (let ((_%e191375191411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191374191408%_))))
                                            (let ((_%tl191377191416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191375191411%_)))
                                                  (_%hd191376191414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191375191411%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191377191416%_))
                                                  (_%__kont195779195780%_
                                                   _%hd191376191414%_
                                                   _%hd191373191406%_
                                                   _%hd191281191777%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191272191382%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191272191382%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191272191382%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191282191779%_))
                          (let ((_%e191372191403%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191282191779%_))))
                            (let ((_%tl191374191408%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191372191403%_)))
                                  (_%hd191373191406%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191372191403%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191374191408%_))
                                  (let ((_%e191375191411%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191374191408%_))))
                                    (let ((_%tl191377191416%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191375191411%_)))
                                          (_%hd191376191414%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191375191411%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191377191416%_))
                                          (_%__kont195779195780%_
                                           _%hd191376191414%_
                                           _%hd191373191406%_
                                           _%hd191281191777%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g191272191382%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191272191382%_)))))
                          (let () (declare (not safe)) (_%g191272191382%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl191282191779%_))
                  (let ((_%e191372191403%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191282191779%_))))
                    (let ((_%tl191374191408%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191372191403%_)))
                          (_%hd191373191406%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191372191403%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191374191408%_))
                          (let ((_%e191375191411%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191374191408%_))))
                            (let ((_%tl191377191416%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191375191411%_)))
                                  (_%hd191376191414%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191375191411%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl191377191416%_))
                                  (_%__kont195779195780%_
                                   _%hd191376191414%_
                                   _%hd191373191406%_
                                   _%hd191281191777%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g191272191382%_)))))
                          (let () (declare (not safe)) (_%g191272191382%_)))))
                  (let () (declare (not safe)) (_%g191272191382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191282191779%_))
                                                      (let ((_%e191372191403%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191282191779%_))))
                (let ((_%tl191374191408%_
                       (let () (declare (not safe)) (##cdr _%e191372191403%_)))
                      (_%hd191373191406%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191372191403%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191374191408%_))
                      (let ((_%e191375191411%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191374191408%_))))
                        (let ((_%tl191377191416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191375191411%_)))
                              (_%hd191376191414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191375191411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191377191416%_))
                              (_%__kont195779195780%_
                               _%hd191376191414%_
                               _%hd191373191406%_
                               _%hd191281191777%_)
                              (let ()
                                (declare (not safe))
                                (_%g191272191382%_)))))
                      (let () (declare (not safe)) (_%g191272191382%_)))))
              (let () (declare (not safe)) (_%g191272191382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191282191779%_))
                                              (let ((_%e191372191403%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191282191779%_))))
                                                (let ((_%tl191374191408%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191372191403%_)))
                                                      (_%hd191373191406%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191372191403%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191374191408%_))
                                                      (let ((_%e191375191411%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191374191408%_))))
                (let ((_%tl191377191416%_
                       (let () (declare (not safe)) (##cdr _%e191375191411%_)))
                      (_%hd191376191414%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191375191411%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191377191416%_))
                      (_%__kont195779195780%_
                       _%hd191376191414%_
                       _%hd191373191406%_
                       _%hd191281191777%_)
                      (let () (declare (not safe)) (_%g191272191382%_)))))
              (let () (declare (not safe)) (_%g191272191382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g191272191382%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191282191779%_))
                                      (let ((_%e191372191403%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191282191779%_))))
                                        (let ((_%tl191374191408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191372191403%_)))
                                              (_%hd191373191406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191372191403%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191374191408%_))
                                              (let ((_%e191375191411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191374191408%_))))
                                                (let ((_%tl191377191416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191375191411%_)))
                                                      (_%hd191376191414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191375191411%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191377191416%_))
                                                      (_%__kont195779195780%_
                                                       _%hd191376191414%_
                                                       _%hd191373191406%_
                                                       _%hd191281191777%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191272191382%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191272191382%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191272191382%_))))))
                          (let () (declare (not safe)) (_%g191272191382%_)))))
                  (let () (declare (not safe)) (_%g191272191382%_))))))))))
