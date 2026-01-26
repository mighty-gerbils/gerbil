(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1769384635)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp209446 (list gxc#::basic-xform::t))
            (__tmp209445 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp209446
         '()
         __tmp209445
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args208723%_
        (apply make-instance gxc#::optimize-call::t _%$args208723%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp209447
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
        (__make-atomic-promise __tmp209447)))
    (define gxc#apply-optimize-call
      (lambda (_%stx208715%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self208718%_
                (let ((__obj209437
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj209437))
               (__tmp209448
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208718%_ _%stx208715%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209448
           gxc#current-compile-method
           _%self208718%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp209450 (list gxc#::void::t))
            (__tmp209449 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp209450
         '()
         __tmp209449
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args208712%_
        (apply make-instance gxc#::check-return-type::t _%$args208712%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp209451
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
        (__make-atomic-promise __tmp209451)))
    (define gxc#apply-check-return-type
      (lambda (_%stx208704%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self208707%_
                (let ((__obj209439
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj209439))
               (__tmp209452
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208707%_ _%stx208704%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209452
           gxc#current-compile-method
           _%self208707%_))))
    (define gxc#optimize-call%
      (lambda (_%self208311%_ _%stx208312%_)
        (let* ((_%__stx208792208793%_ _%stx208312%_)
               (_%g208315208361%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208792208793%_)))))
          (let ((_%__kont208794208795%_
                 (lambda (_%g208317208500%_ _%g208318208501%_)
                   (let* ((_%rator-id208521%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g208318208501%_)))
                          (_%rator-type208523%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id208521%_))))
                     (if (or (not _%rator-type208523%_)
                             (eq? (##structure-ref
                                   _%rator-type208523%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self208311%_ _%stx208312%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type208523%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp209453
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type208523%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id208521%_
                                  '" => "
                                  _%rator-type208523%_
                                  '" "
                                  __tmp209453))
                               (let* ((_%optimized208538%_
                                       (let ((__method209440
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type208523%_
                                                 'optimize-call))))
                                         (if __method209440
                                             (let ((__tmp209454
                                                    (let ((__tmp209455
                                                           (lambda (_%g208530208533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g208531208535%_)
                     (cons _%g208530208533%_ _%g208531208535%_))))
              (declare (not safe))
              (__foldr1 __tmp209455 '() _%g208317208500%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method209440
                                                _%rator-type208523%_
                                                _%self208311%_
                                                _%stx208312%_
                                                __tmp209454))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type208523%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx208740208741%_
                                       _%optimized208538%_)
                                      (_%g208541208570%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx208740208741%_)))))
                                 (let ((_%__kont208742208743%_
                                        (lambda (_%g208543208636%_
                                                 _%g208544208637%_)
                                          (let* ((_%optimized-rator-id208664%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g208544208637%_)))
                                                 (_%rator-type208669%_
                                                  (let ((_%$e208666%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id208664%_))))
                                                    (if _%$e208666%_
                                                        _%$e208666%_
                                                        _%rator-type208523%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type208669%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id208664%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type208669%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type208669%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized208538%_
                                                (let ((__tmp209456
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g208544208637%_ '()))
                           (let ((__tmp209457
                                  (lambda (_%g208677208680%_ _%g208678208682%_)
                                    (cons _%g208677208680%_
                                          _%g208678208682%_))))
                             (declare (not safe))
                             (__foldr1 __tmp209457 '() _%g208543208636%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp209456
                                                   _%stx208312%_))))))
                                       (_%__kont208746208747%_
                                        (lambda () _%optimized208538%_)))
                                   (let ((_%__match208789208790%_
                                          (lambda (_%e208545208582%_
                                                   _%hd208546208585%_
                                                   _%tl208547208587%_
                                                   _%e208548208590%_
                                                   _%hd208549208593%_
                                                   _%tl208550208595%_
                                                   _%e208551208598%_
                                                   _%hd208552208601%_
                                                   _%tl208553208603%_
                                                   _%e208554208606%_
                                                   _%hd208555208609%_
                                                   _%tl208556208611%_
                                                   _%__splice208744208745%_
                                                   _%target208557208614%_
                                                   _%tl208559208616%_)
                                            (letrec ((_%loop208560208619%_
                                                      (lambda (_%hd208558208622%_
                                                               _%arg208564208624%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd208558208622%_))
                                                            (let ((_%e208561208626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd208558208622%_))))
                      (let ((_%lp-tl208563208631%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208561208626%_)))
                            (_%lp-hd208562208629%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208561208626%_))))
                        (_%loop208560208619%_
                         _%lp-tl208563208631%_
                         (cons _%lp-hd208562208629%_ _%arg208564208624%_))))
                    (let ((_%arg208565208634%_ (reverse _%arg208564208624%_)))
                      (_%__kont208742208743%_
                       _%arg208565208634%_
                       _%hd208555208609%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop208560208619%_
                                               _%target208557208614%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx208740208741%_))
                                         (let ((_%e208545208582%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx208740208741%_))))
                                           (let ((_%tl208547208587%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208545208582%_)))
                                                 (_%hd208546208585%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208545208582%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd208546208585%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd208546208585%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl208547208587%_))
                                                         (let ((_%e208548208590%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl208547208587%_))))
                   (let ((_%tl208550208595%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e208548208590%_)))
                         (_%hd208549208593%_
                          (let ()
                            (declare (not safe))
                            (##car _%e208548208590%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd208549208593%_))
                         (let ((_%e208551208598%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd208549208593%_))))
                           (let ((_%tl208553208603%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e208551208598%_)))
                                 (_%hd208552208601%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e208551208598%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd208552208601%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd208552208601%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl208553208603%_))
                                         (let ((_%e208554208606%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl208553208603%_))))
                                           (let ((_%tl208556208611%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208554208606%_)))
                                                 (_%hd208555208609%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208554208606%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl208556208611%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl208550208595%_))
                                                     (let ((_%__splice208744208745%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl208550208595%_
                                                               '0))))
                                                       (let ((_%tl208559208616%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice208744208745%_ '1)))
                     (_%target208557208614%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice208744208745%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl208559208616%_))
                     (_%__match208789208790%_
                      _%e208545208582%_
                      _%hd208546208585%_
                      _%tl208547208587%_
                      _%e208548208590%_
                      _%hd208549208593%_
                      _%tl208550208595%_
                      _%e208551208598%_
                      _%hd208552208601%_
                      _%tl208553208603%_
                      _%e208554208606%_
                      _%hd208555208609%_
                      _%tl208556208611%_
                      _%__splice208744208745%_
                      _%target208557208614%_
                      _%tl208559208616%_)
                     (_%__kont208746208747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont208746208747%_))
                                                 (_%__kont208746208747%_))))
                                         (_%__kont208746208747%_))
                                     (_%__kont208746208747%_))
                                 (_%__kont208746208747%_))))
                         (_%__kont208746208747%_))))
                 (_%__kont208746208747%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont208746208747%_))
                                                 (_%__kont208746208747%_))))
                                         (_%__kont208746208747%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type208523%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type208523%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp209458
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g208318208501%_
                                                                '()))
                                                    (map (lambda (_%g208688208690%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self208311%_
                                                              _%g208688208690%_)))
                                                         (let ((__tmp209459
                                                                (lambda (_%g208692208695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g208693208697%_)
                          (cons _%g208692208695%_ _%g208693208697%_))))
                   (declare (not safe))
                   (__foldr1 __tmp209459 '() _%g208317208500%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp209458
                                    _%stx208312%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx208312%_
                                    _%rator-type208523%_))))))))
                (_%__kont208798208799%_
                 (lambda (_%g208340208404%_ _%g208341208405%_)
                   (let ((_%rator-type208422%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g208341208405%_))))
                     (if (and _%rator-type208422%_
                              (eq? (##structure-ref
                                    _%rator-type208422%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type208422%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type208422%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type208422%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp209460
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self208311%_
                                               _%g208341208405%_))
                                            (map (lambda (_%g208424208426%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self208311%_
                                                      _%g208424208426%_)))
                                                 (let ((__tmp209461
                                                        (lambda (_%g208428208431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g208429208433%_)
                  (cons _%g208428208431%_ _%g208429208433%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp209461
                                                    '()
                                                    _%g208340208404%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp209460 _%stx208312%_))
                         (if (or (not _%rator-type208422%_)
                                 (let ((__tmp209462
                                        (##structure-ref
                                         _%rator-type208422%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp209462 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self208311%_ _%stx208312%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx208312%_
                                _%rator-type208422%_))))))))
            (let* ((_%__match208859208860%_
                    (lambda (_%e208342208366%_
                             _%hd208343208369%_
                             _%tl208344208371%_
                             _%e208345208374%_
                             _%hd208346208377%_
                             _%tl208347208379%_
                             _%__splice208800208801%_
                             _%target208348208382%_
                             _%tl208350208384%_)
                      (letrec ((_%loop208351208387%_
                                (lambda (_%hd208349208390%_
                                         _%rand208355208392%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd208349208390%_))
                                      (let ((_%e208352208394%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd208349208390%_))))
                                        (let ((_%lp-tl208354208399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208352208394%_)))
                                              (_%lp-hd208353208397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208352208394%_))))
                                          (_%loop208351208387%_
                                           _%lp-tl208354208399%_
                                           (cons _%lp-hd208353208397%_
                                                 _%rand208355208392%_))))
                                      (let ((_%rand208356208402%_
                                             (reverse _%rand208355208392%_)))
                                        (_%__kont208798208799%_
                                         _%rand208356208402%_
                                         _%hd208346208377%_))))))
                        (_%loop208351208387%_ _%target208348208382%_ '()))))
                   (_%__match208839208840%_
                    (lambda (_%e208319208446%_
                             _%hd208320208449%_
                             _%tl208321208451%_
                             _%e208322208454%_
                             _%hd208323208457%_
                             _%tl208324208459%_
                             _%e208325208462%_
                             _%hd208326208465%_
                             _%tl208327208467%_
                             _%e208328208470%_
                             _%hd208329208473%_
                             _%tl208330208475%_
                             _%__splice208796208797%_
                             _%target208331208478%_
                             _%tl208333208480%_)
                      (letrec ((_%loop208334208483%_
                                (lambda (_%hd208332208486%_
                                         _%rand208338208488%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd208332208486%_))
                                      (let ((_%e208335208490%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd208332208486%_))))
                                        (let ((_%lp-tl208337208495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208335208490%_)))
                                              (_%lp-hd208336208493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208335208490%_))))
                                          (_%loop208334208483%_
                                           _%lp-tl208337208495%_
                                           (cons _%lp-hd208336208493%_
                                                 _%rand208338208488%_))))
                                      (let ((_%rand208339208498%_
                                             (reverse _%rand208338208488%_)))
                                        (_%__kont208794208795%_
                                         _%rand208339208498%_
                                         _%hd208329208473%_))))))
                        (_%loop208334208483%_ _%target208331208478%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208792208793%_))
                  (let ((_%e208319208446%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208792208793%_))))
                    (let ((_%tl208321208451%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208319208446%_)))
                          (_%hd208320208449%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208319208446%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl208321208451%_))
                          (let ((_%e208322208454%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl208321208451%_))))
                            (let ((_%tl208324208459%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208322208454%_)))
                                  (_%hd208323208457%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208322208454%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd208323208457%_))
                                  (let ((_%e208325208462%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd208323208457%_))))
                                    (let ((_%tl208327208467%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e208325208462%_)))
                                          (_%hd208326208465%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e208325208462%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd208326208465%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd208326208465%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208327208467%_))
                                                  (let ((_%e208328208470%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl208327208467%_))))
                                                    (let ((_%tl208330208475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208328208470%_)))
                                                          (_%hd208329208473%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208328208470%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208330208475%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl208324208459%_))
                      (let ((_%__splice208796208797%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl208324208459%_
                                '0))))
                        (let ((_%tl208333208480%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208796208797%_ '1)))
                              (_%target208331208478%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208796208797%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208333208480%_))
                              (_%__match208839208840%_
                               _%e208319208446%_
                               _%hd208320208449%_
                               _%tl208321208451%_
                               _%e208322208454%_
                               _%hd208323208457%_
                               _%tl208324208459%_
                               _%e208325208462%_
                               _%hd208326208465%_
                               _%tl208327208467%_
                               _%e208328208470%_
                               _%hd208329208473%_
                               _%tl208330208475%_
                               _%__splice208796208797%_
                               _%target208331208478%_
                               _%tl208333208480%_)
                              (let ()
                                (declare (not safe))
                                (_%g208315208361%_)))))
                      (let () (declare (not safe)) (_%g208315208361%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl208324208459%_))
                      (let ((_%__splice208800208801%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl208324208459%_
                                '0))))
                        (let ((_%tl208350208384%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208800208801%_ '1)))
                              (_%target208348208382%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208800208801%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208350208384%_))
                              (_%__match208859208860%_
                               _%e208319208446%_
                               _%hd208320208449%_
                               _%tl208321208451%_
                               _%e208322208454%_
                               _%hd208323208457%_
                               _%tl208324208459%_
                               _%__splice208800208801%_
                               _%target208348208382%_
                               _%tl208350208384%_)
                              (let ()
                                (declare (not safe))
                                (_%g208315208361%_)))))
                      (let () (declare (not safe)) (_%g208315208361%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl208324208459%_))
                                                      (let ((_%__splice208800208801%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl208324208459%_
                        '0))))
                (let ((_%tl208350208384%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208800208801%_ '1)))
                      (_%target208348208382%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208800208801%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl208350208384%_))
                      (_%__match208859208860%_
                       _%e208319208446%_
                       _%hd208320208449%_
                       _%tl208321208451%_
                       _%e208322208454%_
                       _%hd208323208457%_
                       _%tl208324208459%_
                       _%__splice208800208801%_
                       _%target208348208382%_
                       _%tl208350208384%_)
                      (let () (declare (not safe)) (_%g208315208361%_)))))
              (let () (declare (not safe)) (_%g208315208361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl208324208459%_))
                                                  (let ((_%__splice208800208801%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl208324208459%_
                                                            '0))))
                                                    (let ((_%tl208350208384%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice208800208801%_
                                                              '1)))
                                                          (_%target208348208382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice208800208801%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208350208384%_))
                                                          (_%__match208859208860%_
                                                           _%e208319208446%_
                                                           _%hd208320208449%_
                                                           _%tl208321208451%_
                                                           _%e208322208454%_
                                                           _%hd208323208457%_
                                                           _%tl208324208459%_
                                                           _%__splice208800208801%_
                                                           _%target208348208382%_
                                                           _%tl208350208384%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g208315208361%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g208315208361%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl208324208459%_))
                                              (let ((_%__splice208800208801%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl208324208459%_
                                                        '0))))
                                                (let ((_%tl208350208384%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208800208801%_
                                                          '1)))
                                                      (_%target208348208382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208800208801%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl208350208384%_))
                                                      (_%__match208859208860%_
                                                       _%e208319208446%_
                                                       _%hd208320208449%_
                                                       _%tl208321208451%_
                                                       _%e208322208454%_
                                                       _%hd208323208457%_
                                                       _%tl208324208459%_
                                                       _%__splice208800208801%_
                                                       _%target208348208382%_
                                                       _%tl208350208384%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g208315208361%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g208315208361%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208324208459%_))
                                      (let ((_%__splice208800208801%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl208324208459%_
                                                '0))))
                                        (let ((_%tl208350208384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208800208801%_
                                                  '1)))
                                              (_%target208348208382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208800208801%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208350208384%_))
                                              (_%__match208859208860%_
                                               _%e208319208446%_
                                               _%hd208320208449%_
                                               _%tl208321208451%_
                                               _%e208322208454%_
                                               _%hd208323208457%_
                                               _%tl208324208459%_
                                               _%__splice208800208801%_
                                               _%target208348208382%_
                                               _%tl208350208384%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g208315208361%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g208315208361%_))))))
                          (let () (declare (not safe)) (_%g208315208361%_)))))
                  (let () (declare (not safe)) (_%g208315208361%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self208273%_ _%ctx208274%_ _%stx208275%_ _%args208276%_)
        (let ((_%self208279%_ _%self208273%_))
          (if (let ((__method209441
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self208279%_ 'check-arguments))))
                (if __method209441
                    (let ()
                      (declare (not safe))
                      (__method209441
                       _%self208279%_
                       _%ctx208274%_
                       _%stx208275%_
                       _%args208276%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self208279%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature208289%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self208279%_ '2 '#f '#f)))
                     (_%signature208291%_ _%signature208289%_)
                     (_%$e208301%_
                      (if _%signature208291%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature208291%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e208301%_
                    ((lambda (_%unchecked208304%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked208304%_))
                           (let ((__tmp209463
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked208304%_
                                                          '()))
                                              (map (lambda (_%g208305208307%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx208274%_
                                                        _%g208305208307%_)))
                                                   _%args208276%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp209463
                              _%stx208275%_
                              _%ctx208274%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx208274%_ _%stx208275%_))))
                     _%$e208301%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx208274%_ _%stx208275%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx208274%_ _%stx208275%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass208725 __method-table208726)
        (let ((__check-arguments208727
               (let ((__tmp209464
                      (lambda ()
                        (let ((__method208728
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208726
                                  'check-arguments
                                  '#f))))
                          (if __method208728
                              __method208728
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209464))))
          (lambda (_%self208273%_ _%ctx208274%_ _%stx208275%_ _%args208276%_)
            (let ((_%self208279%_ _%self208273%_))
              (if ((force __check-arguments208727)
                   _%self208279%_
                   _%ctx208274%_
                   _%stx208275%_
                   _%args208276%_)
                  (let* ((_%signature208289%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self208279%_
                             '2
                             '#f
                             '#f)))
                         (_%signature208291%_ _%signature208289%_)
                         (_%$e208301%_
                          (if _%signature208291%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature208291%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e208301%_
                        ((lambda (_%unchecked208304%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked208304%_))
                               (let ((__tmp209465
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked208304%_
                                                              '()))
                                                  (map (lambda (_%g208305208307%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx208274%_
                                                            _%g208305208307%_)))
                                                       _%args208276%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp209465
                                  _%stx208275%_
                                  _%ctx208274%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx208274%_
                                  _%stx208275%_))))
                         _%$e208301%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx208274%_ _%stx208275%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx208274%_ _%stx208275%_))))))))
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
      (lambda (_%self208026%_ _%ctx208027%_ _%stx208028%_ _%args208029%_)
        (let* ((_%self208032%_ _%self208026%_)
               (_%signature208041208043%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self208032%_ '2 '#f '#f))))
          (if _%signature208041208043%_
              (let* ((_%signature208045%_ _%signature208041208043%_)
                     (_%argument-types208046208048%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature208045%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types208046208048%_
                    (let* ((_%argument-types208050%_
                            _%argument-types208046208048%_)
                           (_%argument-types208055%_
                            (let ((__tmp209466
                                   (lambda (_%t208053%_)
                                     (if _%t208053%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx208028%_
                                            _%t208053%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp209466
                               _%argument-types208050%_))))
                      (let _%loop208057%_ ((_%rest-args208059%_ _%args208029%_)
                                           (_%rest-types208060%_
                                            _%argument-types208055%_)
                                           (_%result208061%_ '#t))
                        (let* ((_%rest-args208062208070%_ _%rest-args208059%_)
                               (_%else208064208078%_
                                (lambda () _%result208061%_))
                               (_%K208066208139%_
                                (lambda (_%rest-args208081%_ _%arg208082%_)
                                  (let* ((_%rest-types208083208094%_
                                          _%rest-types208060%_)
                                         (_%E208087208098%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types208083208094%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K208090208127%_
                                           (lambda (_%rest-types208124%_
                                                    _%type208125%_)
                                             (_%loop208057%_
                                              _%rest-args208081%_
                                              _%rest-types208124%_
                                              (if (gxc#check-expression-type!
                                                   _%stx208028%_
                                                   _%arg208082%_
                                                   _%type208125%_)
                                                  _%result208061%_
                                                  '#f))))
                                          (_%K208089208118%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx208028%_
                                                _%argument-types208055%_))))
                                          (_%K208088208108%_
                                           (lambda (_%tail-type208102%_)
                                             (if (let ((__tmp209467
                                                        (lambda (_%g208103208105%_)
                                                          (gxc#check-expression-type!
                                                           _%stx208028%_
                                                           _%g208103208105%_
                                                           _%tail-type208102%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp209467
                                                    _%rest-args208081%_))
                                                 _%result208061%_
                                                 '#f))))
                                      (let ((_%try-match208085208121%_
                                             (lambda ()
                                               (if (null? _%rest-types208083208094%_)
                                                   (_%K208089208118%_)
                                                   (let ((_%tail-type208111%_
                                                          _%rest-types208083208094%_))
                                                     (_%K208088208108%_
                                                      _%tail-type208111%_))))))
                                        (if (pair? _%rest-types208083208094%_)
                                            (let ((_%tl208092208132%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types208083208094%_)))
                                                  (_%hd208091208130%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types208083208094%_))))
                                              (let ((_%type208135%_
                                                     _%hd208091208130%_)
                                                    (_%rest-types208137%_
                                                     _%tl208092208132%_))
                                                (_%K208090208127%_
                                                 _%rest-types208137%_
                                                 _%type208135%_)))
                                            (_%try-match208085208121%_))))))))
                          (if (pair? _%rest-args208062208070%_)
                              (let ((_%hd208067208142%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args208062208070%_)))
                                    (_%tl208068208144%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args208062208070%_))))
                                (let* ((_%arg208147%_ _%hd208067208142%_)
                                       (_%rest-args208149%_
                                        _%tl208068208144%_))
                                  (_%K208066208139%_
                                   _%rest-args208149%_
                                   _%arg208147%_)))
                              (_%else208064208078%_)))))
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
      (lambda (_%self207837%_ _%ctx207838%_ _%stx207839%_ _%args207840%_)
        (let* ((_%self207843%_ _%self207837%_)
               (_%g207853207863%_
                (lambda (_%g207854207860%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207854207860%_))))
               (_%g207852207901%_
                (lambda (_%g207854207866%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207854207866%_))
                      (let ((_%e207856207868%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207854207866%_))))
                        (let ((_%hd207857207871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207856207868%_)))
                              (_%tl207858207873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207856207868%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207858207873%_))
                              ((lambda (_%g207855207876%_)
                                 (let* ((_%klass207888%_
                                         (let ((__tmp209468
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self207843%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx207839%_
                                            __tmp209468)))
                                        (_%object207890%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx207838%_
                                            _%g207855207876%_)))
                                        (_%instance?207895%_
                                         (let ((_%$e207892%_
                                                (gxc#expression-type?
                                                 _%object207890%_
                                                 _%klass207888%_)))
                                           (if _%$e207892%_
                                               _%$e207892%_
                                               (gxc#expression-type?
                                                _%g207855207876%_
                                                _%klass207888%_)))))
                                   (if _%instance?207895%_
                                       (let ((__tmp209469
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object207890%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g207855207876%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object207890%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209469
                                          _%stx207839%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx207838%_
                                          _%stx207839%_)))))
                               _%hd207857207871%_)
                              (_%g207853207863%_ _%g207854207866%_))))
                      (_%g207853207863%_ _%g207854207866%_)))))
          (_%g207852207901%_ _%args207840%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self207633%_ _%ctx207634%_ _%stx207635%_ _%args207636%_)
        (let* ((_%self207639%_ _%self207633%_)
               (_%g207649207659%_
                (lambda (_%g207650207656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207650207656%_))))
               (_%g207648207712%_
                (lambda (_%g207650207662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207650207662%_))
                      (let ((_%e207652207664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207650207662%_))))
                        (let ((_%hd207653207667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207652207664%_)))
                              (_%tl207654207669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207652207664%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207654207669%_))
                              ((lambda (_%g207651207672%_)
                                 (let* ((_%klass207684%_
                                         (let ((__tmp209470
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self207639%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx207635%_
                                            __tmp209470)))
                                        (_%object207686%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx207634%_
                                            _%g207651207672%_)))
                                        (_%instance?207691%_
                                         (let ((_%$e207688%_
                                                (gxc#expression-type?
                                                 _%object207686%_
                                                 _%klass207684%_)))
                                           (if _%$e207688%_
                                               _%$e207688%_
                                               (gxc#expression-type?
                                                _%g207651207672%_
                                                _%klass207684%_))))
                                        (_%klass207694%_ _%klass207684%_))
                                   (if _%instance?207691%_
                                       (let ((__tmp209471
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object207686%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g207651207672%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object207686%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209471
                                          _%stx207635%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass207694%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp209472
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass207694%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object207686%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209472
                                              _%stx207635%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass207694%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209473
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass207694%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object207686%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209473
                                                  _%stx207635%_))
                                               (let ((__tmp209474
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self207639%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object207686%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209474
                                                  _%stx207635%_)))))))
                               _%hd207653207667%_)
                              (_%g207649207659%_ _%g207650207662%_))))
                      (_%g207649207659%_ _%g207650207662%_)))))
          (_%g207648207712%_ _%args207636%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx207301%_)
        (let* ((_%__stx208869208870%_ _%stx207301%_)
               (_%g207306207347%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208869208870%_)))))
          (let ((_%__kont208871208872%_ (lambda () '#t))
                (_%__kont208873208874%_ (lambda () '#t))
                (_%__kont208875208876%_
                 (lambda (_%g207320207413%_ _%g207321207414%_)
                   (let ((_%rator-type207435207437%_
                          (let ((__tmp209475
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g207321207414%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp209475))))
                     (if _%rator-type207435207437%_
                         (let* ((_%rator-type207439%_
                                 _%rator-type207435207437%_)
                                (_%rator-signature207440207442%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type207439%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type207439%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature207440207442%_
                               (let* ((_%rator-signature207444%_
                                       _%rator-signature207440207442%_)
                                      (_%rator-effect207445207447%_
                                       (if _%rator-signature207444%_
                                           (##direct-structure-ref
                                            _%rator-signature207444%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect207445207447%_
                                     (let ((_%rator-effect207449%_
                                            _%rator-effect207445207447%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect207449%_)
                                               (equal? '(alloc)
                                                       _%rator-effect207449%_))
                                           (let ((__tmp209476
                                                  (let ((__tmp209477
                                                         (lambda (_%g207454207457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g207455207459%_)
                   (cons _%g207454207457%_ _%g207455207459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp209477
                                                     '()
                                                     _%g207320207413%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp209476))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont208879208880%_ (lambda () '#f)))
            (let ((_%__match208958208959%_
                   (lambda (_%e207322207359%_
                            _%hd207323207362%_
                            _%tl207324207364%_
                            _%e207325207367%_
                            _%hd207326207370%_
                            _%tl207327207372%_
                            _%e207328207375%_
                            _%hd207329207378%_
                            _%tl207330207380%_
                            _%e207331207383%_
                            _%hd207332207386%_
                            _%tl207333207388%_
                            _%__splice208877208878%_
                            _%target207334207391%_
                            _%tl207336207393%_)
                     (letrec ((_%loop207337207396%_
                               (lambda (_%hd207335207399%_
                                        _%rand207341207401%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd207335207399%_))
                                     (let ((_%e207338207403%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd207335207399%_))))
                                       (let ((_%lp-tl207340207408%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e207338207403%_)))
                                             (_%lp-hd207339207406%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e207338207403%_))))
                                         (_%loop207337207396%_
                                          _%lp-tl207340207408%_
                                          (cons _%lp-hd207339207406%_
                                                _%rand207341207401%_))))
                                     (let ((_%rand207342207411%_
                                            (reverse _%rand207341207401%_)))
                                       (_%__kont208875208876%_
                                        _%rand207342207411%_
                                        _%hd207332207386%_))))))
                       (_%loop207337207396%_ _%target207334207391%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208869208870%_))
                  (let ((_%e207308207490%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208869208870%_))))
                    (let ((_%tl207310207495%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207308207490%_)))
                          (_%hd207309207493%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207308207490%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd207309207493%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd207309207493%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl207310207495%_))
                                  (let ((_%e207311207498%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl207310207495%_))))
                                    (let ((_%tl207313207503%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207311207498%_)))
                                          (_%hd207312207501%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207311207498%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl207313207503%_))
                                          (_%__kont208871208872%_)
                                          (_%__kont208879208880%_))))
                                  (_%__kont208879208880%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd207309207493%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207310207495%_))
                                      (let ((_%e207317207475%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207310207495%_))))
                                        (let ((_%tl207319207480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207317207475%_)))
                                              (_%hd207318207478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207317207475%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207319207480%_))
                                              (_%__kont208873208874%_)
                                              (_%__kont208879208880%_))))
                                      (_%__kont208879208880%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd207309207493%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl207310207495%_))
                                          (let ((_%e207325207367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl207310207495%_))))
                                            (let ((_%tl207327207372%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e207325207367%_)))
                                                  (_%hd207326207370%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e207325207367%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd207326207370%_))
                                                  (let ((_%e207328207375%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd207326207370%_))))
                                                    (let ((_%tl207330207380%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207328207375%_)))
                                                          (_%hd207329207378%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207328207375%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd207329207378%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd207329207378%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207330207380%_))
                          (let ((_%e207331207383%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl207330207380%_))))
                            (let ((_%tl207333207388%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207331207383%_)))
                                  (_%hd207332207386%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207331207383%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl207333207388%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207327207372%_))
                                      (let ((_%__splice208877208878%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl207327207372%_
                                                '0))))
                                        (let ((_%tl207336207393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208877208878%_
                                                  '1)))
                                              (_%target207334207391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208877208878%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207336207393%_))
                                              (_%__match208958208959%_
                                               _%e207308207490%_
                                               _%hd207309207493%_
                                               _%tl207310207495%_
                                               _%e207325207367%_
                                               _%hd207326207370%_
                                               _%tl207327207372%_
                                               _%e207328207375%_
                                               _%hd207329207378%_
                                               _%tl207330207380%_
                                               _%e207331207383%_
                                               _%hd207332207386%_
                                               _%tl207333207388%_
                                               _%__splice208877208878%_
                                               _%target207334207391%_
                                               _%tl207336207393%_)
                                              (_%__kont208879208880%_))))
                                      (_%__kont208879208880%_))
                                  (_%__kont208879208880%_))))
                          (_%__kont208879208880%_))
                      (_%__kont208879208880%_))
                  (_%__kont208879208880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont208879208880%_))))
                                          (_%__kont208879208880%_))
                                      (_%__kont208879208880%_))))
                          (_%__kont208879208880%_))))
                  (_%__kont208879208880%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx207296%_ _%klass207297%_)
        (let ((_%expr-type207299%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx207296%_))))
          (if _%expr-type207299%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type207299%_ _%klass207297%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx207274%_ _%expr207275%_ _%type207276%_)
        (if (not _%type207276%_)
            '#f
            (let ((_%$e207279%_
                   (eq? (##structure-ref _%type207276%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e207279%_
                  _%$e207279%_
                  (let ((_%expr-type207283%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr207275%_))))
                    (if (not _%expr-type207283%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type207283%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e207287%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type207283%_
                                      'gxc#!abort::t))))
                              (if _%$e207287%_
                                  _%$e207287%_
                                  (let ((_%$e207290%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type207283%_
                                            _%type207276%_))))
                                    (if _%$e207290%_
                                        _%$e207290%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type207276%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type207276%_
                                                   _%expr-type207283%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx207274%_
                                                   _%expr207275%_
                                                   _%expr-type207283%_
                                                   _%type207276%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self207088%_ _%ctx207089%_ _%stx207090%_ _%args207091%_)
        (let* ((_%self207094%_ _%self207088%_)
               (_%klass207104%_
                (let ((__tmp209478
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self207094%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx207090%_ __tmp209478)))
               (_%fields207106%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass207104%_
                           '5
                           '#f
                           '#f))))
               (_%args207112%_
                (map (lambda (_%g207107207109%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx207089%_ _%g207107207109%_)))
                     _%args207091%_))
               (_%inline-make-object207114%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self207094%_
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
                           _%self207094%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields207106%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass207117%_ _%klass207104%_)
               (_%$e207131%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass207117%_ '6 '#f '#f))))
          (if _%$e207131%_
              ((lambda (_%ctor207134%_)
                 (let ((_%$obj207136%_
                        (let ((__tmp209479
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp209479)))
                       (_%ctor-impl207137%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass207117%_
                           _%ctor207134%_))))
                   (let ((__tmp209480
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj207136%_ '())
                                                  (cons _%inline-make-object207114%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl207137%_
                                                            (let ((__tmp209481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl207137%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj207136%_ '()))
                                             _%args207112%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp209481
                       _%stx207090%_
                       _%ctx207089%_))
                    (let ((_%$ctor207139%_
                           (let ((__tmp209482
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp209482))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor207139%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self207094%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj207136%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor207134%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor207139%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor207139%_ '()))
                              (cons (cons '%#ref (cons _%$obj207136%_ '()))
                                    _%args207112%_)))
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
                             _%self207094%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor207134%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj207136%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp209480 _%stx207090%_))))
               _%$e207131%_)
              (let ((_%$e207141%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass207117%_
                        '10
                        '#f
                        '#f))))
                (if _%$e207141%_
                    ((lambda (_%metaclass207144%_)
                       (let* ((_%$obj207146%_
                               (let ((__tmp209483
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209483)))
                              (_%metakons207148%_
                               (let ((__tmp209484
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx207090%_
                                         _%metaclass207144%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp209484
                                  'instance-init!)))
                              (__tmp209485
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj207146%_
                                                             '())
                                                       (cons _%inline-make-object207114%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons207148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp209486
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons207148%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self207094%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj207146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args207112%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp209486
                            _%stx207090%_
                            _%ctx207089%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self207094%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj207146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args207112%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj207146%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp209485 _%stx207090%_)))
                     _%$e207141%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass207117%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp209487
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args207112%_))))
                              (declare (not safe))
                              (##fx= __tmp209487 _%fields207106%_))
                            (let ((__tmp209488
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self207094%_
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
                                              _%self207094%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args207112%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp209488
                               _%stx207090%_))
                            (let ((__tmp209490
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self207094%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp209489
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass207117%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx207090%_
                               __tmp209490
                               __tmp209489)))
                        (let ((_%$obj207153%_
                               (let ((__tmp209491
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209491))))
                          (let _%lp207155%_ ((_%rest207157%_ _%args207112%_)
                                             (_%initializers207158%_ '()))
                            (let* ((_%__stx208961208962%_ _%rest207157%_)
                                   (_%g207162207183%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx208961208962%_)))))
                              (let ((_%__kont208963208964%_
                                     (lambda (_%g207164207237%_
                                              _%g207165207238%_
                                              _%g207166207239%_)
                                       (let* ((_%slot207266%_
                                               (let ((__tmp209492
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g207166207239%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp209492)))
                                              (_%off207268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass207117%_
                                                  _%slot207266%_))))
                                         (if _%off207268%_
                                             (_%lp207155%_
                                              _%g207164207237%_
                                              (cons (cons _%off207268%_
                                                          _%g207165207238%_)
                                                    _%initializers207158%_))
                                             (let ((__tmp209493
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self207094%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx207090%_
                                                __tmp209493
                                                _%slot207266%_))))))
                                    (_%__kont208965208966%_
                                     (lambda ()
                                       (let ((__tmp209494
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj207153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object207114%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp209497
                                     (cons (cons '%#ref
                                                 (cons _%$obj207153%_ '()))
                                           '()))
                                    (__tmp209495
                                     (let ((__tmp209496
                                            (lambda (_%i207197%_ _%r207198%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self207094%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i207197%_) '()))
                              (cons (cons '%#ref (cons _%$obj207153%_ '()))
                                    (cons (cdr _%i207197%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r207198%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp209496
                                        '()
                                        _%initializers207158%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp209497 __tmp209495)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209494
                                          _%stx207090%_))))
                                    (_%__kont208967208968%_
                                     (lambda ()
                                       (let ((__tmp209498
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj207153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object207114%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj207153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args207112%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj207153%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209498
                                          _%stx207090%_)))))
                                (let* ((_%g207160207200%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx208961208962%_))
                                              (_%__kont208965208966%_)
                                              (_%__kont208967208968%_))))
                                       (_%__match208998208999%_
                                        (lambda (_%e207167207205%_
                                                 _%hd207168207208%_
                                                 _%tl207169207210%_
                                                 _%e207170207213%_
                                                 _%hd207171207216%_
                                                 _%tl207172207218%_
                                                 _%e207173207221%_
                                                 _%hd207174207224%_
                                                 _%tl207175207226%_
                                                 _%e207176207229%_
                                                 _%hd207177207232%_
                                                 _%tl207178207234%_)
                                          (let ((_%g207164207237%_
                                                 _%tl207178207234%_)
                                                (_%g207165207238%_
                                                 _%hd207177207232%_)
                                                (_%g207166207239%_
                                                 _%hd207174207224%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g207166207239%_))
                                                (_%__kont208963208964%_
                                                 _%g207164207237%_
                                                 _%g207165207238%_
                                                 _%g207166207239%_)
                                                (_%__kont208967208968%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx208961208962%_))
                                      (let ((_%e207167207205%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx208961208962%_))))
                                        (let ((_%tl207169207210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207167207205%_)))
                                              (_%hd207168207208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207167207205%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd207168207208%_))
                                              (let ((_%e207170207213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd207168207208%_))))
                                                (let ((_%tl207172207218%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e207170207213%_)))
                                                      (_%hd207171207216%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e207170207213%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd207171207216%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd207171207216%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl207172207218%_))
                      (let ((_%e207173207221%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl207172207218%_))))
                        (let ((_%tl207175207226%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207173207221%_)))
                              (_%hd207174207224%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207173207221%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207175207226%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl207169207210%_))
                                  (let ((_%e207176207229%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl207169207210%_))))
                                    (let ((_%tl207178207234%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207176207229%_)))
                                          (_%hd207177207232%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207176207229%_))))
                                      (_%__match208998208999%_
                                       _%e207167207205%_
                                       _%hd207168207208%_
                                       _%tl207169207210%_
                                       _%e207170207213%_
                                       _%hd207171207216%_
                                       _%tl207172207218%_
                                       _%e207173207221%_
                                       _%hd207174207224%_
                                       _%tl207175207226%_
                                       _%e207176207229%_
                                       _%hd207177207232%_
                                       _%tl207178207234%_)))
                                  (_%__kont208967208968%_))
                              (_%__kont208967208968%_))))
                      (_%__kont208967208968%_))
                  (_%__kont208967208968%_))
              (_%__kont208967208968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont208967208968%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g207160207200%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self206871%_ _%ctx206872%_ _%stx206873%_ _%args206874%_)
        (let* ((_%self206877%_ _%self206871%_)
               (_%arguments-ok?206887%_
                (let ((__method209442
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self206877%_ 'check-arguments))))
                  (if __method209442
                      (let ()
                        (declare (not safe))
                        (__method209442
                         _%self206877%_
                         _%ctx206872%_
                         _%stx206873%_
                         _%args206874%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self206877%_
                                 'check-arguments))
                        '#!void))))
               (_%g206889206899%_
                (lambda (_%g206890206896%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206890206896%_))))
               (_%g206888206963%_
                (lambda (_%g206890206902%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206890206902%_))
                      (let ((_%e206892206904%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206890206902%_))))
                        (let ((_%hd206893206907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206892206904%_)))
                              (_%tl206894206909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206892206904%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206894206909%_))
                              ((lambda (_%g206891206912%_)
                                 (let* ((_%klass206925%_
                                         (let ((__tmp209499
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self206877%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx206873%_
                                            __tmp209499)))
                                        (_%field206927%_
                                         (let ((__tmp209500
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self206877%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass206925%_
                                            __tmp209500)))
                                        (_%object206929%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx206872%_
                                            _%g206891206912%_)))
                                        (_%klass206932%_ _%klass206925%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass206932%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp209501
                                              (cons (if (or _%arguments-ok?206887%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206877%_
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
                                 _%self206877%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field206927%_ '()))
                        (cons _%object206929%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209501
                                          _%stx206873%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass206932%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp209502
                                                  (cons (if (or _%arguments-ok?206887%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206877%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206877%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field206927%_ '()))
                            (cons _%object206929%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209502
                                              _%stx206873%_))
                                           (let ((_%$e206951%_
                                                  (let ((__tmp209503
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self206877%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass206932%_
                                                     __tmp209503))))
                                             (if _%$e206951%_
                                                 ((lambda (_%klass206954%_)
                                                    (let ((__tmp209504
                                                           (cons (if (or _%arguments-ok?206887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206877%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self206877%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field206927%_ '()))
                                     (cons _%object206929%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp209504 _%stx206873%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e206951%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self206877%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp209505
                                                            (let ((_%$obj206960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp209506
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp209506))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj206960%_ '())
                                              (cons _%object206929%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass206932%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj206960%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206877%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206927%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj206960%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?206887%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj206960%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self206877%_
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
                                                             _%self206877%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj206960%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self206877%_
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
               (gxc#xform-wrap-source __tmp209505 _%stx206873%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp209507
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object206929%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206877%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp209507 _%stx206873%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd206893206907%_)
                              (_%g206889206899%_ _%g206890206902%_))))
                      (_%g206889206899%_ _%g206890206902%_)))))
          (_%g206888206963%_ _%args206874%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass208729 __method-table208730)
        (let ((__check-arguments208731
               (let ((__tmp209508
                      (lambda ()
                        (let ((__method208732
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208730
                                  'check-arguments
                                  '#f))))
                          (if __method208732
                              __method208732
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209508)))
              (__slot208733
               (let ((__slot208734
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass208729 'slot))))
                 (if __slot208734
                     __slot208734
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self206871%_ _%ctx206872%_ _%stx206873%_ _%args206874%_)
            (let* ((_%self206877%_ _%self206871%_)
                   (_%arguments-ok?206887%_
                    ((force __check-arguments208731)
                     _%self206877%_
                     _%ctx206872%_
                     _%stx206873%_
                     _%args206874%_))
                   (_%g206889206899%_
                    (lambda (_%g206890206896%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g206890206896%_))))
                   (_%g206888206963%_
                    (lambda (_%g206890206902%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g206890206902%_))
                          (let ((_%e206892206904%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g206890206902%_))))
                            (let ((_%hd206893206907%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206892206904%_)))
                                  (_%tl206894206909%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206892206904%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206894206909%_))
                                  ((lambda (_%g206891206912%_)
                                     (let* ((_%klass206925%_
                                             (let ((__tmp209509
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self206877%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx206873%_
                                                __tmp209509)))
                                            (_%field206927%_
                                             (let ((__tmp209510
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self206877%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass206925%_
                                                __tmp209510)))
                                            (_%object206929%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx206872%_
                                                _%g206891206912%_)))
                                            (_%klass206932%_ _%klass206925%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass206932%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp209511
                                                  (cons (if (or _%arguments-ok?206887%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206877%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206877%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field206927%_ '()))
                            (cons _%object206929%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209511
                                              _%stx206873%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass206932%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209512
                                                      (cons (if (or _%arguments-ok?206887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self206877%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206877%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field206927%_ '()))
                                (cons _%object206929%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209512
                                                  _%stx206873%_))
                                               (let ((_%$e206951%_
                                                      (let ((__tmp209513
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self206877%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass206932%_ __tmp209513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e206951%_
                                                     ((lambda (_%klass206954%_)
                                                        (let ((__tmp209514
                                                               (cons (if (or _%arguments-ok?206887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206877%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self206877%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field206927%_ '()))
                                         (cons _%object206929%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp209514 _%stx206873%_)))
              _%$e206951%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self206877%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp209515
                                                                (let ((_%$obj206960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp209516
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209516))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj206960%_ '())
                                                  (cons _%object206929%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass206932%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj206960%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206877%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field206927%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj206960%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?206887%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj206960%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206877%_
                               __slot208733
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
                        (##unchecked-structure-ref _%self206877%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj206960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206877%_
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
                   (gxc#xform-wrap-source __tmp209515 _%stx206873%_))
                 (let ((__tmp209517
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object206929%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206877%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp209517 _%stx206873%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd206893206907%_)
                                  (_%g206889206899%_ _%g206890206902%_))))
                          (_%g206889206899%_ _%g206890206902%_)))))
              (_%g206888206963%_ _%args206874%_))))))
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
      (lambda (_%self206635%_ _%ctx206636%_ _%stx206637%_ _%args206638%_)
        (let* ((_%self206641%_ _%self206635%_)
               (_%arguments-ok?206651%_
                (let ((__method209443
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self206641%_ 'check-arguments))))
                  (if __method209443
                      (let ()
                        (declare (not safe))
                        (__method209443
                         _%self206641%_
                         _%ctx206636%_
                         _%stx206637%_
                         _%args206638%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self206641%_
                                 'check-arguments))
                        '#!void))))
               (_%g206653206667%_
                (lambda (_%g206654206664%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206654206664%_))))
               (_%g206652206746%_
                (lambda (_%g206654206670%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206654206670%_))
                      (let ((_%e206657206672%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206654206670%_))))
                        (let ((_%hd206658206675%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206657206672%_)))
                              (_%tl206659206677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206657206672%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206659206677%_))
                              (let ((_%e206660206680%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl206659206677%_))))
                                (let ((_%hd206661206683%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206660206680%_)))
                                      (_%tl206662206685%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206660206680%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl206662206685%_))
                                      ((lambda (_%g206655206688%_
                                                _%g206656206689%_)
                                         (let* ((_%klass206705%_
                                                 (let ((__tmp209518
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206641%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx206637%_
                                                    __tmp209518)))
                                                (_%field206707%_
                                                 (let ((__tmp209519
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206641%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass206705%_
                                                    __tmp209519)))
                                                (_%object206709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx206636%_
                                                    _%g206656206689%_)))
                                                (_%value206711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx206636%_
                                                    _%g206655206688%_)))
                                                (_%klass206714%_
                                                 _%klass206705%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass206714%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209520
                                                      (cons (if (or _%arguments-ok?206651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self206641%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206641%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field206707%_ '()))
                                (cons _%object206709%_
                                      (cons _%value206711%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209520
                                                  _%stx206637%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass206714%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp209521
                                                          (cons (if (or _%arguments-ok?206651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self206641%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206641%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206707%_ '()))
                                    (cons _%object206709%_
                                          (cons _%value206711%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp209521
                                                      _%stx206637%_))
                                                   (let ((_%$e206734%_
                                                          (let ((__tmp209522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206641%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass206714%_
                     __tmp209522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e206734%_
                                                         ((lambda (_%klass206737%_)
                                                            (let ((__tmp209523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?206651%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206641%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self206641%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field206707%_ '()))
                                             (cons _%object206709%_
                                                   (cons _%value206711%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209523 _%stx206637%_)))
                  _%$e206734%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self206641%_ '4 '#f '#f))
                     (let ((__tmp209524
                            (let ((_%$obj206743%_
                                   (let ((__tmp209525
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp209525))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj206743%_ '())
                                                      (cons _%object206709%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass206714%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj206743%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self206641%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field206707%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj206743%_
                                                              '()))
                                                  (cons _%value206711%_
                                                        '())))))
                          (cons (if _%arguments-ok?206651%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj206743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self206641%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value206711%_ '())))))
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
                             _%self206641%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj206743%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206641%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value206711%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp209524 _%stx206637%_))
                     (let ((__tmp209526
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object206709%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self206641%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value206711%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp209526
                        _%stx206637%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd206661206683%_
                                       _%hd206658206675%_)
                                      (_%g206653206667%_ _%g206654206670%_))))
                              (_%g206653206667%_ _%g206654206670%_))))
                      (_%g206653206667%_ _%g206654206670%_)))))
          (_%g206652206746%_ _%args206638%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass208735 __method-table208736)
        (let ((__check-arguments208737
               (let ((__tmp209527
                      (lambda ()
                        (let ((__method208738
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208736
                                  'check-arguments
                                  '#f))))
                          (if __method208738
                              __method208738
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209527))))
          (lambda (_%self206635%_ _%ctx206636%_ _%stx206637%_ _%args206638%_)
            (let* ((_%self206641%_ _%self206635%_)
                   (_%arguments-ok?206651%_
                    ((force __check-arguments208737)
                     _%self206641%_
                     _%ctx206636%_
                     _%stx206637%_
                     _%args206638%_))
                   (_%g206653206667%_
                    (lambda (_%g206654206664%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g206654206664%_))))
                   (_%g206652206746%_
                    (lambda (_%g206654206670%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g206654206670%_))
                          (let ((_%e206657206672%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g206654206670%_))))
                            (let ((_%hd206658206675%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206657206672%_)))
                                  (_%tl206659206677%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206657206672%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206659206677%_))
                                  (let ((_%e206660206680%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl206659206677%_))))
                                    (let ((_%hd206661206683%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206660206680%_)))
                                          (_%tl206662206685%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206660206680%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl206662206685%_))
                                          ((lambda (_%g206655206688%_
                                                    _%g206656206689%_)
                                             (let* ((_%klass206705%_
                                                     (let ((__tmp209528
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206641%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx206637%_
                                                        __tmp209528)))
                                                    (_%field206707%_
                                                     (let ((__tmp209529
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206641%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass206705%_
                                                        __tmp209529)))
                                                    (_%object206709%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx206636%_
                                                        _%g206656206689%_)))
                                                    (_%value206711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx206636%_
                                                        _%g206655206688%_)))
                                                    (_%klass206714%_
                                                     _%klass206705%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass206714%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp209530
                                                          (cons (if (or _%arguments-ok?206651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self206641%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206641%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206707%_ '()))
                                    (cons _%object206709%_
                                          (cons _%value206711%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp209530
                                                      _%stx206637%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass206714%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp209531
                                                              (cons (if (or _%arguments-ok?206651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self206641%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206641%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field206707%_ '()))
                                        (cons _%object206709%_
                                              (cons _%value206711%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp209531 _%stx206637%_))
               (let ((_%$e206734%_
                      (let ((__tmp209532
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206641%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass206714%_
                         __tmp209532))))
                 (if _%$e206734%_
                     ((lambda (_%klass206737%_)
                        (let ((__tmp209533
                               (cons (if (or _%arguments-ok?206651%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self206641%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self206641%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field206707%_
                                                             '()))
                                                 (cons _%object206709%_
                                                       (cons _%value206711%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp209533 _%stx206637%_)))
                      _%$e206734%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206641%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp209534
                                (let ((_%$obj206743%_
                                       (let ((__tmp209535
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp209535))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj206743%_
                                                                '())
                                                          (cons _%object206709%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass206714%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj206743%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self206641%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field206707%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj206743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value206711%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?206651%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj206743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self206641%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value206711%_ '())))))
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
                                 _%self206641%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj206743%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206641%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value206711%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp209534 _%stx206637%_))
                         (let ((__tmp209536
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object206709%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206641%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value206711%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp209536
                            _%stx206637%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd206661206683%_
                                           _%hd206658206675%_)
                                          (_%g206653206667%_
                                           _%g206654206670%_))))
                                  (_%g206653206667%_ _%g206654206670%_))))
                          (_%g206653206667%_ _%g206654206670%_)))))
              (_%g206652206746%_ _%args206638%_))))))
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
      (lambda (_%self206451%_ _%ctx206452%_ _%stx206453%_ _%args206454%_)
        (let* ((_%self206457%_ _%self206451%_)
               (_%self206466206476%_ _%self206457%_)
               (_%E206468206479%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self206466206476%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K206469206489%_
                (lambda (_%inline206482%_ _%dispatch206483%_ _%arity206484%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self206457%_
                         _%args206454%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx206453%_
                         _%arity206484%_)))
                  (if _%inline206482%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp209537 (_%inline206482%_ _%stx206453%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp209537
                           _%stx206453%_
                           _%ctx206452%_)))
                      (if (and _%dispatch206483%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch206483%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch206483%_))
                            (let ((__tmp209538
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch206483%_
                                                           '()))
                                               _%args206454%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp209538
                               _%stx206453%_
                               _%ctx206452%_)))
                          (gxc#!procedure::optimize-call
                           _%self206457%_
                           _%ctx206452%_
                           _%stx206453%_
                           _%args206454%_)))))
               (_%e206470206492%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206466206476%_ '1 '#f '#f)))
               (_%e206471206495%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206466206476%_ '2 '#f '#f)))
               (_%e206472206498%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206466206476%_ '3 '#f '#f)))
               (_%arity206501%_ _%e206472206498%_)
               (_%e206473206503%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206466206476%_ '4 '#f '#f)))
               (_%dispatch206506%_ _%e206473206503%_)
               (_%e206474206508%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206466206476%_ '5 '#f '#f)))
               (_%inline206511%_ _%e206474206508%_))
          (_%K206469206489%_
           _%inline206511%_
           _%dispatch206506%_
           _%arity206501%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self206303%_ _%ctx206304%_ _%stx206305%_ _%args206306%_)
        (let* ((_%self206309%_ _%self206303%_)
               (_%$e206323%_
                (let ((__tmp209540
                       (lambda (_%g206318206320%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g206318206320%_
                            _%args206306%_))))
                      (__tmp209539
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self206309%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp209540 __tmp209539))))
          (if _%$e206323%_
              ((lambda (_%clause206326%_)
                 (let ((__method209444
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause206326%_ 'optimize-call))))
                   (if __method209444
                       (let ()
                         (declare (not safe))
                         (__method209444
                          _%clause206326%_
                          _%ctx206304%_
                          _%stx206305%_
                          _%args206306%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause206326%_
                                  'optimize-call))
                         '#!void))))
               _%$e206323%_)
              (let ((__tmp209541
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self206309%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx206305%_
                 __tmp209541))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self206044%_ _%ctx206045%_ _%stx206046%_ _%args206047%_)
        (let* ((_%self206050%_ _%self206044%_)
               (_%self206059206068%_ _%self206050%_)
               (_%E206061206071%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self206059206068%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K206062206162%_
                (lambda (_%dispatch206074%_ _%table206075%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch206074%_))
                      (let* ((_%g206076206086%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch206074%_)))
                             (_%else206078206094%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch206074%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx206045%_
                                   _%stx206046%_))))
                             (_%K206080206143%_
                              (lambda (_%main206097%_ _%keys206098%_)
                                (let ((_g209542_
                                       (gxc#!kw-lambda-split-args
                                        _%stx206046%_
                                        _%args206047%_)))
                                  (begin
                                    (let ((_g209543_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g209542_)
                                                 (##values-length _g209542_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g209543_ 2)))
                                          (error "Context expects 2 values"
                                                 _g209543_)))
                                    (let ((_%pargs206100%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g209542_ 0)))
                                          (_%kwargs206101%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g209542_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main206097%_))
                                        (if _%table206075%_
                                            (let ((_%xargs206109%_
                                                   (map (lambda (_%key206103%_)
                                                          (let ((_%$e206105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key206103%_ _%kwargs206101%_))))
                    (if _%$e206105%_ _%$e206105%_ '(%#ref absent-value))))
                _%keys206098%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw206111%_)
                                                 (if (memq (car _%kw206111%_)
                                                           _%keys206098%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx206046%_
                                                        _%keys206098%_
                                                        _%kw206111%_))))
                                               _%kwargs206101%_)
                                              (let ((__tmp209544
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main206097%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs206100%_
                                  _%xargs206109%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp209544
                                                 _%stx206046%_
                                                 _%ctx206045%_)))
                                            (let* ((_%kwt206113%_
                                                    (let ((__tmp209545
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp209545)))
                                                   (_%kwvars206117%_
                                                    (map (lambda (_%_206115%_)
                                                           (let ((__tmp209546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp209546)))
                 _%kwargs206101%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind206122%_
                                                    (map (lambda (_%kw206119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar206120%_)
                   (cons (cons _%kwvar206120%_ '())
                         (cons (cdr _%kw206119%_) '())))
                 _%kwargs206101%_
                 _%kwvars206117%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset206127%_
                                                    (map (lambda (_%kw206124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar206125%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt206113%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw206124%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar206125%_
                                                             '()))
                                                 '()))))))
                 _%kwargs206101%_
                 _%kwvars206117%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs206132%_
                                                    (map (lambda (_%kw206129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar206130%_)
                   (cons (car _%kw206129%_)
                         (cons '%#ref (cons _%kwvar206130%_ '()))))
                 _%kwargs206101%_
                 _%kwvars206117%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs206140%_
                                                    (map (lambda (_%key206134%_)
                                                           (let ((_%$e206136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key206134%_ _%xkwargs206132%_))))
                     (if _%$e206136%_ _%$e206136%_ '(%#ref absent-value))))
                 _%keys206098%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp209547
                                                    (cons '%#let-values
                                                          (cons _%kwbind206122%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt206113%_ '())
                                                      (cons (let ((__tmp209548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs206101%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209548 _%stx206046%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp209549
                                                             (cons (let ((__tmp209550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main206097%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt206113%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs206100%_
                                                       _%xargs206140%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp209550 _%stx206046%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp209549 _%kwset206127%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp209547
                                               _%stx206046%_
                                               _%ctx206045%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g206076206086%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e206081206146%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g206076206086%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e206082206149%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g206076206086%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e206083206152%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g206076206086%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys206155%_ _%e206083206152%_)
                                   (_%e206084206157%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g206076206086%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main206160%_ _%e206084206157%_))
                              (_%K206080206143%_
                               _%main206160%_
                               _%keys206155%_))
                            (_%else206078206094%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx206045%_ _%stx206046%_)))))
               (_%e206063206165%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206059206068%_ '1 '#f '#f)))
               (_%e206064206168%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206059206068%_ '2 '#f '#f)))
               (_%e206065206171%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206059206068%_ '3 '#f '#f)))
               (_%table206174%_ _%e206065206171%_)
               (_%e206066206176%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206059206068%_ '4 '#f '#f)))
               (_%dispatch206179%_ _%e206066206176%_))
          (_%K206062206162%_ _%dispatch206179%_ _%table206174%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx205657%_ _%args205658%_)
        (let _%lp205660%_ ((_%rest205662%_ _%args205658%_)
                           (_%pargs205663%_ '())
                           (_%kwargs205664%_ '()))
          (let* ((_%__stx209003209004%_ _%rest205662%_)
                 (_%g205670205722%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx209003209004%_)))))
            (let ((_%__kont209005209006%_
                   (lambda (_%g205672205901%_ _%g205673205902%_)
                     (_%lp205660%_
                      _%g205672205901%_
                      (cons _%g205673205902%_ _%pargs205663%_)
                      _%kwargs205664%_)))
                  (_%__kont209007209008%_
                   (lambda (_%g205687205847%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1
                                cons
                                _%g205687205847%_
                                _%pargs205663%_))
                             (reverse _%kwargs205664%_))))
                  (_%__kont209009209010%_
                   (lambda (_%g205698205794%_
                            _%g205699205795%_
                            _%g205700205796%_)
                     (let ((_%kw205813%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g205700205796%_))))
                       (if (assq _%kw205813%_ _%kwargs205664%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx205657%_
                              _%kw205813%_))
                           (_%lp205660%_
                            _%g205698205794%_
                            _%pargs205663%_
                            (cons (cons _%kw205813%_ _%g205699205795%_)
                                  _%kwargs205664%_))))))
                  (_%__kont209011209012%_
                   (lambda (_%g205713205742%_ _%g205714205743%_)
                     (_%lp205660%_
                      _%g205713205742%_
                      (cons _%g205714205743%_ _%pargs205663%_)
                      _%kwargs205664%_)))
                  (_%__kont209013209014%_
                   (lambda ()
                     (values (reverse _%pargs205663%_)
                             (reverse _%kwargs205664%_)))))
              (let ((_%__match209110209111%_
                     (lambda (_%e205701205762%_
                              _%hd205702205765%_
                              _%tl205703205767%_
                              _%e205704205770%_
                              _%hd205705205773%_
                              _%tl205706205775%_
                              _%e205707205778%_
                              _%hd205708205781%_
                              _%tl205709205783%_
                              _%e205710205786%_
                              _%hd205711205789%_
                              _%tl205712205791%_)
                       (let ((_%g205698205794%_ _%tl205712205791%_)
                             (_%g205699205795%_ _%hd205711205789%_)
                             (_%g205700205796%_ _%hd205708205781%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g205700205796%_))
                             (_%__kont209009209010%_
                              _%g205698205794%_
                              _%g205699205795%_
                              _%g205700205796%_)
                             (_%__kont209011209012%_
                              _%tl205703205767%_
                              _%hd205702205765%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx209003209004%_))
                    (let ((_%e205674205866%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx209003209004%_))))
                      (let ((_%tl205676205871%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205674205866%_)))
                            (_%hd205675205869%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205674205866%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd205675205869%_))
                            (let ((_%e205677205874%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd205675205869%_))))
                              (let ((_%tl205679205879%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205677205874%_)))
                                    (_%hd205678205877%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205677205874%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd205678205877%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd205678205877%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205679205879%_))
                                            (let ((_%e205680205882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl205679205879%_))))
                                              (let ((_%tl205682205887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205680205882%_)))
                                                    (_%hd205681205885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205680205882%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205681205885%_))
                                                    (let ((_%e205683205890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205681205885%_))))
                                                      (if (equal? _%e205683205890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205682205887%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205676205871%_))
                          (let ((_%e205684205893%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl205676205871%_))))
                            (let ((_%tl205686205898%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205684205893%_)))
                                  (_%hd205685205896%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205684205893%_))))
                              (_%__kont209005209006%_
                               _%tl205686205898%_
                               _%hd205685205896%_)))
                          (_%__kont209011209012%_
                           _%tl205676205871%_
                           _%hd205675205869%_))
                      (_%__kont209011209012%_
                       _%tl205676205871%_
                       _%hd205675205869%_))
                  (if (equal? _%e205683205890%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205682205887%_))
                          (_%__kont209007209008%_ _%tl205676205871%_)
                          (_%__kont209011209012%_
                           _%tl205676205871%_
                           _%hd205675205869%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205682205887%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205676205871%_))
                              (let ((_%e205710205786%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205676205871%_))))
                                (let ((_%tl205712205791%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205710205786%_)))
                                      (_%hd205711205789%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205710205786%_))))
                                  (_%__match209110209111%_
                                   _%e205674205866%_
                                   _%hd205675205869%_
                                   _%tl205676205871%_
                                   _%e205677205874%_
                                   _%hd205678205877%_
                                   _%tl205679205879%_
                                   _%e205680205882%_
                                   _%hd205681205885%_
                                   _%tl205682205887%_
                                   _%e205710205786%_
                                   _%hd205711205789%_
                                   _%tl205712205791%_)))
                              (_%__kont209011209012%_
                               _%tl205676205871%_
                               _%hd205675205869%_))
                          (_%__kont209011209012%_
                           _%tl205676205871%_
                           _%hd205675205869%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205682205887%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl205676205871%_))
                                                            (let ((_%e205710205786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl205676205871%_))))
                      (let ((_%tl205712205791%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205710205786%_)))
                            (_%hd205711205789%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205710205786%_))))
                        (_%__match209110209111%_
                         _%e205674205866%_
                         _%hd205675205869%_
                         _%tl205676205871%_
                         _%e205677205874%_
                         _%hd205678205877%_
                         _%tl205679205879%_
                         _%e205680205882%_
                         _%hd205681205885%_
                         _%tl205682205887%_
                         _%e205710205786%_
                         _%hd205711205789%_
                         _%tl205712205791%_)))
                    (_%__kont209011209012%_
                     _%tl205676205871%_
                     _%hd205675205869%_))
                (_%__kont209011209012%_
                 _%tl205676205871%_
                 _%hd205675205869%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont209011209012%_
                                             _%tl205676205871%_
                                             _%hd205675205869%_))
                                        (_%__kont209011209012%_
                                         _%tl205676205871%_
                                         _%hd205675205869%_))
                                    (_%__kont209011209012%_
                                     _%tl205676205871%_
                                     _%hd205675205869%_))))
                            (_%__kont209011209012%_
                             _%tl205676205871%_
                             _%hd205675205869%_))))
                    (_%__kont209013209014%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self205641%_ _%ctx205642%_ _%stx205643%_ _%args205644%_)
        (let ((_%self205647%_ _%self205641%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx205642%_ _%stx205643%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self205331%_ _%stx205332%_)
        (let* ((_%__stx209119209120%_ _%stx205332%_)
               (_%g205335205375%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209119209120%_)))))
          (let ((_%__kont209121209122%_
                 (lambda (_%g205337205479%_ _%g205338205480%_)
                   (let ((_%$e205507%_
                          (member 'return:
                                  (let ((__tmp209551
                                         (lambda (_%g205499205502%_
                                                  _%g205500205504%_)
                                           (cons _%g205499205502%_
                                                 _%g205500205504%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp209551
                                     '()
                                     _%g205338205480%_))
                                  gx#stx-eq?)))
                     (if _%$e205507%_
                         ((lambda (_%tail205510%_)
                            (let ((_%type205512%_
                                   (let ((__tmp209552
                                          (let ((__tmp209553
                                                 (cadr _%tail205510%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp209553))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx205332%_
                                      __tmp209552))))
                              (gxc#check-return-type!
                               _%stx205332%_
                               _%g205337205479%_
                               _%type205512%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self205331%_
                                 _%g205337205479%_))))
                          _%$e205507%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self205331%_
                            _%g205337205479%_))))))
                (_%__kont209125209126%_
                 (lambda (_%g205360205404%_ _%g205361205405%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self205331%_ _%g205360205404%_)))))
            (let ((_%__match209156209157%_
                   (lambda (_%e205339205425%_
                            _%hd205340205428%_
                            _%tl205341205430%_
                            _%e205342205433%_
                            _%hd205343205436%_
                            _%tl205344205438%_
                            _%e205345205441%_
                            _%hd205346205444%_
                            _%tl205347205446%_
                            _%__splice209123209124%_
                            _%target205348205449%_
                            _%tl205350205451%_)
                     (letrec ((_%loop205351205454%_
                               (lambda (_%hd205349205457%_
                                        _%signature205355205459%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd205349205457%_))
                                     (let ((_%e205352205461%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd205349205457%_))))
                                       (let ((_%lp-tl205354205466%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205352205461%_)))
                                             (_%lp-hd205353205464%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205352205461%_))))
                                         (_%loop205351205454%_
                                          _%lp-tl205354205466%_
                                          (cons _%lp-hd205353205464%_
                                                _%signature205355205459%_))))
                                     (let ((_%signature205356205469%_
                                            (reverse _%signature205355205459%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl205344205438%_))
                                           (let ((_%e205357205471%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl205344205438%_))))
                                             (let ((_%tl205359205476%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e205357205471%_)))
                                                   (_%hd205358205474%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e205357205471%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl205359205476%_))
                                                   (_%__kont209121209122%_
                                                    _%hd205358205474%_
                                                    _%signature205356205469%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g205335205375%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g205335205375%_))))))))
                       (_%loop205351205454%_ _%target205348205449%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209119209120%_))
                  (let ((_%e205339205425%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx209119209120%_))))
                    (let ((_%tl205341205430%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205339205425%_)))
                          (_%hd205340205428%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205339205425%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205341205430%_))
                          (let ((_%e205342205433%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl205341205430%_))))
                            (let ((_%tl205344205438%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205342205433%_)))
                                  (_%hd205343205436%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205342205433%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd205343205436%_))
                                  (let ((_%e205345205441%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd205343205436%_))))
                                    (let ((_%tl205347205446%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205345205441%_)))
                                          (_%hd205346205444%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205345205441%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd205346205444%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd205346205444%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl205347205446%_))
                                                  (let ((_%__splice209123209124%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl205347205446%_
                                                            '0))))
                                                    (let ((_%tl205350205451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice209123209124%_
                                                              '1)))
                                                          (_%target205348205449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice209123209124%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205350205451%_))
                                                          (_%__match209156209157%_
                                                           _%e205339205425%_
                                                           _%hd205340205428%_
                                                           _%tl205341205430%_
                                                           _%e205342205433%_
                                                           _%hd205343205436%_
                                                           _%tl205344205438%_
                                                           _%e205345205441%_
                                                           _%hd205346205444%_
                                                           _%tl205347205446%_
                                                           _%__splice209123209124%_
                                                           _%target205348205449%_
                                                           _%tl205350205451%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl205344205438%_))
                      (let ((_%e205368205396%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl205344205438%_))))
                        (let ((_%tl205370205401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205368205396%_)))
                              (_%hd205369205399%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205368205396%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205370205401%_))
                              (_%__kont209125209126%_
                               _%hd205369205399%_
                               _%hd205343205436%_)
                              (let ()
                                (declare (not safe))
                                (_%g205335205375%_)))))
                      (let () (declare (not safe)) (_%g205335205375%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl205344205438%_))
                                                      (let ((_%e205368205396%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl205344205438%_))))
                (let ((_%tl205370205401%_
                       (let () (declare (not safe)) (##cdr _%e205368205396%_)))
                      (_%hd205369205399%_
                       (let ()
                         (declare (not safe))
                         (##car _%e205368205396%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205370205401%_))
                      (_%__kont209125209126%_
                       _%hd205369205399%_
                       _%hd205343205436%_)
                      (let () (declare (not safe)) (_%g205335205375%_)))))
              (let () (declare (not safe)) (_%g205335205375%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205344205438%_))
                                                  (let ((_%e205368205396%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl205344205438%_))))
                                                    (let ((_%tl205370205401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205368205396%_)))
                                                          (_%hd205369205399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205368205396%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205370205401%_))
                                                          (_%__kont209125209126%_
                                                           _%hd205369205399%_
                                                           _%hd205343205436%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g205335205375%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g205335205375%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205344205438%_))
                                              (let ((_%e205368205396%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl205344205438%_))))
                                                (let ((_%tl205370205401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205368205396%_)))
                                                      (_%hd205369205399%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205368205396%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205370205401%_))
                                                      (_%__kont209125209126%_
                                                       _%hd205369205399%_
                                                       _%hd205343205436%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205335205375%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205335205375%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205344205438%_))
                                      (let ((_%e205368205396%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl205344205438%_))))
                                        (let ((_%tl205370205401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205368205396%_)))
                                              (_%hd205369205399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205368205396%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205370205401%_))
                                              (_%__kont209125209126%_
                                               _%hd205369205399%_
                                               _%hd205343205436%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g205335205375%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205335205375%_))))))
                          (let () (declare (not safe)) (_%g205335205375%_)))))
                  (let () (declare (not safe)) (_%g205335205375%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx205306%_ _%expr205307%_ _%type205308%_)
        (let ((_%$e205310%_ (not _%type205308%_)))
          (if _%$e205310%_
              _%$e205310%_
              (let ((_%$e205313%_
                     (eq? (##structure-ref _%type205308%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e205313%_
                    _%$e205313%_
                    (let ((_%$e205316%_
                           (eq? (##structure-ref
                                 _%type205308%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e205316%_
                          _%$e205316%_
                          (let ((_%expr-type205320%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr205307%_))))
                            (if (not _%expr-type205320%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx205306%_
                                   _%type205308%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type205320%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx205306%_
                                       _%type205308%_
                                       _%expr-type205320%_))
                                    (let ((_%$e205324%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type205320%_
                                              'gxc#!abort::t))))
                                      (if _%$e205324%_
                                          _%$e205324%_
                                          (let ((_%$e205327%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type205320%_
                                                    _%type205308%_))))
                                            (if _%$e205327%_
                                                _%$e205327%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx205306%_
                                                   _%type205308%_
                                                   _%expr-type205320%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self204732%_ _%stx204733%_)
        (let* ((_%__stx209201209202%_ _%stx204733%_)
               (_%g204738204848%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209201209202%_)))))
          (let ((_%__kont209203209204%_
                 (lambda (_%g204740205280%_
                          _%g204741205281%_
                          _%g204742205282%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g204742205282%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self204732%_ _%g204741205281%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self204732%_
                          _%g204740205280%_)))))
                (_%__kont209205209206%_
                 (lambda (_%g204761205106%_
                          _%g204762205107%_
                          _%g204763205108%_
                          _%g204764205109%_)
                   (let ((_%$e205141%_
                          (let ((__tmp209554
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g204764205109%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp209554))))
                     (if _%$e205141%_
                         ((lambda (_%pred-type205144%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type205144%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type205144%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test205149%_
                                        (let ((__tmp209555
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g204764205109%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g204763205108%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp209555
                                           _%stx204733%_
                                           _%self204732%_)))
                                       (_%K205153%_
                                        (let ((__tmp209556
                                               (lambda ()
                                                 (let ((__tmp209559
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self204732%_
                                                             _%g204762205107%_))))
                                                       (__tmp209557
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g204763205108%_))
                            (let ((__tmp209558
                                   (##structure-ref
                                    _%pred-type205144%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx204733%_
                               __tmp209558)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp209559
                                                    gxc#current-compile-path-type
                                                    __tmp209557)))))
                                          (declare (not safe))
                                          (__make-promise __tmp209556)))
                                       (_%E205156%_
                                        (let ((__tmp209560
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self204732%_
                                                    _%g204761205106%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp209560)))
                                       (_%__stx209179209180%_ _%test205149%_)
                                       (_%g205160205174%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx209179209180%_)))))
                                  (let ((_%__kont209181209182%_
                                         (lambda (_%g205162205202%_
                                                  _%g205163205203%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g205162205202%_))
                                               (force _%K205153%_)
                                               (force _%E205156%_))))
                                        (_%__kont209183209184%_
                                         (lambda ()
                                           (let ((__tmp209561
                                                  (cons '%#if
                                                        (cons _%test205149%_
                                                              (cons (force _%K205153%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E205156%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209561
                                              _%stx204733%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx209179209180%_))
                                        (let ((_%e205164205186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx209179209180%_))))
                                          (let ((_%tl205166205191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e205164205186%_)))
                                                (_%hd205165205189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e205164205186%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205166205191%_))
                                                (let ((_%e205167205194%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl205166205191%_))))
                                                  (let ((_%tl205169205199%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205167205194%_)))
                                                        (_%hd205168205197%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205167205194%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205169205199%_))
                                                        (_%__kont209181209182%_
                                                         _%hd205168205197%_
                                                         _%hd205165205189%_)
                                                        (_%__kont209183209184%_))))
                                                (_%__kont209183209184%_))))
                                        (_%__kont209183209184%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self204732%_
                                   _%stx204733%_))))
                          _%$e205141%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self204732%_
                            _%stx204733%_))))))
                (_%__kont209207209208%_
                 (lambda (_%g204798204982%_
                          _%g204799204983%_
                          _%g204800204984%_
                          _%g204801204985%_)
                   (gxc#optimize-if%
                    _%self204732%_
                    (let ((__tmp209562
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g204800204984%_
                                       (cons _%g204798204982%_
                                             (cons _%g204799204983%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209562 _%stx204733%_)))))
                (_%__kont209209209210%_
                 (lambda (_%g204829204885%_
                          _%g204830204886%_
                          _%g204831204887%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self204732%_ _%stx204733%_)))))
            (let ((_%__match209408209409%_
                   (lambda (_%e204802204910%_
                            _%hd204803204913%_
                            _%tl204804204915%_
                            _%e204805204918%_
                            _%hd204806204921%_
                            _%tl204807204923%_
                            _%e204808204926%_
                            _%hd204809204929%_
                            _%tl204810204931%_
                            _%e204811204934%_
                            _%hd204812204937%_
                            _%tl204813204939%_
                            _%e204814204942%_
                            _%hd204815204945%_
                            _%tl204816204947%_
                            _%e204817204950%_
                            _%hd204818204953%_
                            _%tl204819204955%_
                            _%e204820204958%_
                            _%hd204821204961%_
                            _%tl204822204963%_
                            _%e204823204966%_
                            _%hd204824204969%_
                            _%tl204825204971%_
                            _%e204826204974%_
                            _%hd204827204977%_
                            _%tl204828204979%_)
                     (let ((_%g204798204982%_ _%hd204827204977%_)
                           (_%g204799204983%_ _%hd204824204969%_)
                           (_%g204800204984%_ _%hd204821204961%_)
                           (_%g204801204985%_ _%hd204818204953%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g204801204985%_ 'not))
                           (_%__kont209207209208%_
                            _%g204798204982%_
                            _%g204799204983%_
                            _%g204800204984%_
                            _%g204801204985%_)
                           (_%__kont209209209210%_
                            _%hd204827204977%_
                            _%hd204824204969%_
                            _%hd204806204921%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209201209202%_))
                  (let ((_%e204743205232%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx209201209202%_))))
                    (let ((_%tl204745205237%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204743205232%_)))
                          (_%hd204744205235%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204743205232%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204745205237%_))
                          (let ((_%e204746205240%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204745205237%_))))
                            (let ((_%tl204748205245%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204746205240%_)))
                                  (_%hd204747205243%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204746205240%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd204747205243%_))
                                  (let ((_%e204749205248%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204747205243%_))))
                                    (let ((_%tl204751205253%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204749205248%_)))
                                          (_%hd204750205251%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204749205248%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd204750205251%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd204750205251%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204751205253%_))
                                                  (let ((_%e204752205256%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204751205253%_))))
                                                    (let ((_%tl204754205261%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204752205256%_)))
                                                          (_%hd204753205259%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204752205256%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204754205261%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl204748205245%_))
                      (let ((_%e204755205264%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204748205245%_))))
                        (let ((_%tl204757205269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204755205264%_)))
                              (_%hd204756205267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204755205264%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204757205269%_))
                              (let ((_%e204758205272%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204757205269%_))))
                                (let ((_%tl204760205277%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204758205272%_)))
                                      (_%hd204759205275%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204758205272%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204760205277%_))
                                      (_%__kont209203209204%_
                                       _%hd204759205275%_
                                       _%hd204756205267%_
                                       _%hd204753205259%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g204738204848%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g204738204848%_)))))
                      (let () (declare (not safe)) (_%g204738204848%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204748205245%_))
                      (let ((_%e204838204869%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204748205245%_))))
                        (let ((_%tl204840204874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204838204869%_)))
                              (_%hd204839204872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204838204869%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204840204874%_))
                              (let ((_%e204841204877%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204840204874%_))))
                                (let ((_%tl204843204882%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204841204877%_)))
                                      (_%hd204842204880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204841204877%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204843204882%_))
                                      (_%__kont209209209210%_
                                       _%hd204842204880%_
                                       _%hd204839204872%_
                                       _%hd204747205243%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g204738204848%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g204738204848%_)))))
                      (let () (declare (not safe)) (_%g204738204848%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204748205245%_))
                                                      (let ((_%e204838204869%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204748205245%_))))
                (let ((_%tl204840204874%_
                       (let () (declare (not safe)) (##cdr _%e204838204869%_)))
                      (_%hd204839204872%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204838204869%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204840204874%_))
                      (let ((_%e204841204877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204840204874%_))))
                        (let ((_%tl204843204882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204841204877%_)))
                              (_%hd204842204880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204841204877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204843204882%_))
                              (_%__kont209209209210%_
                               _%hd204842204880%_
                               _%hd204839204872%_
                               _%hd204747205243%_)
                              (let ()
                                (declare (not safe))
                                (_%g204738204848%_)))))
                      (let () (declare (not safe)) (_%g204738204848%_)))))
              (let () (declare (not safe)) (_%g204738204848%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd204750205251%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204751205253%_))
                                                      (let ((_%e204774205042%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204751205253%_))))
                (let ((_%tl204776205047%_
                       (let () (declare (not safe)) (##cdr _%e204774205042%_)))
                      (_%hd204775205045%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204774205042%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd204775205045%_))
                      (let ((_%e204777205050%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd204775205045%_))))
                        (let ((_%tl204779205055%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204777205050%_)))
                              (_%hd204778205053%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204777205050%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd204778205053%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd204778205053%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204779205055%_))
                                      (let ((_%e204780205058%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204779205055%_))))
                                        (let ((_%tl204782205063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204780205058%_)))
                                              (_%hd204781205061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204780205058%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204782205063%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204776205047%_))
                                                  (let ((_%e204783205066%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204776205047%_))))
                                                    (let ((_%tl204785205071%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204783205066%_)))
                                                          (_%hd204784205069%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204783205066%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd204784205069%_))
                                                          (let ((_%e204786205074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd204784205069%_))))
                    (let ((_%tl204788205079%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204786205074%_)))
                          (_%hd204787205077%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204786205074%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd204787205077%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd204787205077%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204788205079%_))
                                  (let ((_%e204789205082%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204788205079%_))))
                                    (let ((_%tl204791205087%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204789205082%_)))
                                          (_%hd204790205085%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204789205082%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204791205087%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204785205071%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204748205245%_))
                                                  (let ((_%e204792205090%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204748205245%_))))
                                                    (let ((_%tl204794205095%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204792205090%_)))
                                                          (_%hd204793205093%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204792205090%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204794205095%_))
                                                          (let ((_%e204795205098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204794205095%_))))
                    (let ((_%tl204797205103%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204795205098%_)))
                          (_%hd204796205101%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204795205098%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204797205103%_))
                          (_%__kont209205209206%_
                           _%hd204796205101%_
                           _%hd204793205093%_
                           _%hd204790205085%_
                           _%hd204781205061%_)
                          (let () (declare (not safe)) (_%g204738204848%_)))))
                  (let () (declare (not safe)) (_%g204738204848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204738204848%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204748205245%_))
                                                  (let ((_%e204838204869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204748205245%_))))
                                                    (let ((_%tl204840204874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204838204869%_)))
                                                          (_%hd204839204872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204838204869%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204840204874%_))
                                                          (let ((_%e204841204877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204840204874%_))))
                    (let ((_%tl204843204882%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204841204877%_)))
                          (_%hd204842204880%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204841204877%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204843204882%_))
                          (_%__kont209209209210%_
                           _%hd204842204880%_
                           _%hd204839204872%_
                           _%hd204747205243%_)
                          (let () (declare (not safe)) (_%g204738204848%_)))))
                  (let () (declare (not safe)) (_%g204738204848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204738204848%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204785205071%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204748205245%_))
                                                  (let ((_%e204823204966%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204748205245%_))))
                                                    (let ((_%tl204825204971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204823204966%_)))
                                                          (_%hd204824204969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204823204966%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204825204971%_))
                                                          (let ((_%e204826204974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204825204971%_))))
                    (let ((_%tl204828204979%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204826204974%_)))
                          (_%hd204827204977%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204826204974%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204828204979%_))
                          (_%__match209408209409%_
                           _%e204743205232%_
                           _%hd204744205235%_
                           _%tl204745205237%_
                           _%e204746205240%_
                           _%hd204747205243%_
                           _%tl204748205245%_
                           _%e204749205248%_
                           _%hd204750205251%_
                           _%tl204751205253%_
                           _%e204774205042%_
                           _%hd204775205045%_
                           _%tl204776205047%_
                           _%e204777205050%_
                           _%hd204778205053%_
                           _%tl204779205055%_
                           _%e204780205058%_
                           _%hd204781205061%_
                           _%tl204782205063%_
                           _%e204783205066%_
                           _%hd204784205069%_
                           _%tl204785205071%_
                           _%e204823204966%_
                           _%hd204824204969%_
                           _%tl204825204971%_
                           _%e204826204974%_
                           _%hd204827204977%_
                           _%tl204828204979%_)
                          (let () (declare (not safe)) (_%g204738204848%_)))))
                  (let () (declare (not safe)) (_%g204738204848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204738204848%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204748205245%_))
                                                  (let ((_%e204838204869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204748205245%_))))
                                                    (let ((_%tl204840204874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204838204869%_)))
                                                          (_%hd204839204872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204838204869%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204840204874%_))
                                                          (let ((_%e204841204877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204840204874%_))))
                    (let ((_%tl204843204882%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204841204877%_)))
                          (_%hd204842204880%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204841204877%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204843204882%_))
                          (_%__kont209209209210%_
                           _%hd204842204880%_
                           _%hd204839204872%_
                           _%hd204747205243%_)
                          (let () (declare (not safe)) (_%g204738204848%_)))))
                  (let () (declare (not safe)) (_%g204738204848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204738204848%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204785205071%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204748205245%_))
                                          (let ((_%e204823204966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204748205245%_))))
                                            (let ((_%tl204825204971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204823204966%_)))
                                                  (_%hd204824204969%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204823204966%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204825204971%_))
                                                  (let ((_%e204826204974%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204825204971%_))))
                                                    (let ((_%tl204828204979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204826204974%_)))
                                                          (_%hd204827204977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204826204974%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204828204979%_))
                                                          (_%__match209408209409%_
                                                           _%e204743205232%_
                                                           _%hd204744205235%_
                                                           _%tl204745205237%_
                                                           _%e204746205240%_
                                                           _%hd204747205243%_
                                                           _%tl204748205245%_
                                                           _%e204749205248%_
                                                           _%hd204750205251%_
                                                           _%tl204751205253%_
                                                           _%e204774205042%_
                                                           _%hd204775205045%_
                                                           _%tl204776205047%_
                                                           _%e204777205050%_
                                                           _%hd204778205053%_
                                                           _%tl204779205055%_
                                                           _%e204780205058%_
                                                           _%hd204781205061%_
                                                           _%tl204782205063%_
                                                           _%e204783205066%_
                                                           _%hd204784205069%_
                                                           _%tl204785205071%_
                                                           _%e204823204966%_
                                                           _%hd204824204969%_
                                                           _%tl204825204971%_
                                                           _%e204826204974%_
                                                           _%hd204827204977%_
                                                           _%tl204828204979%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204738204848%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204738204848%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204738204848%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204748205245%_))
                                          (let ((_%e204838204869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204748205245%_))))
                                            (let ((_%tl204840204874%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204838204869%_)))
                                                  (_%hd204839204872%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204838204869%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204840204874%_))
                                                  (let ((_%e204841204877%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204840204874%_))))
                                                    (let ((_%tl204843204882%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204841204877%_)))
                                                          (_%hd204842204880%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204841204877%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204843204882%_))
                                                          (_%__kont209209209210%_
                                                           _%hd204842204880%_
                                                           _%hd204839204872%_
                                                           _%hd204747205243%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204738204848%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204738204848%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204738204848%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204785205071%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204748205245%_))
                                      (let ((_%e204823204966%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204748205245%_))))
                                        (let ((_%tl204825204971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204823204966%_)))
                                              (_%hd204824204969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204823204966%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204825204971%_))
                                              (let ((_%e204826204974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204825204971%_))))
                                                (let ((_%tl204828204979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204826204974%_)))
                                                      (_%hd204827204977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204826204974%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204828204979%_))
                                                      (_%__match209408209409%_
                                                       _%e204743205232%_
                                                       _%hd204744205235%_
                                                       _%tl204745205237%_
                                                       _%e204746205240%_
                                                       _%hd204747205243%_
                                                       _%tl204748205245%_
                                                       _%e204749205248%_
                                                       _%hd204750205251%_
                                                       _%tl204751205253%_
                                                       _%e204774205042%_
                                                       _%hd204775205045%_
                                                       _%tl204776205047%_
                                                       _%e204777205050%_
                                                       _%hd204778205053%_
                                                       _%tl204779205055%_
                                                       _%e204780205058%_
                                                       _%hd204781205061%_
                                                       _%tl204782205063%_
                                                       _%e204783205066%_
                                                       _%hd204784205069%_
                                                       _%tl204785205071%_
                                                       _%e204823204966%_
                                                       _%hd204824204969%_
                                                       _%tl204825204971%_
                                                       _%e204826204974%_
                                                       _%hd204827204977%_
                                                       _%tl204828204979%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204738204848%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204738204848%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204738204848%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204748205245%_))
                                      (let ((_%e204838204869%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204748205245%_))))
                                        (let ((_%tl204840204874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204838204869%_)))
                                              (_%hd204839204872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204838204869%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204840204874%_))
                                              (let ((_%e204841204877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204840204874%_))))
                                                (let ((_%tl204843204882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204841204877%_)))
                                                      (_%hd204842204880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204841204877%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204843204882%_))
                                                      (_%__kont209209209210%_
                                                       _%hd204842204880%_
                                                       _%hd204839204872%_
                                                       _%hd204747205243%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204738204848%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204738204848%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204738204848%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204785205071%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204748205245%_))
                                  (let ((_%e204823204966%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204748205245%_))))
                                    (let ((_%tl204825204971%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204823204966%_)))
                                          (_%hd204824204969%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204823204966%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204825204971%_))
                                          (let ((_%e204826204974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204825204971%_))))
                                            (let ((_%tl204828204979%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204826204974%_)))
                                                  (_%hd204827204977%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204826204974%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204828204979%_))
                                                  (_%__match209408209409%_
                                                   _%e204743205232%_
                                                   _%hd204744205235%_
                                                   _%tl204745205237%_
                                                   _%e204746205240%_
                                                   _%hd204747205243%_
                                                   _%tl204748205245%_
                                                   _%e204749205248%_
                                                   _%hd204750205251%_
                                                   _%tl204751205253%_
                                                   _%e204774205042%_
                                                   _%hd204775205045%_
                                                   _%tl204776205047%_
                                                   _%e204777205050%_
                                                   _%hd204778205053%_
                                                   _%tl204779205055%_
                                                   _%e204780205058%_
                                                   _%hd204781205061%_
                                                   _%tl204782205063%_
                                                   _%e204783205066%_
                                                   _%hd204784205069%_
                                                   _%tl204785205071%_
                                                   _%e204823204966%_
                                                   _%hd204824204969%_
                                                   _%tl204825204971%_
                                                   _%e204826204974%_
                                                   _%hd204827204977%_
                                                   _%tl204828204979%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204738204848%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204738204848%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204738204848%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204748205245%_))
                                  (let ((_%e204838204869%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204748205245%_))))
                                    (let ((_%tl204840204874%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204838204869%_)))
                                          (_%hd204839204872%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204838204869%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204840204874%_))
                                          (let ((_%e204841204877%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204840204874%_))))
                                            (let ((_%tl204843204882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204841204877%_)))
                                                  (_%hd204842204880%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204841204877%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204843204882%_))
                                                  (_%__kont209209209210%_
                                                   _%hd204842204880%_
                                                   _%hd204839204872%_
                                                   _%hd204747205243%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204738204848%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204738204848%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204738204848%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204785205071%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204748205245%_))
                          (let ((_%e204823204966%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204748205245%_))))
                            (let ((_%tl204825204971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204823204966%_)))
                                  (_%hd204824204969%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204823204966%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204825204971%_))
                                  (let ((_%e204826204974%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204825204971%_))))
                                    (let ((_%tl204828204979%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204826204974%_)))
                                          (_%hd204827204977%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204826204974%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204828204979%_))
                                          (_%__match209408209409%_
                                           _%e204743205232%_
                                           _%hd204744205235%_
                                           _%tl204745205237%_
                                           _%e204746205240%_
                                           _%hd204747205243%_
                                           _%tl204748205245%_
                                           _%e204749205248%_
                                           _%hd204750205251%_
                                           _%tl204751205253%_
                                           _%e204774205042%_
                                           _%hd204775205045%_
                                           _%tl204776205047%_
                                           _%e204777205050%_
                                           _%hd204778205053%_
                                           _%tl204779205055%_
                                           _%e204780205058%_
                                           _%hd204781205061%_
                                           _%tl204782205063%_
                                           _%e204783205066%_
                                           _%hd204784205069%_
                                           _%tl204785205071%_
                                           _%e204823204966%_
                                           _%hd204824204969%_
                                           _%tl204825204971%_
                                           _%e204826204974%_
                                           _%hd204827204977%_
                                           _%tl204828204979%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204738204848%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204738204848%_)))))
                          (let () (declare (not safe)) (_%g204738204848%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204748205245%_))
                          (let ((_%e204838204869%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204748205245%_))))
                            (let ((_%tl204840204874%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204838204869%_)))
                                  (_%hd204839204872%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204838204869%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204840204874%_))
                                  (let ((_%e204841204877%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204840204874%_))))
                                    (let ((_%tl204843204882%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204841204877%_)))
                                          (_%hd204842204880%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204841204877%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204843204882%_))
                                          (_%__kont209209209210%_
                                           _%hd204842204880%_
                                           _%hd204839204872%_
                                           _%hd204747205243%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204738204848%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204738204848%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g204738204848%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204748205245%_))
                                                      (let ((_%e204838204869%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204748205245%_))))
                (let ((_%tl204840204874%_
                       (let () (declare (not safe)) (##cdr _%e204838204869%_)))
                      (_%hd204839204872%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204838204869%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204840204874%_))
                      (let ((_%e204841204877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204840204874%_))))
                        (let ((_%tl204843204882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204841204877%_)))
                              (_%hd204842204880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204841204877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204843204882%_))
                              (_%__kont209209209210%_
                               _%hd204842204880%_
                               _%hd204839204872%_
                               _%hd204747205243%_)
                              (let ()
                                (declare (not safe))
                                (_%g204738204848%_)))))
                      (let () (declare (not safe)) (_%g204738204848%_)))))
              (let () (declare (not safe)) (_%g204738204848%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204748205245%_))
                                                  (let ((_%e204838204869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204748205245%_))))
                                                    (let ((_%tl204840204874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204838204869%_)))
                                                          (_%hd204839204872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204838204869%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204840204874%_))
                                                          (let ((_%e204841204877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204840204874%_))))
                    (let ((_%tl204843204882%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204841204877%_)))
                          (_%hd204842204880%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204841204877%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204843204882%_))
                          (_%__kont209209209210%_
                           _%hd204842204880%_
                           _%hd204839204872%_
                           _%hd204747205243%_)
                          (let () (declare (not safe)) (_%g204738204848%_)))))
                  (let () (declare (not safe)) (_%g204738204848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204738204848%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204748205245%_))
                                          (let ((_%e204838204869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204748205245%_))))
                                            (let ((_%tl204840204874%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204838204869%_)))
                                                  (_%hd204839204872%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204838204869%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204840204874%_))
                                                  (let ((_%e204841204877%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204840204874%_))))
                                                    (let ((_%tl204843204882%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204841204877%_)))
                                                          (_%hd204842204880%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204841204877%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204843204882%_))
                                                          (_%__kont209209209210%_
                                                           _%hd204842204880%_
                                                           _%hd204839204872%_
                                                           _%hd204747205243%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204738204848%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204738204848%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204738204848%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204748205245%_))
                                      (let ((_%e204838204869%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204748205245%_))))
                                        (let ((_%tl204840204874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204838204869%_)))
                                              (_%hd204839204872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204838204869%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204840204874%_))
                                              (let ((_%e204841204877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204840204874%_))))
                                                (let ((_%tl204843204882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204841204877%_)))
                                                      (_%hd204842204880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204841204877%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204843204882%_))
                                                      (_%__kont209209209210%_
                                                       _%hd204842204880%_
                                                       _%hd204839204872%_
                                                       _%hd204747205243%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204738204848%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204738204848%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204738204848%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204748205245%_))
                                  (let ((_%e204838204869%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204748205245%_))))
                                    (let ((_%tl204840204874%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204838204869%_)))
                                          (_%hd204839204872%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204838204869%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204840204874%_))
                                          (let ((_%e204841204877%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204840204874%_))))
                                            (let ((_%tl204843204882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204841204877%_)))
                                                  (_%hd204842204880%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204841204877%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204843204882%_))
                                                  (_%__kont209209209210%_
                                                   _%hd204842204880%_
                                                   _%hd204839204872%_
                                                   _%hd204747205243%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204738204848%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204738204848%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204738204848%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204748205245%_))
                          (let ((_%e204838204869%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204748205245%_))))
                            (let ((_%tl204840204874%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204838204869%_)))
                                  (_%hd204839204872%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204838204869%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204840204874%_))
                                  (let ((_%e204841204877%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204840204874%_))))
                                    (let ((_%tl204843204882%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204841204877%_)))
                                          (_%hd204842204880%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204841204877%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204843204882%_))
                                          (_%__kont209209209210%_
                                           _%hd204842204880%_
                                           _%hd204839204872%_
                                           _%hd204747205243%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204738204848%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204738204848%_)))))
                          (let () (declare (not safe)) (_%g204738204848%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl204748205245%_))
                  (let ((_%e204838204869%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204748205245%_))))
                    (let ((_%tl204840204874%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204838204869%_)))
                          (_%hd204839204872%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204838204869%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204840204874%_))
                          (let ((_%e204841204877%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204840204874%_))))
                            (let ((_%tl204843204882%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204841204877%_)))
                                  (_%hd204842204880%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204841204877%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204843204882%_))
                                  (_%__kont209209209210%_
                                   _%hd204842204880%_
                                   _%hd204839204872%_
                                   _%hd204747205243%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g204738204848%_)))))
                          (let () (declare (not safe)) (_%g204738204848%_)))))
                  (let () (declare (not safe)) (_%g204738204848%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204748205245%_))
                                                      (let ((_%e204838204869%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204748205245%_))))
                (let ((_%tl204840204874%_
                       (let () (declare (not safe)) (##cdr _%e204838204869%_)))
                      (_%hd204839204872%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204838204869%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204840204874%_))
                      (let ((_%e204841204877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204840204874%_))))
                        (let ((_%tl204843204882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204841204877%_)))
                              (_%hd204842204880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204841204877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204843204882%_))
                              (_%__kont209209209210%_
                               _%hd204842204880%_
                               _%hd204839204872%_
                               _%hd204747205243%_)
                              (let ()
                                (declare (not safe))
                                (_%g204738204848%_)))))
                      (let () (declare (not safe)) (_%g204738204848%_)))))
              (let () (declare (not safe)) (_%g204738204848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204748205245%_))
                                              (let ((_%e204838204869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204748205245%_))))
                                                (let ((_%tl204840204874%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204838204869%_)))
                                                      (_%hd204839204872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204838204869%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204840204874%_))
                                                      (let ((_%e204841204877%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204840204874%_))))
                (let ((_%tl204843204882%_
                       (let () (declare (not safe)) (##cdr _%e204841204877%_)))
                      (_%hd204842204880%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204841204877%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204843204882%_))
                      (_%__kont209209209210%_
                       _%hd204842204880%_
                       _%hd204839204872%_
                       _%hd204747205243%_)
                      (let () (declare (not safe)) (_%g204738204848%_)))))
              (let () (declare (not safe)) (_%g204738204848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g204738204848%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204748205245%_))
                                      (let ((_%e204838204869%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204748205245%_))))
                                        (let ((_%tl204840204874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204838204869%_)))
                                              (_%hd204839204872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204838204869%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204840204874%_))
                                              (let ((_%e204841204877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204840204874%_))))
                                                (let ((_%tl204843204882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204841204877%_)))
                                                      (_%hd204842204880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204841204877%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204843204882%_))
                                                      (_%__kont209209209210%_
                                                       _%hd204842204880%_
                                                       _%hd204839204872%_
                                                       _%hd204747205243%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204738204848%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204738204848%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204738204848%_))))))
                          (let () (declare (not safe)) (_%g204738204848%_)))))
                  (let () (declare (not safe)) (_%g204738204848%_))))))))))
