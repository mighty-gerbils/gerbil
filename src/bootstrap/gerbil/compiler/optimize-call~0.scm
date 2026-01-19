(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1768865830)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp209327 (list gxc#::basic-xform::t))
            (__tmp209326 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp209327
         '()
         __tmp209326
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args208604%_
        (apply make-instance gxc#::optimize-call::t _%$args208604%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp209328
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
        (__make-atomic-promise __tmp209328)))
    (define gxc#apply-optimize-call
      (lambda (_%stx208596%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self208599%_
                (let ((__obj209318
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj209318))
               (__tmp209329
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208599%_ _%stx208596%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209329
           gxc#current-compile-method
           _%self208599%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp209331 (list gxc#::void::t))
            (__tmp209330 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp209331
         '()
         __tmp209330
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args208593%_
        (apply make-instance gxc#::check-return-type::t _%$args208593%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp209332
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
        (__make-atomic-promise __tmp209332)))
    (define gxc#apply-check-return-type
      (lambda (_%stx208585%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self208588%_
                (let ((__obj209320
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj209320))
               (__tmp209333
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208588%_ _%stx208585%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209333
           gxc#current-compile-method
           _%self208588%_))))
    (define gxc#optimize-call%
      (lambda (_%self208186%_ _%stx208187%_)
        (let* ((_%__stx208673208674%_ _%stx208187%_)
               (_%g208190208236%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208673208674%_)))))
          (let ((_%__kont208675208676%_
                 (lambda (_%L208379%_ _%L208380%_)
                   (let* ((_%rator-id208400%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L208380%_)))
                          (_%rator-type208402%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id208400%_))))
                     (if (or (not _%rator-type208402%_)
                             (eq? (##structure-ref
                                   _%rator-type208402%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self208186%_ _%stx208187%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type208402%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp209334
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type208402%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id208400%_
                                  '" => "
                                  _%rator-type208402%_
                                  '" "
                                  __tmp209334))
                               (let* ((_%optimized208417%_
                                       (let ((__method209321
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type208402%_
                                                 'optimize-call))))
                                         (if __method209321
                                             (let ((__tmp209335
                                                    (let ((__tmp209336
                                                           (lambda (_%g208409208412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g208410208414%_)
                     (cons _%g208409208412%_ _%g208410208414%_))))
              (declare (not safe))
              (__foldr1 __tmp209336 '() _%L208379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method209321
                                                _%rator-type208402%_
                                                _%self208186%_
                                                _%stx208187%_
                                                __tmp209335))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type208402%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx208621208622%_
                                       _%optimized208417%_)
                                      (_%g208420208449%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx208621208622%_)))))
                                 (let ((_%__kont208623208624%_
                                        (lambda (_%L208517%_ _%L208518%_)
                                          (let* ((_%optimized-rator-id208545%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L208518%_)))
                                                 (_%rator-type208550%_
                                                  (let ((_%$e208547%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id208545%_))))
                                                    (if _%$e208547%_
                                                        _%$e208547%_
                                                        _%rator-type208402%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type208550%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id208545%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type208550%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type208550%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized208417%_
                                                (let ((__tmp209337
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L208518%_ '()))
                           (let ((__tmp209338
                                  (lambda (_%g208558208561%_ _%g208559208563%_)
                                    (cons _%g208558208561%_
                                          _%g208559208563%_))))
                             (declare (not safe))
                             (__foldr1 __tmp209338 '() _%L208517%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp209337
                                                   _%stx208187%_))))))
                                       (_%__kont208627208628%_
                                        (lambda () _%optimized208417%_)))
                                   (let ((_%__match208670208671%_
                                          (lambda (_%e208424208461%_
                                                   _%hd208425208464%_
                                                   _%tl208426208466%_
                                                   _%e208427208469%_
                                                   _%hd208428208472%_
                                                   _%tl208429208474%_
                                                   _%e208430208477%_
                                                   _%hd208431208480%_
                                                   _%tl208432208482%_
                                                   _%e208433208485%_
                                                   _%hd208434208488%_
                                                   _%tl208435208490%_
                                                   _%__splice208625208626%_
                                                   _%target208436208493%_
                                                   _%tl208438208495%_)
                                            (letrec ((_%loop208439208498%_
                                                      (lambda (_%hd208437208501%_
                                                               _%arg208443208503%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd208437208501%_))
                                                            (let ((_%e208440208506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd208437208501%_))))
                      (let ((_%lp-tl208442208511%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208440208506%_)))
                            (_%lp-hd208441208509%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208440208506%_))))
                        (_%loop208439208498%_
                         _%lp-tl208442208511%_
                         (cons _%lp-hd208441208509%_ _%arg208443208503%_))))
                    (let ((_%arg208444208514%_ (reverse _%arg208443208503%_)))
                      (_%__kont208623208624%_
                       _%arg208444208514%_
                       _%hd208434208488%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop208439208498%_
                                               _%target208436208493%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx208621208622%_))
                                         (let ((_%e208424208461%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx208621208622%_))))
                                           (let ((_%tl208426208466%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208424208461%_)))
                                                 (_%hd208425208464%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208424208461%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd208425208464%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd208425208464%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl208426208466%_))
                                                         (let ((_%e208427208469%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl208426208466%_))))
                   (let ((_%tl208429208474%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e208427208469%_)))
                         (_%hd208428208472%_
                          (let ()
                            (declare (not safe))
                            (##car _%e208427208469%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd208428208472%_))
                         (let ((_%e208430208477%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd208428208472%_))))
                           (let ((_%tl208432208482%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e208430208477%_)))
                                 (_%hd208431208480%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e208430208477%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd208431208480%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd208431208480%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl208432208482%_))
                                         (let ((_%e208433208485%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl208432208482%_))))
                                           (let ((_%tl208435208490%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208433208485%_)))
                                                 (_%hd208434208488%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208433208485%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl208435208490%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl208429208474%_))
                                                     (let ((_%__splice208625208626%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl208429208474%_
                                                               '0))))
                                                       (let ((_%tl208438208495%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice208625208626%_ '1)))
                     (_%target208436208493%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice208625208626%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl208438208495%_))
                     (_%__match208670208671%_
                      _%e208424208461%_
                      _%hd208425208464%_
                      _%tl208426208466%_
                      _%e208427208469%_
                      _%hd208428208472%_
                      _%tl208429208474%_
                      _%e208430208477%_
                      _%hd208431208480%_
                      _%tl208432208482%_
                      _%e208433208485%_
                      _%hd208434208488%_
                      _%tl208435208490%_
                      _%__splice208625208626%_
                      _%target208436208493%_
                      _%tl208438208495%_)
                     (_%__kont208627208628%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont208627208628%_))
                                                 (_%__kont208627208628%_))))
                                         (_%__kont208627208628%_))
                                     (_%__kont208627208628%_))
                                 (_%__kont208627208628%_))))
                         (_%__kont208627208628%_))))
                 (_%__kont208627208628%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont208627208628%_))
                                                 (_%__kont208627208628%_))))
                                         (_%__kont208627208628%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type208402%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type208402%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp209339
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L208380%_
                                                                '()))
                                                    (map (lambda (_%g208569208571%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self208186%_
                                                              _%g208569208571%_)))
                                                         (let ((__tmp209340
                                                                (lambda (_%g208573208576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g208574208578%_)
                          (cons _%g208573208576%_ _%g208574208578%_))))
                   (declare (not safe))
                   (__foldr1 __tmp209340 '() _%L208379%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp209339
                                    _%stx208187%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx208187%_
                                    _%rator-type208402%_))))))))
                (_%__kont208679208680%_
                 (lambda (_%L208281%_ _%L208282%_)
                   (let ((_%rator-type208299%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L208282%_))))
                     (if (and _%rator-type208299%_
                              (eq? (##structure-ref
                                    _%rator-type208299%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type208299%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type208299%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type208299%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp209341
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self208186%_
                                               _%L208282%_))
                                            (map (lambda (_%g208301208303%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self208186%_
                                                      _%g208301208303%_)))
                                                 (let ((__tmp209342
                                                        (lambda (_%g208305208308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g208306208310%_)
                  (cons _%g208305208308%_ _%g208306208310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp209342
                                                    '()
                                                    _%L208281%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp209341 _%stx208187%_))
                         (if (or (not _%rator-type208299%_)
                                 (let ((__tmp209343
                                        (##structure-ref
                                         _%rator-type208299%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp209343 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self208186%_ _%stx208187%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx208187%_
                                _%rator-type208299%_))))))))
            (let* ((_%__match208740208741%_
                    (lambda (_%e208217208241%_
                             _%hd208218208244%_
                             _%tl208219208246%_
                             _%e208220208249%_
                             _%hd208221208252%_
                             _%tl208222208254%_
                             _%__splice208681208682%_
                             _%target208223208257%_
                             _%tl208225208259%_)
                      (letrec ((_%loop208226208262%_
                                (lambda (_%hd208224208265%_
                                         _%rand208230208267%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd208224208265%_))
                                      (let ((_%e208227208270%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd208224208265%_))))
                                        (let ((_%lp-tl208229208275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208227208270%_)))
                                              (_%lp-hd208228208273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208227208270%_))))
                                          (_%loop208226208262%_
                                           _%lp-tl208229208275%_
                                           (cons _%lp-hd208228208273%_
                                                 _%rand208230208267%_))))
                                      (let ((_%rand208231208278%_
                                             (reverse _%rand208230208267%_)))
                                        (_%__kont208679208680%_
                                         _%rand208231208278%_
                                         _%hd208221208252%_))))))
                        (_%loop208226208262%_ _%target208223208257%_ '()))))
                   (_%__match208720208721%_
                    (lambda (_%e208194208323%_
                             _%hd208195208326%_
                             _%tl208196208328%_
                             _%e208197208331%_
                             _%hd208198208334%_
                             _%tl208199208336%_
                             _%e208200208339%_
                             _%hd208201208342%_
                             _%tl208202208344%_
                             _%e208203208347%_
                             _%hd208204208350%_
                             _%tl208205208352%_
                             _%__splice208677208678%_
                             _%target208206208355%_
                             _%tl208208208357%_)
                      (letrec ((_%loop208209208360%_
                                (lambda (_%hd208207208363%_
                                         _%rand208213208365%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd208207208363%_))
                                      (let ((_%e208210208368%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd208207208363%_))))
                                        (let ((_%lp-tl208212208373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208210208368%_)))
                                              (_%lp-hd208211208371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208210208368%_))))
                                          (_%loop208209208360%_
                                           _%lp-tl208212208373%_
                                           (cons _%lp-hd208211208371%_
                                                 _%rand208213208365%_))))
                                      (let ((_%rand208214208376%_
                                             (reverse _%rand208213208365%_)))
                                        (_%__kont208675208676%_
                                         _%rand208214208376%_
                                         _%hd208204208350%_))))))
                        (_%loop208209208360%_ _%target208206208355%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208673208674%_))
                  (let ((_%e208194208323%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208673208674%_))))
                    (let ((_%tl208196208328%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208194208323%_)))
                          (_%hd208195208326%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208194208323%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl208196208328%_))
                          (let ((_%e208197208331%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl208196208328%_))))
                            (let ((_%tl208199208336%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208197208331%_)))
                                  (_%hd208198208334%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208197208331%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd208198208334%_))
                                  (let ((_%e208200208339%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd208198208334%_))))
                                    (let ((_%tl208202208344%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e208200208339%_)))
                                          (_%hd208201208342%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e208200208339%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd208201208342%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd208201208342%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208202208344%_))
                                                  (let ((_%e208203208347%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl208202208344%_))))
                                                    (let ((_%tl208205208352%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208203208347%_)))
                                                          (_%hd208204208350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208203208347%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208205208352%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl208199208336%_))
                      (let ((_%__splice208677208678%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl208199208336%_
                                '0))))
                        (let ((_%tl208208208357%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208677208678%_ '1)))
                              (_%target208206208355%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208677208678%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208208208357%_))
                              (_%__match208720208721%_
                               _%e208194208323%_
                               _%hd208195208326%_
                               _%tl208196208328%_
                               _%e208197208331%_
                               _%hd208198208334%_
                               _%tl208199208336%_
                               _%e208200208339%_
                               _%hd208201208342%_
                               _%tl208202208344%_
                               _%e208203208347%_
                               _%hd208204208350%_
                               _%tl208205208352%_
                               _%__splice208677208678%_
                               _%target208206208355%_
                               _%tl208208208357%_)
                              (let ()
                                (declare (not safe))
                                (_%g208190208236%_)))))
                      (let () (declare (not safe)) (_%g208190208236%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl208199208336%_))
                      (let ((_%__splice208681208682%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl208199208336%_
                                '0))))
                        (let ((_%tl208225208259%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208681208682%_ '1)))
                              (_%target208223208257%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208681208682%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208225208259%_))
                              (_%__match208740208741%_
                               _%e208194208323%_
                               _%hd208195208326%_
                               _%tl208196208328%_
                               _%e208197208331%_
                               _%hd208198208334%_
                               _%tl208199208336%_
                               _%__splice208681208682%_
                               _%target208223208257%_
                               _%tl208225208259%_)
                              (let ()
                                (declare (not safe))
                                (_%g208190208236%_)))))
                      (let () (declare (not safe)) (_%g208190208236%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl208199208336%_))
                                                      (let ((_%__splice208681208682%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl208199208336%_
                        '0))))
                (let ((_%tl208225208259%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208681208682%_ '1)))
                      (_%target208223208257%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208681208682%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl208225208259%_))
                      (_%__match208740208741%_
                       _%e208194208323%_
                       _%hd208195208326%_
                       _%tl208196208328%_
                       _%e208197208331%_
                       _%hd208198208334%_
                       _%tl208199208336%_
                       _%__splice208681208682%_
                       _%target208223208257%_
                       _%tl208225208259%_)
                      (let () (declare (not safe)) (_%g208190208236%_)))))
              (let () (declare (not safe)) (_%g208190208236%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl208199208336%_))
                                                  (let ((_%__splice208681208682%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl208199208336%_
                                                            '0))))
                                                    (let ((_%tl208225208259%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice208681208682%_
                                                              '1)))
                                                          (_%target208223208257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice208681208682%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208225208259%_))
                                                          (_%__match208740208741%_
                                                           _%e208194208323%_
                                                           _%hd208195208326%_
                                                           _%tl208196208328%_
                                                           _%e208197208331%_
                                                           _%hd208198208334%_
                                                           _%tl208199208336%_
                                                           _%__splice208681208682%_
                                                           _%target208223208257%_
                                                           _%tl208225208259%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g208190208236%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g208190208236%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl208199208336%_))
                                              (let ((_%__splice208681208682%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl208199208336%_
                                                        '0))))
                                                (let ((_%tl208225208259%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208681208682%_
                                                          '1)))
                                                      (_%target208223208257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208681208682%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl208225208259%_))
                                                      (_%__match208740208741%_
                                                       _%e208194208323%_
                                                       _%hd208195208326%_
                                                       _%tl208196208328%_
                                                       _%e208197208331%_
                                                       _%hd208198208334%_
                                                       _%tl208199208336%_
                                                       _%__splice208681208682%_
                                                       _%target208223208257%_
                                                       _%tl208225208259%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g208190208236%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g208190208236%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208199208336%_))
                                      (let ((_%__splice208681208682%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl208199208336%_
                                                '0))))
                                        (let ((_%tl208225208259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208681208682%_
                                                  '1)))
                                              (_%target208223208257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208681208682%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208225208259%_))
                                              (_%__match208740208741%_
                                               _%e208194208323%_
                                               _%hd208195208326%_
                                               _%tl208196208328%_
                                               _%e208197208331%_
                                               _%hd208198208334%_
                                               _%tl208199208336%_
                                               _%__splice208681208682%_
                                               _%target208223208257%_
                                               _%tl208225208259%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g208190208236%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g208190208236%_))))))
                          (let () (declare (not safe)) (_%g208190208236%_)))))
                  (let () (declare (not safe)) (_%g208190208236%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self208148%_ _%ctx208149%_ _%stx208150%_ _%args208151%_)
        (let ((_%self208154%_ _%self208148%_))
          (if (let ((__method209322
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self208154%_ 'check-arguments))))
                (if __method209322
                    (let ()
                      (declare (not safe))
                      (__method209322
                       _%self208154%_
                       _%ctx208149%_
                       _%stx208150%_
                       _%args208151%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self208154%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature208164%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self208154%_ '2 '#f '#f)))
                     (_%signature208166%_ _%signature208164%_)
                     (_%$e208176%_
                      (if _%signature208166%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature208166%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e208176%_
                    ((lambda (_%unchecked208179%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked208179%_))
                           (let ((__tmp209344
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked208179%_
                                                          '()))
                                              (map (lambda (_%g208180208182%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx208149%_
                                                        _%g208180208182%_)))
                                                   _%args208151%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp209344
                              _%stx208150%_
                              _%ctx208149%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx208149%_ _%stx208150%_))))
                     _%$e208176%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx208149%_ _%stx208150%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx208149%_ _%stx208150%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass208606 __method-table208607)
        (let ((__check-arguments208608
               (let ((__tmp209345
                      (lambda ()
                        (let ((__method208609
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208607
                                  'check-arguments
                                  '#f))))
                          (if __method208609
                              __method208609
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209345))))
          (lambda (_%self208148%_ _%ctx208149%_ _%stx208150%_ _%args208151%_)
            (let ((_%self208154%_ _%self208148%_))
              (if ((force __check-arguments208608)
                   _%self208154%_
                   _%ctx208149%_
                   _%stx208150%_
                   _%args208151%_)
                  (let* ((_%signature208164%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self208154%_
                             '2
                             '#f
                             '#f)))
                         (_%signature208166%_ _%signature208164%_)
                         (_%$e208176%_
                          (if _%signature208166%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature208166%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e208176%_
                        ((lambda (_%unchecked208179%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked208179%_))
                               (let ((__tmp209346
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked208179%_
                                                              '()))
                                                  (map (lambda (_%g208180208182%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx208149%_
                                                            _%g208180208182%_)))
                                                       _%args208151%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp209346
                                  _%stx208150%_
                                  _%ctx208149%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx208149%_
                                  _%stx208150%_))))
                         _%$e208176%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx208149%_ _%stx208150%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx208149%_ _%stx208150%_))))))))
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
      (lambda (_%self207899%_ _%ctx207900%_ _%stx207901%_ _%args207902%_)
        (let* ((_%self207905%_ _%self207899%_)
               (_%signature207914207916%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207905%_ '2 '#f '#f))))
          (if _%signature207914207916%_
              (let* ((_%signature207919%_ _%signature207914207916%_)
                     (_%argument-types207920207922%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature207919%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types207920207922%_
                    (let* ((_%argument-types207925%_
                            _%argument-types207920207922%_)
                           (_%argument-types207930%_
                            (let ((__tmp209347
                                   (lambda (_%t207928%_)
                                     (if _%t207928%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx207901%_
                                            _%t207928%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp209347
                               _%argument-types207925%_))))
                      (let _%loop207932%_ ((_%rest-args207934%_ _%args207902%_)
                                           (_%rest-types207935%_
                                            _%argument-types207930%_)
                                           (_%result207936%_ '#t))
                        (let* ((_%rest-args207937207945%_ _%rest-args207934%_)
                               (_%else207939207953%_
                                (lambda () _%result207936%_))
                               (_%K207941208014%_
                                (lambda (_%rest-args207956%_ _%arg207957%_)
                                  (let* ((_%rest-types207958207969%_
                                          _%rest-types207935%_)
                                         (_%E207962207973%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types207958207969%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K207965208002%_
                                           (lambda (_%rest-types207999%_
                                                    _%type208000%_)
                                             (_%loop207932%_
                                              _%rest-args207956%_
                                              _%rest-types207999%_
                                              (if (gxc#check-expression-type!
                                                   _%stx207901%_
                                                   _%arg207957%_
                                                   _%type208000%_)
                                                  _%result207936%_
                                                  '#f))))
                                          (_%K207964207993%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx207901%_
                                                _%argument-types207930%_))))
                                          (_%K207963207983%_
                                           (lambda (_%tail-type207977%_)
                                             (if (let ((__tmp209348
                                                        (lambda (_%g207978207980%_)
                                                          (gxc#check-expression-type!
                                                           _%stx207901%_
                                                           _%g207978207980%_
                                                           _%tail-type207977%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp209348
                                                    _%rest-args207956%_))
                                                 _%result207936%_
                                                 '#f))))
                                      (let ((_%try-match207960207996%_
                                             (lambda ()
                                               (if (null? _%rest-types207958207969%_)
                                                   (_%K207964207993%_)
                                                   (let ((_%tail-type207986%_
                                                          _%rest-types207958207969%_))
                                                     (_%K207963207983%_
                                                      _%tail-type207986%_))))))
                                        (if (pair? _%rest-types207958207969%_)
                                            (let ((_%tl207967208007%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types207958207969%_)))
                                                  (_%hd207966208005%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types207958207969%_))))
                                              (let ((_%type208010%_
                                                     _%hd207966208005%_)
                                                    (_%rest-types208012%_
                                                     _%tl207967208007%_))
                                                (_%K207965208002%_
                                                 _%rest-types208012%_
                                                 _%type208010%_)))
                                            (_%try-match207960207996%_))))))))
                          (if (pair? _%rest-args207937207945%_)
                              (let ((_%hd207942208017%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args207937207945%_)))
                                    (_%tl207943208019%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args207937207945%_))))
                                (let* ((_%arg208022%_ _%hd207942208017%_)
                                       (_%rest-args208024%_
                                        _%tl207943208019%_))
                                  (_%K207941208014%_
                                   _%rest-args208024%_
                                   _%arg208022%_)))
                              (_%else207939207953%_)))))
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
      (lambda (_%self207710%_ _%ctx207711%_ _%stx207712%_ _%args207713%_)
        (let* ((_%self207716%_ _%self207710%_)
               (_%g207726207736%_
                (lambda (_%g207727207733%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207727207733%_))))
               (_%g207725207774%_
                (lambda (_%g207727207739%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207727207739%_))
                      (let ((_%e207729207741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207727207739%_))))
                        (let ((_%hd207730207744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207729207741%_)))
                              (_%tl207731207746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207729207741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207731207746%_))
                              ((lambda (_%L207749%_)
                                 (let* ((_%klass207761%_
                                         (let ((__tmp209349
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self207716%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx207712%_
                                            __tmp209349)))
                                        (_%object207763%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx207711%_
                                            _%L207749%_)))
                                        (_%instance?207768%_
                                         (let ((_%$e207765%_
                                                (gxc#expression-type?
                                                 _%object207763%_
                                                 _%klass207761%_)))
                                           (if _%$e207765%_
                                               _%$e207765%_
                                               (gxc#expression-type?
                                                _%L207749%_
                                                _%klass207761%_)))))
                                   (if _%instance?207768%_
                                       (let ((__tmp209350
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object207763%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L207749%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object207763%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209350
                                          _%stx207712%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx207711%_
                                          _%stx207712%_)))))
                               _%hd207730207744%_)
                              (_%g207726207736%_ _%g207727207739%_))))
                      (_%g207726207736%_ _%g207727207739%_)))))
          (_%g207725207774%_ _%args207713%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self207506%_ _%ctx207507%_ _%stx207508%_ _%args207509%_)
        (let* ((_%self207512%_ _%self207506%_)
               (_%g207522207532%_
                (lambda (_%g207523207529%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207523207529%_))))
               (_%g207521207585%_
                (lambda (_%g207523207535%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207523207535%_))
                      (let ((_%e207525207537%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207523207535%_))))
                        (let ((_%hd207526207540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207525207537%_)))
                              (_%tl207527207542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207525207537%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207527207542%_))
                              ((lambda (_%L207545%_)
                                 (let* ((_%klass207557%_
                                         (let ((__tmp209351
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self207512%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx207508%_
                                            __tmp209351)))
                                        (_%object207559%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx207507%_
                                            _%L207545%_)))
                                        (_%instance?207564%_
                                         (let ((_%$e207561%_
                                                (gxc#expression-type?
                                                 _%object207559%_
                                                 _%klass207557%_)))
                                           (if _%$e207561%_
                                               _%$e207561%_
                                               (gxc#expression-type?
                                                _%L207545%_
                                                _%klass207557%_))))
                                        (_%klass207567%_ _%klass207557%_))
                                   (if _%instance?207564%_
                                       (let ((__tmp209352
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object207559%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L207545%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object207559%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209352
                                          _%stx207508%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass207567%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp209353
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass207567%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object207559%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209353
                                              _%stx207508%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass207567%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209354
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass207567%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object207559%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209354
                                                  _%stx207508%_))
                                               (let ((__tmp209355
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self207512%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object207559%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209355
                                                  _%stx207508%_)))))))
                               _%hd207526207540%_)
                              (_%g207522207532%_ _%g207523207535%_))))
                      (_%g207522207532%_ _%g207523207535%_)))))
          (_%g207521207585%_ _%args207509%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx207169%_)
        (let* ((_%__stx208750208751%_ _%stx207169%_)
               (_%g207174207215%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208750208751%_)))))
          (let ((_%__kont208752208753%_ (lambda () '#t))
                (_%__kont208754208755%_ (lambda () '#t))
                (_%__kont208756208757%_
                 (lambda (_%L207283%_ _%L207284%_)
                   (let ((_%rator-type207305207307%_
                          (let ((__tmp209356
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L207284%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp209356))))
                     (if _%rator-type207305207307%_
                         (let* ((_%rator-type207310%_
                                 _%rator-type207305207307%_)
                                (_%rator-signature207311207313%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type207310%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type207310%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature207311207313%_
                               (let* ((_%rator-signature207316%_
                                       _%rator-signature207311207313%_)
                                      (_%rator-effect207317207319%_
                                       (if _%rator-signature207316%_
                                           (##direct-structure-ref
                                            _%rator-signature207316%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect207317207319%_
                                     (let ((_%rator-effect207322%_
                                            _%rator-effect207317207319%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect207322%_)
                                               (equal? '(alloc)
                                                       _%rator-effect207322%_))
                                           (let ((__tmp209357
                                                  (let ((__tmp209358
                                                         (lambda (_%g207327207330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g207328207332%_)
                   (cons _%g207327207330%_ _%g207328207332%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp209358
                                                     '()
                                                     _%L207283%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp209357))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont208760208761%_ (lambda () '#f)))
            (let ((_%__match208839208840%_
                   (lambda (_%e207190207227%_
                            _%hd207191207230%_
                            _%tl207192207232%_
                            _%e207193207235%_
                            _%hd207194207238%_
                            _%tl207195207240%_
                            _%e207196207243%_
                            _%hd207197207246%_
                            _%tl207198207248%_
                            _%e207199207251%_
                            _%hd207200207254%_
                            _%tl207201207256%_
                            _%__splice208758208759%_
                            _%target207202207259%_
                            _%tl207204207261%_)
                     (letrec ((_%loop207205207264%_
                               (lambda (_%hd207203207267%_
                                        _%rand207209207269%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd207203207267%_))
                                     (let ((_%e207206207272%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd207203207267%_))))
                                       (let ((_%lp-tl207208207277%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e207206207272%_)))
                                             (_%lp-hd207207207275%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e207206207272%_))))
                                         (_%loop207205207264%_
                                          _%lp-tl207208207277%_
                                          (cons _%lp-hd207207207275%_
                                                _%rand207209207269%_))))
                                     (let ((_%rand207210207280%_
                                            (reverse _%rand207209207269%_)))
                                       (_%__kont208756208757%_
                                        _%rand207210207280%_
                                        _%hd207200207254%_))))))
                       (_%loop207205207264%_ _%target207202207259%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208750208751%_))
                  (let ((_%e207176207363%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208750208751%_))))
                    (let ((_%tl207178207368%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207176207363%_)))
                          (_%hd207177207366%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207176207363%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd207177207366%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd207177207366%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl207178207368%_))
                                  (let ((_%e207179207371%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl207178207368%_))))
                                    (let ((_%tl207181207376%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207179207371%_)))
                                          (_%hd207180207374%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207179207371%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl207181207376%_))
                                          (_%__kont208752208753%_)
                                          (_%__kont208760208761%_))))
                                  (_%__kont208760208761%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd207177207366%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207178207368%_))
                                      (let ((_%e207185207348%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207178207368%_))))
                                        (let ((_%tl207187207353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207185207348%_)))
                                              (_%hd207186207351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207185207348%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207187207353%_))
                                              (_%__kont208754208755%_)
                                              (_%__kont208760208761%_))))
                                      (_%__kont208760208761%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd207177207366%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl207178207368%_))
                                          (let ((_%e207193207235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl207178207368%_))))
                                            (let ((_%tl207195207240%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e207193207235%_)))
                                                  (_%hd207194207238%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e207193207235%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd207194207238%_))
                                                  (let ((_%e207196207243%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd207194207238%_))))
                                                    (let ((_%tl207198207248%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207196207243%_)))
                                                          (_%hd207197207246%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207196207243%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd207197207246%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd207197207246%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207198207248%_))
                          (let ((_%e207199207251%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl207198207248%_))))
                            (let ((_%tl207201207256%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207199207251%_)))
                                  (_%hd207200207254%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207199207251%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl207201207256%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207195207240%_))
                                      (let ((_%__splice208758208759%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl207195207240%_
                                                '0))))
                                        (let ((_%tl207204207261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208758208759%_
                                                  '1)))
                                              (_%target207202207259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208758208759%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207204207261%_))
                                              (_%__match208839208840%_
                                               _%e207176207363%_
                                               _%hd207177207366%_
                                               _%tl207178207368%_
                                               _%e207193207235%_
                                               _%hd207194207238%_
                                               _%tl207195207240%_
                                               _%e207196207243%_
                                               _%hd207197207246%_
                                               _%tl207198207248%_
                                               _%e207199207251%_
                                               _%hd207200207254%_
                                               _%tl207201207256%_
                                               _%__splice208758208759%_
                                               _%target207202207259%_
                                               _%tl207204207261%_)
                                              (_%__kont208760208761%_))))
                                      (_%__kont208760208761%_))
                                  (_%__kont208760208761%_))))
                          (_%__kont208760208761%_))
                      (_%__kont208760208761%_))
                  (_%__kont208760208761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont208760208761%_))))
                                          (_%__kont208760208761%_))
                                      (_%__kont208760208761%_))))
                          (_%__kont208760208761%_))))
                  (_%__kont208760208761%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx207164%_ _%klass207165%_)
        (let ((_%expr-type207167%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx207164%_))))
          (if _%expr-type207167%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type207167%_ _%klass207165%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx207142%_ _%expr207143%_ _%type207144%_)
        (if (not _%type207144%_)
            '#f
            (let ((_%$e207147%_
                   (eq? (##structure-ref _%type207144%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e207147%_
                  _%$e207147%_
                  (let ((_%expr-type207151%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr207143%_))))
                    (if (not _%expr-type207151%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type207151%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e207155%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type207151%_
                                      'gxc#!abort::t))))
                              (if _%$e207155%_
                                  _%$e207155%_
                                  (let ((_%$e207158%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type207151%_
                                            _%type207144%_))))
                                    (if _%$e207158%_
                                        _%$e207158%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type207144%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type207144%_
                                                   _%expr-type207151%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx207142%_
                                                   _%expr207143%_
                                                   _%expr-type207151%_
                                                   _%type207144%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self206956%_ _%ctx206957%_ _%stx206958%_ _%args206959%_)
        (let* ((_%self206962%_ _%self206956%_)
               (_%klass206972%_
                (let ((__tmp209359
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self206962%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx206958%_ __tmp209359)))
               (_%fields206974%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass206972%_
                           '5
                           '#f
                           '#f))))
               (_%args206980%_
                (map (lambda (_%g206975206977%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx206957%_ _%g206975206977%_)))
                     _%args206959%_))
               (_%inline-make-object206982%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self206962%_
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
                           _%self206962%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields206974%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass206985%_ _%klass206972%_)
               (_%$e206999%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass206985%_ '6 '#f '#f))))
          (if _%$e206999%_
              ((lambda (_%ctor207002%_)
                 (let ((_%$obj207004%_
                        (let ((__tmp209360
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp209360)))
                       (_%ctor-impl207005%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass206985%_
                           _%ctor207002%_))))
                   (let ((__tmp209361
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj207004%_ '())
                                                  (cons _%inline-make-object206982%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl207005%_
                                                            (let ((__tmp209362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl207005%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj207004%_ '()))
                                             _%args206980%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp209362
                       _%stx206958%_
                       _%ctx206957%_))
                    (let ((_%$ctor207007%_
                           (let ((__tmp209363
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp209363))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor207007%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206962%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj207004%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor207002%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor207007%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor207007%_ '()))
                              (cons (cons '%#ref (cons _%$obj207004%_ '()))
                                    _%args206980%_)))
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
                             _%self206962%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor207002%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj207004%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp209361 _%stx206958%_))))
               _%$e206999%_)
              (let ((_%$e207009%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass206985%_
                        '10
                        '#f
                        '#f))))
                (if _%$e207009%_
                    ((lambda (_%metaclass207012%_)
                       (let* ((_%$obj207014%_
                               (let ((__tmp209364
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209364)))
                              (_%metakons207016%_
                               (let ((__tmp209365
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx206958%_
                                         _%metaclass207012%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp209365
                                  'instance-init!)))
                              (__tmp209366
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj207014%_
                                                             '())
                                                       (cons _%inline-make-object206982%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons207016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp209367
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons207016%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self206962%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj207014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args206980%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp209367
                            _%stx206958%_
                            _%ctx206957%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self206962%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj207014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args206980%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj207014%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp209366 _%stx206958%_)))
                     _%$e207009%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass206985%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp209368
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args206980%_))))
                              (declare (not safe))
                              (##fx= __tmp209368 _%fields206974%_))
                            (let ((__tmp209369
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self206962%_
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
                                              _%self206962%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args206980%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp209369
                               _%stx206958%_))
                            (let ((__tmp209371
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self206962%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp209370
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass206985%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx206958%_
                               __tmp209371
                               __tmp209370)))
                        (let ((_%$obj207021%_
                               (let ((__tmp209372
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209372))))
                          (let _%lp207023%_ ((_%rest207025%_ _%args206980%_)
                                             (_%initializers207026%_ '()))
                            (let* ((_%__stx208842208843%_ _%rest207025%_)
                                   (_%g207030207051%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx208842208843%_)))))
                              (let ((_%__kont208844208845%_
                                     (lambda (_%L207105%_
                                              _%L207106%_
                                              _%L207107%_)
                                       (let* ((_%slot207134%_
                                               (let ((__tmp209373
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L207107%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp209373)))
                                              (_%off207136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass206985%_
                                                  _%slot207134%_))))
                                         (if _%off207136%_
                                             (_%lp207023%_
                                              _%L207105%_
                                              (cons (cons _%off207136%_
                                                          _%L207106%_)
                                                    _%initializers207026%_))
                                             (let ((__tmp209374
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self206962%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx206958%_
                                                __tmp209374
                                                _%slot207134%_))))))
                                    (_%__kont208846208847%_
                                     (lambda ()
                                       (let ((__tmp209375
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj207021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object206982%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp209378
                                     (cons (cons '%#ref
                                                 (cons _%$obj207021%_ '()))
                                           '()))
                                    (__tmp209376
                                     (let ((__tmp209377
                                            (lambda (_%i207065%_ _%r207066%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self206962%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i207065%_) '()))
                              (cons (cons '%#ref (cons _%$obj207021%_ '()))
                                    (cons (cdr _%i207065%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r207066%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp209377
                                        '()
                                        _%initializers207026%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp209378 __tmp209376)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209375
                                          _%stx206958%_))))
                                    (_%__kont208848208849%_
                                     (lambda ()
                                       (let ((__tmp209379
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj207021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object206982%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj207021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args206980%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj207021%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209379
                                          _%stx206958%_)))))
                                (let* ((_%g207028207068%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx208842208843%_))
                                              (_%__kont208846208847%_)
                                              (_%__kont208848208849%_))))
                                       (_%__match208879208880%_
                                        (lambda (_%e207035207073%_
                                                 _%hd207036207076%_
                                                 _%tl207037207078%_
                                                 _%e207038207081%_
                                                 _%hd207039207084%_
                                                 _%tl207040207086%_
                                                 _%e207041207089%_
                                                 _%hd207042207092%_
                                                 _%tl207043207094%_
                                                 _%e207044207097%_
                                                 _%hd207045207100%_
                                                 _%tl207046207102%_)
                                          (let ((_%L207105%_
                                                 _%tl207046207102%_)
                                                (_%L207106%_
                                                 _%hd207045207100%_)
                                                (_%L207107%_
                                                 _%hd207042207092%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L207107%_))
                                                (_%__kont208844208845%_
                                                 _%L207105%_
                                                 _%L207106%_
                                                 _%L207107%_)
                                                (_%__kont208848208849%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx208842208843%_))
                                      (let ((_%e207035207073%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx208842208843%_))))
                                        (let ((_%tl207037207078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207035207073%_)))
                                              (_%hd207036207076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207035207073%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd207036207076%_))
                                              (let ((_%e207038207081%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd207036207076%_))))
                                                (let ((_%tl207040207086%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e207038207081%_)))
                                                      (_%hd207039207084%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e207038207081%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd207039207084%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd207039207084%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl207040207086%_))
                      (let ((_%e207041207089%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl207040207086%_))))
                        (let ((_%tl207043207094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207041207089%_)))
                              (_%hd207042207092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207041207089%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207043207094%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl207037207078%_))
                                  (let ((_%e207044207097%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl207037207078%_))))
                                    (let ((_%tl207046207102%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207044207097%_)))
                                          (_%hd207045207100%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207044207097%_))))
                                      (_%__match208879208880%_
                                       _%e207035207073%_
                                       _%hd207036207076%_
                                       _%tl207037207078%_
                                       _%e207038207081%_
                                       _%hd207039207084%_
                                       _%tl207040207086%_
                                       _%e207041207089%_
                                       _%hd207042207092%_
                                       _%tl207043207094%_
                                       _%e207044207097%_
                                       _%hd207045207100%_
                                       _%tl207046207102%_)))
                                  (_%__kont208848208849%_))
                              (_%__kont208848208849%_))))
                      (_%__kont208848208849%_))
                  (_%__kont208848208849%_))
              (_%__kont208848208849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont208848208849%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g207028207068%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self206739%_ _%ctx206740%_ _%stx206741%_ _%args206742%_)
        (let* ((_%self206745%_ _%self206739%_)
               (_%arguments-ok?206755%_
                (let ((__method209323
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self206745%_ 'check-arguments))))
                  (if __method209323
                      (let ()
                        (declare (not safe))
                        (__method209323
                         _%self206745%_
                         _%ctx206740%_
                         _%stx206741%_
                         _%args206742%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self206745%_
                                 'check-arguments))
                        '#!void))))
               (_%g206757206767%_
                (lambda (_%g206758206764%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206758206764%_))))
               (_%g206756206831%_
                (lambda (_%g206758206770%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206758206770%_))
                      (let ((_%e206760206772%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206758206770%_))))
                        (let ((_%hd206761206775%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206760206772%_)))
                              (_%tl206762206777%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206760206772%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206762206777%_))
                              ((lambda (_%L206780%_)
                                 (let* ((_%klass206793%_
                                         (let ((__tmp209380
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self206745%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx206741%_
                                            __tmp209380)))
                                        (_%field206795%_
                                         (let ((__tmp209381
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self206745%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass206793%_
                                            __tmp209381)))
                                        (_%object206797%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx206740%_
                                            _%L206780%_)))
                                        (_%klass206800%_ _%klass206793%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass206800%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp209382
                                              (cons (if (or _%arguments-ok?206755%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206745%_
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
                                 _%self206745%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field206795%_ '()))
                        (cons _%object206797%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209382
                                          _%stx206741%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass206800%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp209383
                                                  (cons (if (or _%arguments-ok?206755%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206745%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206745%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field206795%_ '()))
                            (cons _%object206797%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209383
                                              _%stx206741%_))
                                           (let ((_%$e206819%_
                                                  (let ((__tmp209384
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self206745%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass206800%_
                                                     __tmp209384))))
                                             (if _%$e206819%_
                                                 ((lambda (_%klass206822%_)
                                                    (let ((__tmp209385
                                                           (cons (if (or _%arguments-ok?206755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206745%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self206745%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field206795%_ '()))
                                     (cons _%object206797%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp209385 _%stx206741%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e206819%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self206745%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp209386
                                                            (let ((_%$obj206828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp209387
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp209387))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj206828%_ '())
                                              (cons _%object206797%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass206800%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj206828%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206745%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206795%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj206828%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?206755%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj206828%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self206745%_
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
                                                             _%self206745%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj206828%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self206745%_
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
               (gxc#xform-wrap-source __tmp209386 _%stx206741%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp209388
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object206797%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206745%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp209388 _%stx206741%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd206761206775%_)
                              (_%g206757206767%_ _%g206758206770%_))))
                      (_%g206757206767%_ _%g206758206770%_)))))
          (_%g206756206831%_ _%args206742%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass208610 __method-table208611)
        (let ((__check-arguments208612
               (let ((__tmp209389
                      (lambda ()
                        (let ((__method208613
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208611
                                  'check-arguments
                                  '#f))))
                          (if __method208613
                              __method208613
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209389)))
              (__slot208614
               (let ((__slot208615
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass208610 'slot))))
                 (if __slot208615
                     __slot208615
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self206739%_ _%ctx206740%_ _%stx206741%_ _%args206742%_)
            (let* ((_%self206745%_ _%self206739%_)
                   (_%arguments-ok?206755%_
                    ((force __check-arguments208612)
                     _%self206745%_
                     _%ctx206740%_
                     _%stx206741%_
                     _%args206742%_))
                   (_%g206757206767%_
                    (lambda (_%g206758206764%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g206758206764%_))))
                   (_%g206756206831%_
                    (lambda (_%g206758206770%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g206758206770%_))
                          (let ((_%e206760206772%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g206758206770%_))))
                            (let ((_%hd206761206775%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206760206772%_)))
                                  (_%tl206762206777%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206760206772%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206762206777%_))
                                  ((lambda (_%L206780%_)
                                     (let* ((_%klass206793%_
                                             (let ((__tmp209390
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self206745%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx206741%_
                                                __tmp209390)))
                                            (_%field206795%_
                                             (let ((__tmp209391
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self206745%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass206793%_
                                                __tmp209391)))
                                            (_%object206797%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx206740%_
                                                _%L206780%_)))
                                            (_%klass206800%_ _%klass206793%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass206800%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp209392
                                                  (cons (if (or _%arguments-ok?206755%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206745%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206745%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field206795%_ '()))
                            (cons _%object206797%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209392
                                              _%stx206741%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass206800%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209393
                                                      (cons (if (or _%arguments-ok?206755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self206745%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206745%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field206795%_ '()))
                                (cons _%object206797%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209393
                                                  _%stx206741%_))
                                               (let ((_%$e206819%_
                                                      (let ((__tmp209394
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self206745%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass206800%_ __tmp209394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e206819%_
                                                     ((lambda (_%klass206822%_)
                                                        (let ((__tmp209395
                                                               (cons (if (or _%arguments-ok?206755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206745%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self206745%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field206795%_ '()))
                                         (cons _%object206797%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp209395 _%stx206741%_)))
              _%$e206819%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self206745%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp209396
                                                                (let ((_%$obj206828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp209397
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209397))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj206828%_ '())
                                                  (cons _%object206797%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass206800%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj206828%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206745%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field206795%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj206828%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?206755%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj206828%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206745%_
                               __slot208614
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
                        (##unchecked-structure-ref _%self206745%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj206828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206745%_
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
                   (gxc#xform-wrap-source __tmp209396 _%stx206741%_))
                 (let ((__tmp209398
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object206797%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206745%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp209398 _%stx206741%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd206761206775%_)
                                  (_%g206757206767%_ _%g206758206770%_))))
                          (_%g206757206767%_ _%g206758206770%_)))))
              (_%g206756206831%_ _%args206742%_))))))
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
      (lambda (_%self206503%_ _%ctx206504%_ _%stx206505%_ _%args206506%_)
        (let* ((_%self206509%_ _%self206503%_)
               (_%arguments-ok?206519%_
                (let ((__method209324
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self206509%_ 'check-arguments))))
                  (if __method209324
                      (let ()
                        (declare (not safe))
                        (__method209324
                         _%self206509%_
                         _%ctx206504%_
                         _%stx206505%_
                         _%args206506%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self206509%_
                                 'check-arguments))
                        '#!void))))
               (_%g206521206535%_
                (lambda (_%g206522206532%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206522206532%_))))
               (_%g206520206614%_
                (lambda (_%g206522206538%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206522206538%_))
                      (let ((_%e206525206540%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206522206538%_))))
                        (let ((_%hd206526206543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206525206540%_)))
                              (_%tl206527206545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206525206540%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206527206545%_))
                              (let ((_%e206528206548%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl206527206545%_))))
                                (let ((_%hd206529206551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206528206548%_)))
                                      (_%tl206530206553%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206528206548%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl206530206553%_))
                                      ((lambda (_%L206556%_ _%L206557%_)
                                         (let* ((_%klass206573%_
                                                 (let ((__tmp209399
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206509%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx206505%_
                                                    __tmp209399)))
                                                (_%field206575%_
                                                 (let ((__tmp209400
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206509%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass206573%_
                                                    __tmp209400)))
                                                (_%object206577%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx206504%_
                                                    _%L206557%_)))
                                                (_%value206579%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx206504%_
                                                    _%L206556%_)))
                                                (_%klass206582%_
                                                 _%klass206573%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass206582%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209401
                                                      (cons (if (or _%arguments-ok?206519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self206509%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206509%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field206575%_ '()))
                                (cons _%object206577%_
                                      (cons _%value206579%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209401
                                                  _%stx206505%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass206582%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp209402
                                                          (cons (if (or _%arguments-ok?206519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self206509%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206509%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206575%_ '()))
                                    (cons _%object206577%_
                                          (cons _%value206579%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp209402
                                                      _%stx206505%_))
                                                   (let ((_%$e206602%_
                                                          (let ((__tmp209403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206509%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass206582%_
                     __tmp209403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e206602%_
                                                         ((lambda (_%klass206605%_)
                                                            (let ((__tmp209404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?206519%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206509%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self206509%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field206575%_ '()))
                                             (cons _%object206577%_
                                                   (cons _%value206579%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209404 _%stx206505%_)))
                  _%$e206602%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self206509%_ '4 '#f '#f))
                     (let ((__tmp209405
                            (let ((_%$obj206611%_
                                   (let ((__tmp209406
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp209406))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj206611%_ '())
                                                      (cons _%object206577%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass206582%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj206611%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self206509%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field206575%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj206611%_
                                                              '()))
                                                  (cons _%value206579%_
                                                        '())))))
                          (cons (if _%arguments-ok?206519%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj206611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self206509%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value206579%_ '())))))
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
                             _%self206509%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj206611%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206509%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value206579%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp209405 _%stx206505%_))
                     (let ((__tmp209407
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object206577%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self206509%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value206579%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp209407
                        _%stx206505%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd206529206551%_
                                       _%hd206526206543%_)
                                      (_%g206521206535%_ _%g206522206538%_))))
                              (_%g206521206535%_ _%g206522206538%_))))
                      (_%g206521206535%_ _%g206522206538%_)))))
          (_%g206520206614%_ _%args206506%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass208616 __method-table208617)
        (let ((__check-arguments208618
               (let ((__tmp209408
                      (lambda ()
                        (let ((__method208619
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208617
                                  'check-arguments
                                  '#f))))
                          (if __method208619
                              __method208619
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209408))))
          (lambda (_%self206503%_ _%ctx206504%_ _%stx206505%_ _%args206506%_)
            (let* ((_%self206509%_ _%self206503%_)
                   (_%arguments-ok?206519%_
                    ((force __check-arguments208618)
                     _%self206509%_
                     _%ctx206504%_
                     _%stx206505%_
                     _%args206506%_))
                   (_%g206521206535%_
                    (lambda (_%g206522206532%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g206522206532%_))))
                   (_%g206520206614%_
                    (lambda (_%g206522206538%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g206522206538%_))
                          (let ((_%e206525206540%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g206522206538%_))))
                            (let ((_%hd206526206543%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206525206540%_)))
                                  (_%tl206527206545%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206525206540%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206527206545%_))
                                  (let ((_%e206528206548%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl206527206545%_))))
                                    (let ((_%hd206529206551%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206528206548%_)))
                                          (_%tl206530206553%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206528206548%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl206530206553%_))
                                          ((lambda (_%L206556%_ _%L206557%_)
                                             (let* ((_%klass206573%_
                                                     (let ((__tmp209409
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206509%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx206505%_
                                                        __tmp209409)))
                                                    (_%field206575%_
                                                     (let ((__tmp209410
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206509%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass206573%_
                                                        __tmp209410)))
                                                    (_%object206577%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx206504%_
                                                        _%L206557%_)))
                                                    (_%value206579%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx206504%_
                                                        _%L206556%_)))
                                                    (_%klass206582%_
                                                     _%klass206573%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass206582%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp209411
                                                          (cons (if (or _%arguments-ok?206519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self206509%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206509%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206575%_ '()))
                                    (cons _%object206577%_
                                          (cons _%value206579%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp209411
                                                      _%stx206505%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass206582%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp209412
                                                              (cons (if (or _%arguments-ok?206519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self206509%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206509%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field206575%_ '()))
                                        (cons _%object206577%_
                                              (cons _%value206579%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp209412 _%stx206505%_))
               (let ((_%$e206602%_
                      (let ((__tmp209413
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206509%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass206582%_
                         __tmp209413))))
                 (if _%$e206602%_
                     ((lambda (_%klass206605%_)
                        (let ((__tmp209414
                               (cons (if (or _%arguments-ok?206519%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self206509%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self206509%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field206575%_
                                                             '()))
                                                 (cons _%object206577%_
                                                       (cons _%value206579%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp209414 _%stx206505%_)))
                      _%$e206602%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206509%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp209415
                                (let ((_%$obj206611%_
                                       (let ((__tmp209416
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp209416))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj206611%_
                                                                '())
                                                          (cons _%object206577%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass206582%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj206611%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self206509%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field206575%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj206611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value206579%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?206519%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj206611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self206509%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value206579%_ '())))))
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
                                 _%self206509%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj206611%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206509%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value206579%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp209415 _%stx206505%_))
                         (let ((__tmp209417
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object206577%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206509%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value206579%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp209417
                            _%stx206505%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd206529206551%_
                                           _%hd206526206543%_)
                                          (_%g206521206535%_
                                           _%g206522206538%_))))
                                  (_%g206521206535%_ _%g206522206538%_))))
                          (_%g206521206535%_ _%g206522206538%_)))))
              (_%g206520206614%_ _%args206506%_))))))
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
      (lambda (_%self206318%_ _%ctx206319%_ _%stx206320%_ _%args206321%_)
        (let* ((_%self206324%_ _%self206318%_)
               (_%self206333206343%_ _%self206324%_)
               (_%E206335206347%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self206333206343%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K206336206357%_
                (lambda (_%inline206350%_ _%dispatch206351%_ _%arity206352%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self206324%_
                         _%args206321%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx206320%_
                         _%arity206352%_)))
                  (if _%inline206350%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp209418 (_%inline206350%_ _%stx206320%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp209418
                           _%stx206320%_
                           _%ctx206319%_)))
                      (if (and _%dispatch206351%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch206351%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch206351%_))
                            (let ((__tmp209419
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch206351%_
                                                           '()))
                                               _%args206321%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp209419
                               _%stx206320%_
                               _%ctx206319%_)))
                          (gxc#!procedure::optimize-call
                           _%self206324%_
                           _%ctx206319%_
                           _%stx206320%_
                           _%args206321%_)))))
               (_%e206337206360%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206333206343%_ '1 '#f '#f)))
               (_%e206338206363%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206333206343%_ '2 '#f '#f)))
               (_%e206339206366%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206333206343%_ '3 '#f '#f)))
               (_%arity206369%_ _%e206339206366%_)
               (_%e206340206371%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206333206343%_ '4 '#f '#f)))
               (_%dispatch206374%_ _%e206340206371%_)
               (_%e206341206376%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206333206343%_ '5 '#f '#f)))
               (_%inline206379%_ _%e206341206376%_))
          (_%K206336206357%_
           _%inline206379%_
           _%dispatch206374%_
           _%arity206369%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self206170%_ _%ctx206171%_ _%stx206172%_ _%args206173%_)
        (let* ((_%self206176%_ _%self206170%_)
               (_%$e206190%_
                (let ((__tmp209421
                       (lambda (_%g206185206187%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g206185206187%_
                            _%args206173%_))))
                      (__tmp209420
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self206176%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp209421 __tmp209420))))
          (if _%$e206190%_
              ((lambda (_%clause206193%_)
                 (let ((__method209325
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause206193%_ 'optimize-call))))
                   (if __method209325
                       (let ()
                         (declare (not safe))
                         (__method209325
                          _%clause206193%_
                          _%ctx206171%_
                          _%stx206172%_
                          _%args206173%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause206193%_
                                  'optimize-call))
                         '#!void))))
               _%$e206190%_)
              (let ((__tmp209422
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self206176%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx206172%_
                 __tmp209422))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self205910%_ _%ctx205911%_ _%stx205912%_ _%args205913%_)
        (let* ((_%self205916%_ _%self205910%_)
               (_%self205925205934%_ _%self205916%_)
               (_%E205927205938%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self205925205934%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K205928206029%_
                (lambda (_%dispatch205941%_ _%table205942%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch205941%_))
                      (let* ((_%g205943205953%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch205941%_)))
                             (_%else205945205961%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch205941%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx205911%_
                                   _%stx205912%_))))
                             (_%K205947206010%_
                              (lambda (_%main205964%_ _%keys205965%_)
                                (let ((_g209423_
                                       (gxc#!kw-lambda-split-args
                                        _%stx205912%_
                                        _%args205913%_)))
                                  (begin
                                    (let ((_g209424_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g209423_)
                                                 (##values-length _g209423_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g209424_ 2)))
                                          (error "Context expects 2 values"
                                                 _g209424_)))
                                    (let ((_%pargs205967%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g209423_ 0)))
                                          (_%kwargs205968%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g209423_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main205964%_))
                                        (if _%table205942%_
                                            (let ((_%xargs205976%_
                                                   (map (lambda (_%key205970%_)
                                                          (let ((_%$e205972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key205970%_ _%kwargs205968%_))))
                    (if _%$e205972%_ _%$e205972%_ '(%#ref absent-value))))
                _%keys205965%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw205978%_)
                                                 (if (memq (car _%kw205978%_)
                                                           _%keys205965%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx205912%_
                                                        _%keys205965%_
                                                        _%kw205978%_))))
                                               _%kwargs205968%_)
                                              (let ((__tmp209425
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main205964%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs205967%_
                                  _%xargs205976%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp209425
                                                 _%stx205912%_
                                                 _%ctx205911%_)))
                                            (let* ((_%kwt205980%_
                                                    (let ((__tmp209426
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp209426)))
                                                   (_%kwvars205984%_
                                                    (map (lambda (_%_205982%_)
                                                           (let ((__tmp209427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp209427)))
                 _%kwargs205968%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind205989%_
                                                    (map (lambda (_%kw205986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar205987%_)
                   (cons (cons _%kwvar205987%_ '())
                         (cons (cdr _%kw205986%_) '())))
                 _%kwargs205968%_
                 _%kwvars205984%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset205994%_
                                                    (map (lambda (_%kw205991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar205992%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt205980%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw205991%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar205992%_
                                                             '()))
                                                 '()))))))
                 _%kwargs205968%_
                 _%kwvars205984%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs205999%_
                                                    (map (lambda (_%kw205996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar205997%_)
                   (cons (car _%kw205996%_)
                         (cons '%#ref (cons _%kwvar205997%_ '()))))
                 _%kwargs205968%_
                 _%kwvars205984%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs206007%_
                                                    (map (lambda (_%key206001%_)
                                                           (let ((_%$e206003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key206001%_ _%xkwargs205999%_))))
                     (if _%$e206003%_ _%$e206003%_ '(%#ref absent-value))))
                 _%keys205965%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp209428
                                                    (cons '%#let-values
                                                          (cons _%kwbind205989%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt205980%_ '())
                                                      (cons (let ((__tmp209429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs205968%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209429 _%stx205912%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp209430
                                                             (cons (let ((__tmp209431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main205964%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt205980%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs205967%_
                                                       _%xargs206007%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp209431 _%stx205912%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp209430 _%kwset205994%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp209428
                                               _%stx205912%_
                                               _%ctx205911%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g205943205953%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e205948206013%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g205943205953%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e205949206016%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g205943205953%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e205950206019%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g205943205953%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys206022%_ _%e205950206019%_)
                                   (_%e205951206024%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g205943205953%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main206027%_ _%e205951206024%_))
                              (_%K205947206010%_
                               _%main206027%_
                               _%keys206022%_))
                            (_%else205945205961%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx205911%_ _%stx205912%_)))))
               (_%e205929206032%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205925205934%_ '1 '#f '#f)))
               (_%e205930206035%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205925205934%_ '2 '#f '#f)))
               (_%e205931206038%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205925205934%_ '3 '#f '#f)))
               (_%table206041%_ _%e205931206038%_)
               (_%e205932206043%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205925205934%_ '4 '#f '#f)))
               (_%dispatch206046%_ _%e205932206043%_))
          (_%K205928206029%_ _%dispatch206046%_ _%table206041%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx205523%_ _%args205524%_)
        (let _%lp205526%_ ((_%rest205528%_ _%args205524%_)
                           (_%pargs205529%_ '())
                           (_%kwargs205530%_ '()))
          (let* ((_%__stx208884208885%_ _%rest205528%_)
                 (_%g205536205588%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx208884208885%_)))))
            (let ((_%__kont208886208887%_
                   (lambda (_%L205767%_ _%L205768%_)
                     (_%lp205526%_
                      _%L205767%_
                      (cons _%L205768%_ _%pargs205529%_)
                      _%kwargs205530%_)))
                  (_%__kont208888208889%_
                   (lambda (_%L205713%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L205713%_ _%pargs205529%_))
                             (reverse _%kwargs205530%_))))
                  (_%__kont208890208891%_
                   (lambda (_%L205660%_ _%L205661%_ _%L205662%_)
                     (let ((_%kw205679%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L205662%_))))
                       (if (assq _%kw205679%_ _%kwargs205530%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx205523%_
                              _%kw205679%_))
                           (_%lp205526%_
                            _%L205660%_
                            _%pargs205529%_
                            (cons (cons _%kw205679%_ _%L205661%_)
                                  _%kwargs205530%_))))))
                  (_%__kont208892208893%_
                   (lambda (_%L205608%_ _%L205609%_)
                     (_%lp205526%_
                      _%L205608%_
                      (cons _%L205609%_ _%pargs205529%_)
                      _%kwargs205530%_)))
                  (_%__kont208894208895%_
                   (lambda ()
                     (values (reverse _%pargs205529%_)
                             (reverse _%kwargs205530%_)))))
              (let ((_%__match208991208992%_
                     (lambda (_%e205567205628%_
                              _%hd205568205631%_
                              _%tl205569205633%_
                              _%e205570205636%_
                              _%hd205571205639%_
                              _%tl205572205641%_
                              _%e205573205644%_
                              _%hd205574205647%_
                              _%tl205575205649%_
                              _%e205576205652%_
                              _%hd205577205655%_
                              _%tl205578205657%_)
                       (let ((_%L205660%_ _%tl205578205657%_)
                             (_%L205661%_ _%hd205577205655%_)
                             (_%L205662%_ _%hd205574205647%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L205662%_))
                             (_%__kont208890208891%_
                              _%L205660%_
                              _%L205661%_
                              _%L205662%_)
                             (_%__kont208892208893%_
                              _%tl205569205633%_
                              _%hd205568205631%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx208884208885%_))
                    (let ((_%e205540205732%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx208884208885%_))))
                      (let ((_%tl205542205737%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205540205732%_)))
                            (_%hd205541205735%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205540205732%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd205541205735%_))
                            (let ((_%e205543205740%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd205541205735%_))))
                              (let ((_%tl205545205745%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205543205740%_)))
                                    (_%hd205544205743%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205543205740%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd205544205743%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd205544205743%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205545205745%_))
                                            (let ((_%e205546205748%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl205545205745%_))))
                                              (let ((_%tl205548205753%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205546205748%_)))
                                                    (_%hd205547205751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205546205748%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205547205751%_))
                                                    (let ((_%e205549205756%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205547205751%_))))
                                                      (if (equal? _%e205549205756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205548205753%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205542205737%_))
                          (let ((_%e205550205759%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl205542205737%_))))
                            (let ((_%tl205552205764%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205550205759%_)))
                                  (_%hd205551205762%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205550205759%_))))
                              (_%__kont208886208887%_
                               _%tl205552205764%_
                               _%hd205551205762%_)))
                          (_%__kont208892208893%_
                           _%tl205542205737%_
                           _%hd205541205735%_))
                      (_%__kont208892208893%_
                       _%tl205542205737%_
                       _%hd205541205735%_))
                  (if (equal? _%e205549205756%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205548205753%_))
                          (_%__kont208888208889%_ _%tl205542205737%_)
                          (_%__kont208892208893%_
                           _%tl205542205737%_
                           _%hd205541205735%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205548205753%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205542205737%_))
                              (let ((_%e205576205652%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205542205737%_))))
                                (let ((_%tl205578205657%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205576205652%_)))
                                      (_%hd205577205655%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205576205652%_))))
                                  (_%__match208991208992%_
                                   _%e205540205732%_
                                   _%hd205541205735%_
                                   _%tl205542205737%_
                                   _%e205543205740%_
                                   _%hd205544205743%_
                                   _%tl205545205745%_
                                   _%e205546205748%_
                                   _%hd205547205751%_
                                   _%tl205548205753%_
                                   _%e205576205652%_
                                   _%hd205577205655%_
                                   _%tl205578205657%_)))
                              (_%__kont208892208893%_
                               _%tl205542205737%_
                               _%hd205541205735%_))
                          (_%__kont208892208893%_
                           _%tl205542205737%_
                           _%hd205541205735%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205548205753%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl205542205737%_))
                                                            (let ((_%e205576205652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl205542205737%_))))
                      (let ((_%tl205578205657%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205576205652%_)))
                            (_%hd205577205655%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205576205652%_))))
                        (_%__match208991208992%_
                         _%e205540205732%_
                         _%hd205541205735%_
                         _%tl205542205737%_
                         _%e205543205740%_
                         _%hd205544205743%_
                         _%tl205545205745%_
                         _%e205546205748%_
                         _%hd205547205751%_
                         _%tl205548205753%_
                         _%e205576205652%_
                         _%hd205577205655%_
                         _%tl205578205657%_)))
                    (_%__kont208892208893%_
                     _%tl205542205737%_
                     _%hd205541205735%_))
                (_%__kont208892208893%_
                 _%tl205542205737%_
                 _%hd205541205735%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont208892208893%_
                                             _%tl205542205737%_
                                             _%hd205541205735%_))
                                        (_%__kont208892208893%_
                                         _%tl205542205737%_
                                         _%hd205541205735%_))
                                    (_%__kont208892208893%_
                                     _%tl205542205737%_
                                     _%hd205541205735%_))))
                            (_%__kont208892208893%_
                             _%tl205542205737%_
                             _%hd205541205735%_))))
                    (_%__kont208894208895%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self205507%_ _%ctx205508%_ _%stx205509%_ _%args205510%_)
        (let ((_%self205513%_ _%self205507%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx205508%_ _%stx205509%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self205195%_ _%stx205196%_)
        (let* ((_%__stx209000209001%_ _%stx205196%_)
               (_%g205199205239%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209000209001%_)))))
          (let ((_%__kont209002209003%_
                 (lambda (_%L205345%_ _%L205346%_)
                   (let ((_%$e205373%_
                          (member 'return:
                                  (let ((__tmp209432
                                         (lambda (_%g205365205368%_
                                                  _%g205366205370%_)
                                           (cons _%g205365205368%_
                                                 _%g205366205370%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp209432 '() _%L205346%_))
                                  gx#stx-eq?)))
                     (if _%$e205373%_
                         ((lambda (_%tail205376%_)
                            (let ((_%type205378%_
                                   (let ((__tmp209433
                                          (let ((__tmp209434
                                                 (cadr _%tail205376%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp209434))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx205196%_
                                      __tmp209433))))
                              (gxc#check-return-type!
                               _%stx205196%_
                               _%L205345%_
                               _%type205378%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self205195%_
                                 _%L205345%_))))
                          _%$e205373%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self205195%_ _%L205345%_))))))
                (_%__kont209006209007%_
                 (lambda (_%L205268%_ _%L205269%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self205195%_ _%L205268%_)))))
            (let ((_%__match209037209038%_
                   (lambda (_%e205203205289%_
                            _%hd205204205292%_
                            _%tl205205205294%_
                            _%e205206205297%_
                            _%hd205207205300%_
                            _%tl205208205302%_
                            _%e205209205305%_
                            _%hd205210205308%_
                            _%tl205211205310%_
                            _%__splice209004209005%_
                            _%target205212205313%_
                            _%tl205214205315%_)
                     (letrec ((_%loop205215205318%_
                               (lambda (_%hd205213205321%_
                                        _%signature205219205323%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd205213205321%_))
                                     (let ((_%e205216205326%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd205213205321%_))))
                                       (let ((_%lp-tl205218205331%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205216205326%_)))
                                             (_%lp-hd205217205329%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205216205326%_))))
                                         (_%loop205215205318%_
                                          _%lp-tl205218205331%_
                                          (cons _%lp-hd205217205329%_
                                                _%signature205219205323%_))))
                                     (let ((_%signature205220205334%_
                                            (reverse _%signature205219205323%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl205208205302%_))
                                           (let ((_%e205221205337%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl205208205302%_))))
                                             (let ((_%tl205223205342%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e205221205337%_)))
                                                   (_%hd205222205340%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e205221205337%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl205223205342%_))
                                                   (_%__kont209002209003%_
                                                    _%hd205222205340%_
                                                    _%signature205220205334%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g205199205239%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g205199205239%_))))))))
                       (_%loop205215205318%_ _%target205212205313%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209000209001%_))
                  (let ((_%e205203205289%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx209000209001%_))))
                    (let ((_%tl205205205294%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205203205289%_)))
                          (_%hd205204205292%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205203205289%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205205205294%_))
                          (let ((_%e205206205297%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl205205205294%_))))
                            (let ((_%tl205208205302%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205206205297%_)))
                                  (_%hd205207205300%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205206205297%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd205207205300%_))
                                  (let ((_%e205209205305%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd205207205300%_))))
                                    (let ((_%tl205211205310%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205209205305%_)))
                                          (_%hd205210205308%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205209205305%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd205210205308%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd205210205308%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl205211205310%_))
                                                  (let ((_%__splice209004209005%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl205211205310%_
                                                            '0))))
                                                    (let ((_%tl205214205315%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice209004209005%_
                                                              '1)))
                                                          (_%target205212205313%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice209004209005%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205214205315%_))
                                                          (_%__match209037209038%_
                                                           _%e205203205289%_
                                                           _%hd205204205292%_
                                                           _%tl205205205294%_
                                                           _%e205206205297%_
                                                           _%hd205207205300%_
                                                           _%tl205208205302%_
                                                           _%e205209205305%_
                                                           _%hd205210205308%_
                                                           _%tl205211205310%_
                                                           _%__splice209004209005%_
                                                           _%target205212205313%_
                                                           _%tl205214205315%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl205208205302%_))
                      (let ((_%e205232205260%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl205208205302%_))))
                        (let ((_%tl205234205265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205232205260%_)))
                              (_%hd205233205263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205232205260%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205234205265%_))
                              (_%__kont209006209007%_
                               _%hd205233205263%_
                               _%hd205207205300%_)
                              (let ()
                                (declare (not safe))
                                (_%g205199205239%_)))))
                      (let () (declare (not safe)) (_%g205199205239%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl205208205302%_))
                                                      (let ((_%e205232205260%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl205208205302%_))))
                (let ((_%tl205234205265%_
                       (let () (declare (not safe)) (##cdr _%e205232205260%_)))
                      (_%hd205233205263%_
                       (let ()
                         (declare (not safe))
                         (##car _%e205232205260%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205234205265%_))
                      (_%__kont209006209007%_
                       _%hd205233205263%_
                       _%hd205207205300%_)
                      (let () (declare (not safe)) (_%g205199205239%_)))))
              (let () (declare (not safe)) (_%g205199205239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205208205302%_))
                                                  (let ((_%e205232205260%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl205208205302%_))))
                                                    (let ((_%tl205234205265%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205232205260%_)))
                                                          (_%hd205233205263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205232205260%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205234205265%_))
                                                          (_%__kont209006209007%_
                                                           _%hd205233205263%_
                                                           _%hd205207205300%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g205199205239%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g205199205239%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205208205302%_))
                                              (let ((_%e205232205260%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl205208205302%_))))
                                                (let ((_%tl205234205265%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205232205260%_)))
                                                      (_%hd205233205263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205232205260%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205234205265%_))
                                                      (_%__kont209006209007%_
                                                       _%hd205233205263%_
                                                       _%hd205207205300%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205199205239%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205199205239%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205208205302%_))
                                      (let ((_%e205232205260%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl205208205302%_))))
                                        (let ((_%tl205234205265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205232205260%_)))
                                              (_%hd205233205263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205232205260%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205234205265%_))
                                              (_%__kont209006209007%_
                                               _%hd205233205263%_
                                               _%hd205207205300%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g205199205239%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205199205239%_))))))
                          (let () (declare (not safe)) (_%g205199205239%_)))))
                  (let () (declare (not safe)) (_%g205199205239%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx205170%_ _%expr205171%_ _%type205172%_)
        (let ((_%$e205174%_ (not _%type205172%_)))
          (if _%$e205174%_
              _%$e205174%_
              (let ((_%$e205177%_
                     (eq? (##structure-ref _%type205172%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e205177%_
                    _%$e205177%_
                    (let ((_%$e205180%_
                           (eq? (##structure-ref
                                 _%type205172%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e205180%_
                          _%$e205180%_
                          (let ((_%expr-type205184%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr205171%_))))
                            (if (not _%expr-type205184%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx205170%_
                                   _%type205172%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type205184%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx205170%_
                                       _%type205172%_
                                       _%expr-type205184%_))
                                    (let ((_%$e205188%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type205184%_
                                              'gxc#!abort::t))))
                                      (if _%$e205188%_
                                          _%$e205188%_
                                          (let ((_%$e205191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type205184%_
                                                    _%type205172%_))))
                                            (if _%$e205191%_
                                                _%$e205191%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx205170%_
                                                   _%type205172%_
                                                   _%expr-type205184%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self204596%_ _%stx204597%_)
        (let* ((_%__stx209082209083%_ _%stx204597%_)
               (_%g204602204712%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209082209083%_)))))
          (let ((_%__kont209084209085%_
                 (lambda (_%L205144%_ _%L205145%_ _%L205146%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L205146%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self204596%_ _%L205145%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self204596%_ _%L205144%_)))))
                (_%__kont209086209087%_
                 (lambda (_%L204970%_ _%L204971%_ _%L204972%_ _%L204973%_)
                   (let ((_%$e205005%_
                          (let ((__tmp209435
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L204973%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp209435))))
                     (if _%$e205005%_
                         ((lambda (_%pred-type205008%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type205008%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type205008%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test205013%_
                                        (let ((__tmp209436
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L204973%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L204972%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp209436
                                           _%stx204597%_
                                           _%self204596%_)))
                                       (_%K205017%_
                                        (let ((__tmp209437
                                               (lambda ()
                                                 (let ((__tmp209440
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self204596%_
                                                             _%L204971%_))))
                                                       (__tmp209438
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L204972%_))
                            (let ((__tmp209439
                                   (##structure-ref
                                    _%pred-type205008%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx204597%_
                               __tmp209439)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp209440
                                                    gxc#current-compile-path-type
                                                    __tmp209438)))))
                                          (declare (not safe))
                                          (__make-promise __tmp209437)))
                                       (_%E205020%_
                                        (let ((__tmp209441
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self204596%_
                                                    _%L204970%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp209441)))
                                       (_%__stx209060209061%_ _%test205013%_)
                                       (_%g205024205038%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx209060209061%_)))))
                                  (let ((_%__kont209062209063%_
                                         (lambda (_%L205066%_ _%L205067%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L205066%_))
                                               (force _%K205017%_)
                                               (force _%E205020%_))))
                                        (_%__kont209064209065%_
                                         (lambda ()
                                           (let ((__tmp209442
                                                  (cons '%#if
                                                        (cons _%test205013%_
                                                              (cons (force _%K205017%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E205020%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209442
                                              _%stx204597%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx209060209061%_))
                                        (let ((_%e205028205050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx209060209061%_))))
                                          (let ((_%tl205030205055%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e205028205050%_)))
                                                (_%hd205029205053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e205028205050%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205030205055%_))
                                                (let ((_%e205031205058%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl205030205055%_))))
                                                  (let ((_%tl205033205063%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205031205058%_)))
                                                        (_%hd205032205061%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205031205058%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205033205063%_))
                                                        (_%__kont209062209063%_
                                                         _%hd205032205061%_
                                                         _%hd205029205053%_)
                                                        (_%__kont209064209065%_))))
                                                (_%__kont209064209065%_))))
                                        (_%__kont209064209065%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self204596%_
                                   _%stx204597%_))))
                          _%$e205005%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self204596%_
                            _%stx204597%_))))))
                (_%__kont209088209089%_
                 (lambda (_%L204846%_ _%L204847%_ _%L204848%_ _%L204849%_)
                   (gxc#optimize-if%
                    _%self204596%_
                    (let ((__tmp209443
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L204848%_
                                       (cons _%L204846%_
                                             (cons _%L204847%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209443 _%stx204597%_)))))
                (_%__kont209090209091%_
                 (lambda (_%L204749%_ _%L204750%_ _%L204751%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self204596%_ _%stx204597%_)))))
            (let ((_%__match209289209290%_
                   (lambda (_%e204666204774%_
                            _%hd204667204777%_
                            _%tl204668204779%_
                            _%e204669204782%_
                            _%hd204670204785%_
                            _%tl204671204787%_
                            _%e204672204790%_
                            _%hd204673204793%_
                            _%tl204674204795%_
                            _%e204675204798%_
                            _%hd204676204801%_
                            _%tl204677204803%_
                            _%e204678204806%_
                            _%hd204679204809%_
                            _%tl204680204811%_
                            _%e204681204814%_
                            _%hd204682204817%_
                            _%tl204683204819%_
                            _%e204684204822%_
                            _%hd204685204825%_
                            _%tl204686204827%_
                            _%e204687204830%_
                            _%hd204688204833%_
                            _%tl204689204835%_
                            _%e204690204838%_
                            _%hd204691204841%_
                            _%tl204692204843%_)
                     (let ((_%L204846%_ _%hd204691204841%_)
                           (_%L204847%_ _%hd204688204833%_)
                           (_%L204848%_ _%hd204685204825%_)
                           (_%L204849%_ _%hd204682204817%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L204849%_ 'not))
                           (_%__kont209088209089%_
                            _%L204846%_
                            _%L204847%_
                            _%L204848%_
                            _%L204849%_)
                           (_%__kont209090209091%_
                            _%hd204691204841%_
                            _%hd204688204833%_
                            _%hd204670204785%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209082209083%_))
                  (let ((_%e204607205096%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx209082209083%_))))
                    (let ((_%tl204609205101%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204607205096%_)))
                          (_%hd204608205099%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204607205096%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204609205101%_))
                          (let ((_%e204610205104%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204609205101%_))))
                            (let ((_%tl204612205109%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204610205104%_)))
                                  (_%hd204611205107%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204610205104%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd204611205107%_))
                                  (let ((_%e204613205112%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204611205107%_))))
                                    (let ((_%tl204615205117%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204613205112%_)))
                                          (_%hd204614205115%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204613205112%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd204614205115%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd204614205115%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204615205117%_))
                                                  (let ((_%e204616205120%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204615205117%_))))
                                                    (let ((_%tl204618205125%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204616205120%_)))
                                                          (_%hd204617205123%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204616205120%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204618205125%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl204612205109%_))
                      (let ((_%e204619205128%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204612205109%_))))
                        (let ((_%tl204621205133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204619205128%_)))
                              (_%hd204620205131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204619205128%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204621205133%_))
                              (let ((_%e204622205136%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204621205133%_))))
                                (let ((_%tl204624205141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204622205136%_)))
                                      (_%hd204623205139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204622205136%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204624205141%_))
                                      (_%__kont209084209085%_
                                       _%hd204623205139%_
                                       _%hd204620205131%_
                                       _%hd204617205123%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g204602204712%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g204602204712%_)))))
                      (let () (declare (not safe)) (_%g204602204712%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204612205109%_))
                      (let ((_%e204702204733%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204612205109%_))))
                        (let ((_%tl204704204738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204702204733%_)))
                              (_%hd204703204736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204702204733%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204704204738%_))
                              (let ((_%e204705204741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204704204738%_))))
                                (let ((_%tl204707204746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204705204741%_)))
                                      (_%hd204706204744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204705204741%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204707204746%_))
                                      (_%__kont209090209091%_
                                       _%hd204706204744%_
                                       _%hd204703204736%_
                                       _%hd204611205107%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g204602204712%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g204602204712%_)))))
                      (let () (declare (not safe)) (_%g204602204712%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204612205109%_))
                                                      (let ((_%e204702204733%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204612205109%_))))
                (let ((_%tl204704204738%_
                       (let () (declare (not safe)) (##cdr _%e204702204733%_)))
                      (_%hd204703204736%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204702204733%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204704204738%_))
                      (let ((_%e204705204741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204704204738%_))))
                        (let ((_%tl204707204746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204705204741%_)))
                              (_%hd204706204744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204705204741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204707204746%_))
                              (_%__kont209090209091%_
                               _%hd204706204744%_
                               _%hd204703204736%_
                               _%hd204611205107%_)
                              (let ()
                                (declare (not safe))
                                (_%g204602204712%_)))))
                      (let () (declare (not safe)) (_%g204602204712%_)))))
              (let () (declare (not safe)) (_%g204602204712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd204614205115%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204615205117%_))
                                                      (let ((_%e204638204906%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204615205117%_))))
                (let ((_%tl204640204911%_
                       (let () (declare (not safe)) (##cdr _%e204638204906%_)))
                      (_%hd204639204909%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204638204906%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd204639204909%_))
                      (let ((_%e204641204914%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd204639204909%_))))
                        (let ((_%tl204643204919%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204641204914%_)))
                              (_%hd204642204917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204641204914%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd204642204917%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd204642204917%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204643204919%_))
                                      (let ((_%e204644204922%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204643204919%_))))
                                        (let ((_%tl204646204927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204644204922%_)))
                                              (_%hd204645204925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204644204922%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204646204927%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204640204911%_))
                                                  (let ((_%e204647204930%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204640204911%_))))
                                                    (let ((_%tl204649204935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204647204930%_)))
                                                          (_%hd204648204933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204647204930%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd204648204933%_))
                                                          (let ((_%e204650204938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd204648204933%_))))
                    (let ((_%tl204652204943%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204650204938%_)))
                          (_%hd204651204941%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204650204938%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd204651204941%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd204651204941%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204652204943%_))
                                  (let ((_%e204653204946%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204652204943%_))))
                                    (let ((_%tl204655204951%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204653204946%_)))
                                          (_%hd204654204949%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204653204946%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204655204951%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204649204935%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204612205109%_))
                                                  (let ((_%e204656204954%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204612205109%_))))
                                                    (let ((_%tl204658204959%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204656204954%_)))
                                                          (_%hd204657204957%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204656204954%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204658204959%_))
                                                          (let ((_%e204659204962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204658204959%_))))
                    (let ((_%tl204661204967%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204659204962%_)))
                          (_%hd204660204965%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204659204962%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204661204967%_))
                          (_%__kont209086209087%_
                           _%hd204660204965%_
                           _%hd204657204957%_
                           _%hd204654204949%_
                           _%hd204645204925%_)
                          (let () (declare (not safe)) (_%g204602204712%_)))))
                  (let () (declare (not safe)) (_%g204602204712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204602204712%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204612205109%_))
                                                  (let ((_%e204702204733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204612205109%_))))
                                                    (let ((_%tl204704204738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204702204733%_)))
                                                          (_%hd204703204736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204702204733%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204704204738%_))
                                                          (let ((_%e204705204741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204704204738%_))))
                    (let ((_%tl204707204746%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204705204741%_)))
                          (_%hd204706204744%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204705204741%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204707204746%_))
                          (_%__kont209090209091%_
                           _%hd204706204744%_
                           _%hd204703204736%_
                           _%hd204611205107%_)
                          (let () (declare (not safe)) (_%g204602204712%_)))))
                  (let () (declare (not safe)) (_%g204602204712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204602204712%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204649204935%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204612205109%_))
                                                  (let ((_%e204687204830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204612205109%_))))
                                                    (let ((_%tl204689204835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204687204830%_)))
                                                          (_%hd204688204833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204687204830%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204689204835%_))
                                                          (let ((_%e204690204838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204689204835%_))))
                    (let ((_%tl204692204843%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204690204838%_)))
                          (_%hd204691204841%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204690204838%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204692204843%_))
                          (_%__match209289209290%_
                           _%e204607205096%_
                           _%hd204608205099%_
                           _%tl204609205101%_
                           _%e204610205104%_
                           _%hd204611205107%_
                           _%tl204612205109%_
                           _%e204613205112%_
                           _%hd204614205115%_
                           _%tl204615205117%_
                           _%e204638204906%_
                           _%hd204639204909%_
                           _%tl204640204911%_
                           _%e204641204914%_
                           _%hd204642204917%_
                           _%tl204643204919%_
                           _%e204644204922%_
                           _%hd204645204925%_
                           _%tl204646204927%_
                           _%e204647204930%_
                           _%hd204648204933%_
                           _%tl204649204935%_
                           _%e204687204830%_
                           _%hd204688204833%_
                           _%tl204689204835%_
                           _%e204690204838%_
                           _%hd204691204841%_
                           _%tl204692204843%_)
                          (let () (declare (not safe)) (_%g204602204712%_)))))
                  (let () (declare (not safe)) (_%g204602204712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204602204712%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204612205109%_))
                                                  (let ((_%e204702204733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204612205109%_))))
                                                    (let ((_%tl204704204738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204702204733%_)))
                                                          (_%hd204703204736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204702204733%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204704204738%_))
                                                          (let ((_%e204705204741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204704204738%_))))
                    (let ((_%tl204707204746%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204705204741%_)))
                          (_%hd204706204744%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204705204741%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204707204746%_))
                          (_%__kont209090209091%_
                           _%hd204706204744%_
                           _%hd204703204736%_
                           _%hd204611205107%_)
                          (let () (declare (not safe)) (_%g204602204712%_)))))
                  (let () (declare (not safe)) (_%g204602204712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204602204712%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204649204935%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204612205109%_))
                                          (let ((_%e204687204830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204612205109%_))))
                                            (let ((_%tl204689204835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204687204830%_)))
                                                  (_%hd204688204833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204687204830%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204689204835%_))
                                                  (let ((_%e204690204838%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204689204835%_))))
                                                    (let ((_%tl204692204843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204690204838%_)))
                                                          (_%hd204691204841%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204690204838%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204692204843%_))
                                                          (_%__match209289209290%_
                                                           _%e204607205096%_
                                                           _%hd204608205099%_
                                                           _%tl204609205101%_
                                                           _%e204610205104%_
                                                           _%hd204611205107%_
                                                           _%tl204612205109%_
                                                           _%e204613205112%_
                                                           _%hd204614205115%_
                                                           _%tl204615205117%_
                                                           _%e204638204906%_
                                                           _%hd204639204909%_
                                                           _%tl204640204911%_
                                                           _%e204641204914%_
                                                           _%hd204642204917%_
                                                           _%tl204643204919%_
                                                           _%e204644204922%_
                                                           _%hd204645204925%_
                                                           _%tl204646204927%_
                                                           _%e204647204930%_
                                                           _%hd204648204933%_
                                                           _%tl204649204935%_
                                                           _%e204687204830%_
                                                           _%hd204688204833%_
                                                           _%tl204689204835%_
                                                           _%e204690204838%_
                                                           _%hd204691204841%_
                                                           _%tl204692204843%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204602204712%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204602204712%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204602204712%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204612205109%_))
                                          (let ((_%e204702204733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204612205109%_))))
                                            (let ((_%tl204704204738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204702204733%_)))
                                                  (_%hd204703204736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204702204733%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204704204738%_))
                                                  (let ((_%e204705204741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204704204738%_))))
                                                    (let ((_%tl204707204746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204705204741%_)))
                                                          (_%hd204706204744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204705204741%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204707204746%_))
                                                          (_%__kont209090209091%_
                                                           _%hd204706204744%_
                                                           _%hd204703204736%_
                                                           _%hd204611205107%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204602204712%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204602204712%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204602204712%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204649204935%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204612205109%_))
                                      (let ((_%e204687204830%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204612205109%_))))
                                        (let ((_%tl204689204835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204687204830%_)))
                                              (_%hd204688204833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204687204830%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204689204835%_))
                                              (let ((_%e204690204838%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204689204835%_))))
                                                (let ((_%tl204692204843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204690204838%_)))
                                                      (_%hd204691204841%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204690204838%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204692204843%_))
                                                      (_%__match209289209290%_
                                                       _%e204607205096%_
                                                       _%hd204608205099%_
                                                       _%tl204609205101%_
                                                       _%e204610205104%_
                                                       _%hd204611205107%_
                                                       _%tl204612205109%_
                                                       _%e204613205112%_
                                                       _%hd204614205115%_
                                                       _%tl204615205117%_
                                                       _%e204638204906%_
                                                       _%hd204639204909%_
                                                       _%tl204640204911%_
                                                       _%e204641204914%_
                                                       _%hd204642204917%_
                                                       _%tl204643204919%_
                                                       _%e204644204922%_
                                                       _%hd204645204925%_
                                                       _%tl204646204927%_
                                                       _%e204647204930%_
                                                       _%hd204648204933%_
                                                       _%tl204649204935%_
                                                       _%e204687204830%_
                                                       _%hd204688204833%_
                                                       _%tl204689204835%_
                                                       _%e204690204838%_
                                                       _%hd204691204841%_
                                                       _%tl204692204843%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204602204712%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204602204712%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204602204712%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204612205109%_))
                                      (let ((_%e204702204733%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204612205109%_))))
                                        (let ((_%tl204704204738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204702204733%_)))
                                              (_%hd204703204736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204702204733%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204704204738%_))
                                              (let ((_%e204705204741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204704204738%_))))
                                                (let ((_%tl204707204746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204705204741%_)))
                                                      (_%hd204706204744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204705204741%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204707204746%_))
                                                      (_%__kont209090209091%_
                                                       _%hd204706204744%_
                                                       _%hd204703204736%_
                                                       _%hd204611205107%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204602204712%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204602204712%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204602204712%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204649204935%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204612205109%_))
                                  (let ((_%e204687204830%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204612205109%_))))
                                    (let ((_%tl204689204835%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204687204830%_)))
                                          (_%hd204688204833%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204687204830%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204689204835%_))
                                          (let ((_%e204690204838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204689204835%_))))
                                            (let ((_%tl204692204843%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204690204838%_)))
                                                  (_%hd204691204841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204690204838%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204692204843%_))
                                                  (_%__match209289209290%_
                                                   _%e204607205096%_
                                                   _%hd204608205099%_
                                                   _%tl204609205101%_
                                                   _%e204610205104%_
                                                   _%hd204611205107%_
                                                   _%tl204612205109%_
                                                   _%e204613205112%_
                                                   _%hd204614205115%_
                                                   _%tl204615205117%_
                                                   _%e204638204906%_
                                                   _%hd204639204909%_
                                                   _%tl204640204911%_
                                                   _%e204641204914%_
                                                   _%hd204642204917%_
                                                   _%tl204643204919%_
                                                   _%e204644204922%_
                                                   _%hd204645204925%_
                                                   _%tl204646204927%_
                                                   _%e204647204930%_
                                                   _%hd204648204933%_
                                                   _%tl204649204935%_
                                                   _%e204687204830%_
                                                   _%hd204688204833%_
                                                   _%tl204689204835%_
                                                   _%e204690204838%_
                                                   _%hd204691204841%_
                                                   _%tl204692204843%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204602204712%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204602204712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204602204712%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204612205109%_))
                                  (let ((_%e204702204733%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204612205109%_))))
                                    (let ((_%tl204704204738%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204702204733%_)))
                                          (_%hd204703204736%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204702204733%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204704204738%_))
                                          (let ((_%e204705204741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204704204738%_))))
                                            (let ((_%tl204707204746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204705204741%_)))
                                                  (_%hd204706204744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204705204741%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204707204746%_))
                                                  (_%__kont209090209091%_
                                                   _%hd204706204744%_
                                                   _%hd204703204736%_
                                                   _%hd204611205107%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204602204712%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204602204712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204602204712%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204649204935%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204612205109%_))
                          (let ((_%e204687204830%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204612205109%_))))
                            (let ((_%tl204689204835%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204687204830%_)))
                                  (_%hd204688204833%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204687204830%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204689204835%_))
                                  (let ((_%e204690204838%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204689204835%_))))
                                    (let ((_%tl204692204843%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204690204838%_)))
                                          (_%hd204691204841%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204690204838%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204692204843%_))
                                          (_%__match209289209290%_
                                           _%e204607205096%_
                                           _%hd204608205099%_
                                           _%tl204609205101%_
                                           _%e204610205104%_
                                           _%hd204611205107%_
                                           _%tl204612205109%_
                                           _%e204613205112%_
                                           _%hd204614205115%_
                                           _%tl204615205117%_
                                           _%e204638204906%_
                                           _%hd204639204909%_
                                           _%tl204640204911%_
                                           _%e204641204914%_
                                           _%hd204642204917%_
                                           _%tl204643204919%_
                                           _%e204644204922%_
                                           _%hd204645204925%_
                                           _%tl204646204927%_
                                           _%e204647204930%_
                                           _%hd204648204933%_
                                           _%tl204649204935%_
                                           _%e204687204830%_
                                           _%hd204688204833%_
                                           _%tl204689204835%_
                                           _%e204690204838%_
                                           _%hd204691204841%_
                                           _%tl204692204843%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204602204712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204602204712%_)))))
                          (let () (declare (not safe)) (_%g204602204712%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204612205109%_))
                          (let ((_%e204702204733%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204612205109%_))))
                            (let ((_%tl204704204738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204702204733%_)))
                                  (_%hd204703204736%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204702204733%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204704204738%_))
                                  (let ((_%e204705204741%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204704204738%_))))
                                    (let ((_%tl204707204746%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204705204741%_)))
                                          (_%hd204706204744%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204705204741%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204707204746%_))
                                          (_%__kont209090209091%_
                                           _%hd204706204744%_
                                           _%hd204703204736%_
                                           _%hd204611205107%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204602204712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204602204712%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g204602204712%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204612205109%_))
                                                      (let ((_%e204702204733%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204612205109%_))))
                (let ((_%tl204704204738%_
                       (let () (declare (not safe)) (##cdr _%e204702204733%_)))
                      (_%hd204703204736%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204702204733%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204704204738%_))
                      (let ((_%e204705204741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204704204738%_))))
                        (let ((_%tl204707204746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204705204741%_)))
                              (_%hd204706204744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204705204741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204707204746%_))
                              (_%__kont209090209091%_
                               _%hd204706204744%_
                               _%hd204703204736%_
                               _%hd204611205107%_)
                              (let ()
                                (declare (not safe))
                                (_%g204602204712%_)))))
                      (let () (declare (not safe)) (_%g204602204712%_)))))
              (let () (declare (not safe)) (_%g204602204712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204612205109%_))
                                                  (let ((_%e204702204733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204612205109%_))))
                                                    (let ((_%tl204704204738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204702204733%_)))
                                                          (_%hd204703204736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204702204733%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204704204738%_))
                                                          (let ((_%e204705204741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204704204738%_))))
                    (let ((_%tl204707204746%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204705204741%_)))
                          (_%hd204706204744%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204705204741%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204707204746%_))
                          (_%__kont209090209091%_
                           _%hd204706204744%_
                           _%hd204703204736%_
                           _%hd204611205107%_)
                          (let () (declare (not safe)) (_%g204602204712%_)))))
                  (let () (declare (not safe)) (_%g204602204712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204602204712%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204612205109%_))
                                          (let ((_%e204702204733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204612205109%_))))
                                            (let ((_%tl204704204738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204702204733%_)))
                                                  (_%hd204703204736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204702204733%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204704204738%_))
                                                  (let ((_%e204705204741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204704204738%_))))
                                                    (let ((_%tl204707204746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204705204741%_)))
                                                          (_%hd204706204744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204705204741%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204707204746%_))
                                                          (_%__kont209090209091%_
                                                           _%hd204706204744%_
                                                           _%hd204703204736%_
                                                           _%hd204611205107%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204602204712%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204602204712%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204602204712%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204612205109%_))
                                      (let ((_%e204702204733%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204612205109%_))))
                                        (let ((_%tl204704204738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204702204733%_)))
                                              (_%hd204703204736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204702204733%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204704204738%_))
                                              (let ((_%e204705204741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204704204738%_))))
                                                (let ((_%tl204707204746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204705204741%_)))
                                                      (_%hd204706204744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204705204741%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204707204746%_))
                                                      (_%__kont209090209091%_
                                                       _%hd204706204744%_
                                                       _%hd204703204736%_
                                                       _%hd204611205107%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204602204712%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204602204712%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204602204712%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204612205109%_))
                                  (let ((_%e204702204733%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204612205109%_))))
                                    (let ((_%tl204704204738%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204702204733%_)))
                                          (_%hd204703204736%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204702204733%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204704204738%_))
                                          (let ((_%e204705204741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204704204738%_))))
                                            (let ((_%tl204707204746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204705204741%_)))
                                                  (_%hd204706204744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204705204741%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204707204746%_))
                                                  (_%__kont209090209091%_
                                                   _%hd204706204744%_
                                                   _%hd204703204736%_
                                                   _%hd204611205107%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204602204712%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204602204712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204602204712%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204612205109%_))
                          (let ((_%e204702204733%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204612205109%_))))
                            (let ((_%tl204704204738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204702204733%_)))
                                  (_%hd204703204736%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204702204733%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204704204738%_))
                                  (let ((_%e204705204741%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204704204738%_))))
                                    (let ((_%tl204707204746%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204705204741%_)))
                                          (_%hd204706204744%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204705204741%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204707204746%_))
                                          (_%__kont209090209091%_
                                           _%hd204706204744%_
                                           _%hd204703204736%_
                                           _%hd204611205107%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204602204712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204602204712%_)))))
                          (let () (declare (not safe)) (_%g204602204712%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl204612205109%_))
                  (let ((_%e204702204733%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204612205109%_))))
                    (let ((_%tl204704204738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204702204733%_)))
                          (_%hd204703204736%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204702204733%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204704204738%_))
                          (let ((_%e204705204741%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204704204738%_))))
                            (let ((_%tl204707204746%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204705204741%_)))
                                  (_%hd204706204744%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204705204741%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204707204746%_))
                                  (_%__kont209090209091%_
                                   _%hd204706204744%_
                                   _%hd204703204736%_
                                   _%hd204611205107%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g204602204712%_)))))
                          (let () (declare (not safe)) (_%g204602204712%_)))))
                  (let () (declare (not safe)) (_%g204602204712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204612205109%_))
                                                      (let ((_%e204702204733%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204612205109%_))))
                (let ((_%tl204704204738%_
                       (let () (declare (not safe)) (##cdr _%e204702204733%_)))
                      (_%hd204703204736%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204702204733%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204704204738%_))
                      (let ((_%e204705204741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204704204738%_))))
                        (let ((_%tl204707204746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204705204741%_)))
                              (_%hd204706204744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204705204741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204707204746%_))
                              (_%__kont209090209091%_
                               _%hd204706204744%_
                               _%hd204703204736%_
                               _%hd204611205107%_)
                              (let ()
                                (declare (not safe))
                                (_%g204602204712%_)))))
                      (let () (declare (not safe)) (_%g204602204712%_)))))
              (let () (declare (not safe)) (_%g204602204712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204612205109%_))
                                              (let ((_%e204702204733%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204612205109%_))))
                                                (let ((_%tl204704204738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204702204733%_)))
                                                      (_%hd204703204736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204702204733%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204704204738%_))
                                                      (let ((_%e204705204741%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204704204738%_))))
                (let ((_%tl204707204746%_
                       (let () (declare (not safe)) (##cdr _%e204705204741%_)))
                      (_%hd204706204744%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204705204741%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204707204746%_))
                      (_%__kont209090209091%_
                       _%hd204706204744%_
                       _%hd204703204736%_
                       _%hd204611205107%_)
                      (let () (declare (not safe)) (_%g204602204712%_)))))
              (let () (declare (not safe)) (_%g204602204712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g204602204712%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204612205109%_))
                                      (let ((_%e204702204733%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204612205109%_))))
                                        (let ((_%tl204704204738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204702204733%_)))
                                              (_%hd204703204736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204702204733%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204704204738%_))
                                              (let ((_%e204705204741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204704204738%_))))
                                                (let ((_%tl204707204746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204705204741%_)))
                                                      (_%hd204706204744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204705204741%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204707204746%_))
                                                      (_%__kont209090209091%_
                                                       _%hd204706204744%_
                                                       _%hd204703204736%_
                                                       _%hd204611205107%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204602204712%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204602204712%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204602204712%_))))))
                          (let () (declare (not safe)) (_%g204602204712%_)))))
                  (let () (declare (not safe)) (_%g204602204712%_))))))))))
