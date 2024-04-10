(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712784671)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp191544 (list gxc#::basic-xform::t))
            (__tmp191543 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp191544
         '()
         __tmp191543
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args191079%_
        (apply make-instance gxc#::optimize-call::t _%$args191079%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp191545
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
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-promise __tmp191545)))
    (define gxc#apply-optimize-call
      (lambda (_%stx191071%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self191074%_
                (let ((__obj191535
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj191535))
               (__tmp191546
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self191074%_ _%stx191071%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191546
           gxc#current-compile-method
           _%self191074%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp191548 (list gxc#::void::t))
            (__tmp191547 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp191548
         '()
         __tmp191547
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args191068%_
        (apply make-instance gxc#::check-return-type::t _%$args191068%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp191549
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
                  gxc#apply-operands))
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
        (__make-promise __tmp191549)))
    (define gxc#apply-check-return-type
      (lambda (_%stx191060%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self191063%_
                (let ((__obj191537
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj191537))
               (__tmp191550
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self191063%_ _%stx191060%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191550
           gxc#current-compile-method
           _%self191063%_))))
    (define gxc#optimize-call%
      (lambda (_%self190661%_ _%stx190662%_)
        (let* ((_%__stx191148191149%_ _%stx190662%_)
               (_%g190665190711%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191148191149%_)))))
          (let ((_%__kont191150191151%_
                 (lambda (_%L190854%_ _%L190855%_)
                   (let* ((_%rator-id190875%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L190855%_)))
                          (_%rator-type190877%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id190875%_))))
                     (if (or (not _%rator-type190877%_)
                             (eq? (##structure-ref
                                   _%rator-type190877%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self190661%_ _%stx190662%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type190877%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp191551
                                      (##structure-ref
                                       _%rator-type190877%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id190875%_
                                  '" => "
                                  _%rator-type190877%_
                                  '" "
                                  __tmp191551))
                               (let* ((_%optimized190892%_
                                       (let ((__method191538
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type190877%_
                                                 'optimize-call))))
                                         (if __method191538
                                             (let ((__tmp191552
                                                    (let ((__tmp191553
                                                           (lambda (_%g190884190887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g190885190889%_)
                     (cons _%g190884190887%_ _%g190885190889%_))))
              (declare (not safe))
              (__foldr1 __tmp191553 '() _%L190854%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method191538
                                                _%rator-type190877%_
                                                _%self190661%_
                                                _%stx190662%_
                                                __tmp191552))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type190877%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx191096191097%_
                                       _%optimized190892%_)
                                      (_%g190895190924%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx191096191097%_)))))
                                 (let ((_%__kont191098191099%_
                                        (lambda (_%L190992%_ _%L190993%_)
                                          (let* ((_%optimized-rator-id191020%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L190993%_)))
                                                 (_%rator-type191025%_
                                                  (let ((_%$e191022%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id191020%_))))
                                                    (if _%$e191022%_
                                                        _%$e191022%_
                                                        _%rator-type190877%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type191025%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id191020%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type191025%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type191025%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized190892%_
                                                (let ((__tmp191554
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L190993%_ '()))
                           (let ((__tmp191555
                                  (lambda (_%g191033191036%_ _%g191034191038%_)
                                    (cons _%g191033191036%_
                                          _%g191034191038%_))))
                             (declare (not safe))
                             (__foldr1 __tmp191555 '() _%L190992%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp191554
                                                   _%stx190662%_))))))
                                       (_%__kont191102191103%_
                                        (lambda () _%optimized190892%_)))
                                   (let ((_%__match191145191146%_
                                          (lambda (_%e190899190936%_
                                                   _%hd190900190939%_
                                                   _%tl190901190941%_
                                                   _%e190902190944%_
                                                   _%hd190903190947%_
                                                   _%tl190904190949%_
                                                   _%e190905190952%_
                                                   _%hd190906190955%_
                                                   _%tl190907190957%_
                                                   _%e190908190960%_
                                                   _%hd190909190963%_
                                                   _%tl190910190965%_
                                                   _%__splice191100191101%_
                                                   _%target190911190968%_
                                                   _%tl190913190970%_)
                                            (letrec ((_%loop190914190973%_
                                                      (lambda (_%hd190912190976%_
                                                               _%arg190918190978%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd190912190976%_))
                                                            (let ((_%e190915190981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd190912190976%_))))
                      (let ((_%lp-tl190917190986%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e190915190981%_)))
                            (_%lp-hd190916190984%_
                             (let ()
                               (declare (not safe))
                               (##car _%e190915190981%_))))
                        (_%loop190914190973%_
                         _%lp-tl190917190986%_
                         (cons _%lp-hd190916190984%_ _%arg190918190978%_))))
                    (let ((_%arg190919190989%_ (reverse _%arg190918190978%_)))
                      (_%__kont191098191099%_
                       _%arg190919190989%_
                       _%hd190909190963%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop190914190973%_
                                               _%target190911190968%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx191096191097%_))
                                         (let ((_%e190899190936%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx191096191097%_))))
                                           (let ((_%tl190901190941%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190899190936%_)))
                                                 (_%hd190900190939%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190899190936%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd190900190939%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd190900190939%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl190901190941%_))
                                                         (let ((_%e190902190944%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl190901190941%_))))
                   (let ((_%tl190904190949%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e190902190944%_)))
                         (_%hd190903190947%_
                          (let ()
                            (declare (not safe))
                            (##car _%e190902190944%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd190903190947%_))
                         (let ((_%e190905190952%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd190903190947%_))))
                           (let ((_%tl190907190957%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e190905190952%_)))
                                 (_%hd190906190955%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e190905190952%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd190906190955%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd190906190955%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl190907190957%_))
                                         (let ((_%e190908190960%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl190907190957%_))))
                                           (let ((_%tl190910190965%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190908190960%_)))
                                                 (_%hd190909190963%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190908190960%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl190910190965%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl190904190949%_))
                                                     (let ((_%__splice191100191101%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl190904190949%_
                                                               '0))))
                                                       (let ((_%tl190913190970%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice191100191101%_ '1)))
                     (_%target190911190968%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice191100191101%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl190913190970%_))
                     (_%__match191145191146%_
                      _%e190899190936%_
                      _%hd190900190939%_
                      _%tl190901190941%_
                      _%e190902190944%_
                      _%hd190903190947%_
                      _%tl190904190949%_
                      _%e190905190952%_
                      _%hd190906190955%_
                      _%tl190907190957%_
                      _%e190908190960%_
                      _%hd190909190963%_
                      _%tl190910190965%_
                      _%__splice191100191101%_
                      _%target190911190968%_
                      _%tl190913190970%_)
                     (_%__kont191102191103%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont191102191103%_))
                                                 (_%__kont191102191103%_))))
                                         (_%__kont191102191103%_))
                                     (_%__kont191102191103%_))
                                 (_%__kont191102191103%_))))
                         (_%__kont191102191103%_))))
                 (_%__kont191102191103%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont191102191103%_))
                                                 (_%__kont191102191103%_))))
                                         (_%__kont191102191103%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type190877%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type190877%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp191556
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L190855%_
                                                                '()))
                                                    (map (lambda (_%g191044191046%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self190661%_
                                                              _%g191044191046%_)))
                                                         (let ((__tmp191557
                                                                (lambda (_%g191048191051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g191049191053%_)
                          (cons _%g191048191051%_ _%g191049191053%_))))
                   (declare (not safe))
                   (__foldr1 __tmp191557 '() _%L190854%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp191556
                                    _%stx190662%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx190662%_
                                    _%rator-type190877%_))))))))
                (_%__kont191154191155%_
                 (lambda (_%L190756%_ _%L190757%_)
                   (let ((_%rator-type190774%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L190757%_))))
                     (if (and _%rator-type190774%_
                              (eq? (##structure-ref
                                    _%rator-type190774%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (not (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      gxc#!primitive::t
                                      _%rator-type190774%_)))
                              (not (and (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%rator-type190774%_
                                           'gxc#!procedure::t))
                                        (eq? (let ()
                                               (declare (not safe))
                                               (gxc#!procedure-origin
                                                _%rator-type190774%_))
                                             (##structure-ref
                                              (let ()
                                                (declare (not safe))
                                                (gx#current-expander-context))
                                              '1
                                              gx#expander-context::t
                                              '#f)))))
                         (let ((__tmp191558
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self190661%_
                                               _%L190757%_))
                                            (map (lambda (_%g190776190778%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self190661%_
                                                      _%g190776190778%_)))
                                                 (let ((__tmp191559
                                                        (lambda (_%g190780190783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g190781190785%_)
                  (cons _%g190780190783%_ _%g190781190785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp191559
                                                    '()
                                                    _%L190756%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp191558 _%stx190662%_))
                         (if (or (not _%rator-type190774%_)
                                 (let ((__tmp191560
                                        (##structure-ref
                                         _%rator-type190774%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp191560 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self190661%_ _%stx190662%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx190662%_
                                _%rator-type190774%_))))))))
            (let* ((_%__match191215191216%_
                    (lambda (_%e190692190716%_
                             _%hd190693190719%_
                             _%tl190694190721%_
                             _%e190695190724%_
                             _%hd190696190727%_
                             _%tl190697190729%_
                             _%__splice191156191157%_
                             _%target190698190732%_
                             _%tl190700190734%_)
                      (letrec ((_%loop190701190737%_
                                (lambda (_%hd190699190740%_
                                         _%rand190705190742%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190699190740%_))
                                      (let ((_%e190702190745%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190699190740%_))))
                                        (let ((_%lp-tl190704190750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190702190745%_)))
                                              (_%lp-hd190703190748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190702190745%_))))
                                          (_%loop190701190737%_
                                           _%lp-tl190704190750%_
                                           (cons _%lp-hd190703190748%_
                                                 _%rand190705190742%_))))
                                      (let ((_%rand190706190753%_
                                             (reverse _%rand190705190742%_)))
                                        (_%__kont191154191155%_
                                         _%rand190706190753%_
                                         _%hd190696190727%_))))))
                        (_%loop190701190737%_ _%target190698190732%_ '()))))
                   (_%__match191195191196%_
                    (lambda (_%e190669190798%_
                             _%hd190670190801%_
                             _%tl190671190803%_
                             _%e190672190806%_
                             _%hd190673190809%_
                             _%tl190674190811%_
                             _%e190675190814%_
                             _%hd190676190817%_
                             _%tl190677190819%_
                             _%e190678190822%_
                             _%hd190679190825%_
                             _%tl190680190827%_
                             _%__splice191152191153%_
                             _%target190681190830%_
                             _%tl190683190832%_)
                      (letrec ((_%loop190684190835%_
                                (lambda (_%hd190682190838%_
                                         _%rand190688190840%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190682190838%_))
                                      (let ((_%e190685190843%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190682190838%_))))
                                        (let ((_%lp-tl190687190848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190685190843%_)))
                                              (_%lp-hd190686190846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190685190843%_))))
                                          (_%loop190684190835%_
                                           _%lp-tl190687190848%_
                                           (cons _%lp-hd190686190846%_
                                                 _%rand190688190840%_))))
                                      (let ((_%rand190689190851%_
                                             (reverse _%rand190688190840%_)))
                                        (_%__kont191150191151%_
                                         _%rand190689190851%_
                                         _%hd190679190825%_))))))
                        (_%loop190684190835%_ _%target190681190830%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191148191149%_))
                  (let ((_%e190669190798%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191148191149%_))))
                    (let ((_%tl190671190803%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190669190798%_)))
                          (_%hd190670190801%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190669190798%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190671190803%_))
                          (let ((_%e190672190806%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190671190803%_))))
                            (let ((_%tl190674190811%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190672190806%_)))
                                  (_%hd190673190809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190672190806%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190673190809%_))
                                  (let ((_%e190675190814%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190673190809%_))))
                                    (let ((_%tl190677190819%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190675190814%_)))
                                          (_%hd190676190817%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190675190814%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190676190817%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd190676190817%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190677190819%_))
                                                  (let ((_%e190678190822%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190677190819%_))))
                                                    (let ((_%tl190680190827%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190678190822%_)))
                                                          (_%hd190679190825%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190678190822%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190680190827%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl190674190811%_))
                      (let ((_%__splice191152191153%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190674190811%_
                                '0))))
                        (let ((_%tl190683190832%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice191152191153%_ '1)))
                              (_%target190681190830%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice191152191153%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190683190832%_))
                              (_%__match191195191196%_
                               _%e190669190798%_
                               _%hd190670190801%_
                               _%tl190671190803%_
                               _%e190672190806%_
                               _%hd190673190809%_
                               _%tl190674190811%_
                               _%e190675190814%_
                               _%hd190676190817%_
                               _%tl190677190819%_
                               _%e190678190822%_
                               _%hd190679190825%_
                               _%tl190680190827%_
                               _%__splice191152191153%_
                               _%target190681190830%_
                               _%tl190683190832%_)
                              (let ()
                                (declare (not safe))
                                (_%g190665190711%_)))))
                      (let () (declare (not safe)) (_%g190665190711%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl190674190811%_))
                      (let ((_%__splice191156191157%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190674190811%_
                                '0))))
                        (let ((_%tl190700190734%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice191156191157%_ '1)))
                              (_%target190698190732%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice191156191157%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190700190734%_))
                              (_%__match191215191216%_
                               _%e190669190798%_
                               _%hd190670190801%_
                               _%tl190671190803%_
                               _%e190672190806%_
                               _%hd190673190809%_
                               _%tl190674190811%_
                               _%__splice191156191157%_
                               _%target190698190732%_
                               _%tl190700190734%_)
                              (let ()
                                (declare (not safe))
                                (_%g190665190711%_)))))
                      (let () (declare (not safe)) (_%g190665190711%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl190674190811%_))
                                                      (let ((_%__splice191156191157%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl190674190811%_ '0))))
                (let ((_%tl190700190734%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice191156191157%_ '1)))
                      (_%target190698190732%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice191156191157%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190700190734%_))
                      (_%__match191215191216%_
                       _%e190669190798%_
                       _%hd190670190801%_
                       _%tl190671190803%_
                       _%e190672190806%_
                       _%hd190673190809%_
                       _%tl190674190811%_
                       _%__splice191156191157%_
                       _%target190698190732%_
                       _%tl190700190734%_)
                      (let () (declare (not safe)) (_%g190665190711%_)))))
              (let () (declare (not safe)) (_%g190665190711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl190674190811%_))
                                                  (let ((_%__splice191156191157%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl190674190811%_
                                                            '0))))
                                                    (let ((_%tl190700190734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191156191157%_
                                                              '1)))
                                                          (_%target190698190732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191156191157%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190700190734%_))
                                                          (_%__match191215191216%_
                                                           _%e190669190798%_
                                                           _%hd190670190801%_
                                                           _%tl190671190803%_
                                                           _%e190672190806%_
                                                           _%hd190673190809%_
                                                           _%tl190674190811%_
                                                           _%__splice191156191157%_
                                                           _%target190698190732%_
                                                           _%tl190700190734%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190665190711%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190665190711%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl190674190811%_))
                                              (let ((_%__splice191156191157%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl190674190811%_
                                                        '0))))
                                                (let ((_%tl190700190734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice191156191157%_
                                                          '1)))
                                                      (_%target190698190732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice191156191157%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190700190734%_))
                                                      (_%__match191215191216%_
                                                       _%e190669190798%_
                                                       _%hd190670190801%_
                                                       _%tl190671190803%_
                                                       _%e190672190806%_
                                                       _%hd190673190809%_
                                                       _%tl190674190811%_
                                                       _%__splice191156191157%_
                                                       _%target190698190732%_
                                                       _%tl190700190734%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190665190711%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190665190711%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190674190811%_))
                                      (let ((_%__splice191156191157%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190674190811%_
                                                '0))))
                                        (let ((_%tl190700190734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice191156191157%_
                                                  '1)))
                                              (_%target190698190732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice191156191157%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190700190734%_))
                                              (_%__match191215191216%_
                                               _%e190669190798%_
                                               _%hd190670190801%_
                                               _%tl190671190803%_
                                               _%e190672190806%_
                                               _%hd190673190809%_
                                               _%tl190674190811%_
                                               _%__splice191156191157%_
                                               _%target190698190732%_
                                               _%tl190700190734%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g190665190711%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190665190711%_))))))
                          (let () (declare (not safe)) (_%g190665190711%_)))))
                  (let () (declare (not safe)) (_%g190665190711%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self187614190621%_ _%ctx190623%_ _%stx190624%_ _%args190625%_)
        (let* ((_%self190627%_ _%self187614190621%_)
               (_%self190629%_ _%self190627%_))
          (if (let ((__method191539
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self190629%_ 'check-arguments))))
                (if __method191539
                    (let ()
                      (declare (not safe))
                      (__method191539
                       _%self190629%_
                       _%ctx190623%_
                       _%stx190624%_
                       _%args190625%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self190629%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature190639%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190629%_ '2 '#f '#f)))
                     (_%signature190641%_ _%signature190639%_)
                     (_%$e190651%_
                      (if _%signature190641%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature190641%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e190651%_
                    ((lambda (_%unchecked190654%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked190654%_))
                           (let ((__tmp191561
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked190654%_
                                                          '()))
                                              (map (lambda (_%g190655190657%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx190623%_
                                                        _%g190655190657%_)))
                                                   _%args190625%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp191561 _%stx190624%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx190623%_ _%stx190624%_))))
                     _%$e190651%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx190623%_ _%stx190624%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx190623%_ _%stx190624%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass191081 __method-table191082)
        (let ((__check-arguments191083
               (let ((__tmp191562
                      (lambda ()
                        (let ((__method191084
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table191082
                                  'check-arguments
                                  '#f))))
                          (if __method191084
                              __method191084
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp191562))))
          (lambda (_%self187614190621%_
                   _%ctx190623%_
                   _%stx190624%_
                   _%args190625%_)
            (let* ((_%self190627%_ _%self187614190621%_)
                   (_%self190629%_ _%self190627%_))
              (if ((force __check-arguments191083)
                   _%self190629%_
                   _%ctx190623%_
                   _%stx190624%_
                   _%args190625%_)
                  (let* ((_%signature190639%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190629%_
                             '2
                             '#f
                             '#f)))
                         (_%signature190641%_ _%signature190639%_)
                         (_%$e190651%_
                          (if _%signature190641%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature190641%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e190651%_
                        ((lambda (_%unchecked190654%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked190654%_))
                               (let ((__tmp191563
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked190654%_
                                                              '()))
                                                  (map (lambda (_%g190655190657%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx190623%_
                                                            _%g190655190657%_)))
                                                       _%args190625%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp191563
                                  _%stx190624%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx190623%_
                                  _%stx190624%_))))
                         _%$e190651%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx190623%_ _%stx190624%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx190623%_ _%stx190624%_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!procedure::optimize-call
       gxc#!procedure::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self187615190370%_ _%ctx190372%_ _%stx190373%_ _%args190374%_)
        (let* ((_%self190376%_ _%self187615190370%_)
               (_%self190378%_ _%self190376%_)
               (_%signature190387190389%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self190378%_ '2 '#f '#f))))
          (if _%signature190387190389%_
              (let* ((_%signature190392%_ _%signature190387190389%_)
                     (_%argument-types190393190395%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature190392%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types190393190395%_
                    (let* ((_%argument-types190398%_
                            _%argument-types190393190395%_)
                           (_%argument-types190403%_
                            (let ((__tmp191564
                                   (lambda (_%t190401%_)
                                     (if _%t190401%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx190373%_
                                            _%t190401%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp191564
                               _%argument-types190398%_))))
                      (let _%loop190405%_ ((_%rest-args190407%_ _%args190374%_)
                                           (_%rest-types190408%_
                                            _%argument-types190403%_)
                                           (_%result190409%_ '#t))
                        (let* ((_%rest-args190410190418%_ _%rest-args190407%_)
                               (_%else190412190426%_
                                (lambda () _%result190409%_))
                               (_%K190414190487%_
                                (lambda (_%rest-args190429%_ _%arg190430%_)
                                  (let* ((_%rest-types190431190442%_
                                          _%rest-types190408%_)
                                         (_%E190435190446%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types190431190442%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K190438190475%_
                                           (lambda (_%rest-types190472%_
                                                    _%type190473%_)
                                             (_%loop190405%_
                                              _%rest-args190429%_
                                              _%rest-types190472%_
                                              (if (gxc#check-expression-type!
                                                   _%stx190373%_
                                                   _%arg190430%_
                                                   _%type190473%_)
                                                  _%result190409%_
                                                  '#f))))
                                          (_%K190437190466%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx190373%_
                                                _%argument-types190403%_))))
                                          (_%K190436190456%_
                                           (lambda (_%tail-type190450%_)
                                             (if (let ((__tmp191565
                                                        (lambda (_%g190451190453%_)
                                                          (gxc#check-expression-type!
                                                           _%stx190373%_
                                                           _%g190451190453%_
                                                           _%tail-type190450%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp191565
                                                    _%rest-args190429%_))
                                                 _%result190409%_
                                                 '#f))))
                                      (let ((_%try-match190433190469%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types190431190442%_))
                                                   (_%K190437190466%_)
                                                   (let ((_%tail-type190459%_
                                                          _%rest-types190431190442%_))
                                                     (_%K190436190456%_
                                                      _%tail-type190459%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types190431190442%_))
                                            (let ((_%tl190440190480%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types190431190442%_)))
                                                  (_%hd190439190478%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types190431190442%_))))
                                              (let ((_%type190483%_
                                                     _%hd190439190478%_)
                                                    (_%rest-types190485%_
                                                     _%tl190440190480%_))
                                                (_%K190438190475%_
                                                 _%rest-types190485%_
                                                 _%type190483%_)))
                                            (_%try-match190433190469%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args190410190418%_))
                              (let ((_%hd190415190490%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args190410190418%_)))
                                    (_%tl190416190492%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args190410190418%_))))
                                (let* ((_%arg190495%_ _%hd190415190490%_)
                                       (_%rest-args190497%_
                                        _%tl190416190492%_))
                                  (_%K190414190487%_
                                   _%rest-args190497%_
                                   _%arg190495%_)))
                              (_%else190412190426%_)))))
                    '#f))
              '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self187616190179%_ _%ctx190181%_ _%stx190182%_ _%args190183%_)
        (let* ((_%self190185%_ _%self187616190179%_)
               (_%self190187%_ _%self190185%_)
               (_%g190197190207%_
                (lambda (_%g190198190204%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190198190204%_))))
               (_%g190196190245%_
                (lambda (_%g190198190210%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190198190210%_))
                      (let ((_%e190200190212%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190198190210%_))))
                        (let ((_%hd190201190215%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190200190212%_)))
                              (_%tl190202190217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190200190212%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190202190217%_))
                              ((lambda (_%L190220%_)
                                 (let* ((_%klass190232%_
                                         (let ((__tmp191566
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self190187%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx190182%_
                                            __tmp191566)))
                                        (_%object190234%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx190181%_
                                            _%L190220%_)))
                                        (_%instance?190239%_
                                         (let ((_%$e190236%_
                                                (gxc#expression-type?
                                                 _%object190234%_
                                                 _%klass190232%_)))
                                           (if _%$e190236%_
                                               _%$e190236%_
                                               (gxc#expression-type?
                                                _%L190220%_
                                                _%klass190232%_)))))
                                   (if _%instance?190239%_
                                       (let ((__tmp191567
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object190234%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L190220%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object190234%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp191567
                                          _%stx190182%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx190181%_
                                          _%stx190182%_)))))
                               _%hd190201190215%_)
                              (_%g190197190207%_ _%g190198190210%_))))
                      (_%g190197190207%_ _%g190198190210%_)))))
          (_%g190196190245%_ _%args190183%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self187617189973%_ _%ctx189975%_ _%stx189976%_ _%args189977%_)
        (let* ((_%self189979%_ _%self187617189973%_)
               (_%self189981%_ _%self189979%_)
               (_%g189991190001%_
                (lambda (_%g189992189998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189992189998%_))))
               (_%g189990190054%_
                (lambda (_%g189992190004%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189992190004%_))
                      (let ((_%e189994190006%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189992190004%_))))
                        (let ((_%hd189995190009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189994190006%_)))
                              (_%tl189996190011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189994190006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189996190011%_))
                              ((lambda (_%L190014%_)
                                 (let* ((_%klass190026%_
                                         (let ((__tmp191568
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self189981%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx189976%_
                                            __tmp191568)))
                                        (_%object190028%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx189975%_
                                            _%L190014%_)))
                                        (_%instance?190033%_
                                         (let ((_%$e190030%_
                                                (gxc#expression-type?
                                                 _%object190028%_
                                                 _%klass190026%_)))
                                           (if _%$e190030%_
                                               _%$e190030%_
                                               (gxc#expression-type?
                                                _%L190014%_
                                                _%klass190026%_))))
                                        (_%klass190036%_ _%klass190026%_))
                                   (if _%instance?190033%_
                                       (let ((__tmp191569
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object190028%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L190014%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object190028%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp191569
                                          _%stx189976%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass190036%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp191570
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass190036%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object190028%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191570
                                              _%stx189976%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass190036%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp191571
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass190036%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object190028%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp191571
                                                  _%stx189976%_))
                                               (let ((__tmp191572
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self189981%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object190028%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp191572
                                                  _%stx189976%_)))))))
                               _%hd189995190009%_)
                              (_%g189991190001%_ _%g189992190004%_))))
                      (_%g189991190001%_ _%g189992190004%_)))))
          (_%g189990190054%_ _%args189977%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx189636%_)
        (let* ((_%__stx191225191226%_ _%stx189636%_)
               (_%g189641189682%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191225191226%_)))))
          (let ((_%__kont191227191228%_ (lambda () '#t))
                (_%__kont191229191230%_ (lambda () '#t))
                (_%__kont191231191232%_
                 (lambda (_%L189750%_ _%L189751%_)
                   (let ((_%rator-type189772189774%_
                          (let ((__tmp191573
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L189751%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp191573))))
                     (if _%rator-type189772189774%_
                         (let* ((_%rator-type189777%_
                                 _%rator-type189772189774%_)
                                (_%rator-signature189778189780%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type189777%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type189777%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature189778189780%_
                               (let* ((_%rator-signature189783%_
                                       _%rator-signature189778189780%_)
                                      (_%rator-effect189784189786%_
                                       (if _%rator-signature189783%_
                                           (##direct-structure-ref
                                            _%rator-signature189783%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect189784189786%_
                                     (let ((_%rator-effect189789%_
                                            _%rator-effect189784189786%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect189789%_)
                                               (equal? '(alloc)
                                                       _%rator-effect189789%_))
                                           (let ((__tmp191574
                                                  (let ((__tmp191575
                                                         (lambda (_%g189794189797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g189795189799%_)
                   (cons _%g189794189797%_ _%g189795189799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp191575
                                                     '()
                                                     _%L189750%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp191574))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont191235191236%_ (lambda () '#f)))
            (let ((_%__match191314191315%_
                   (lambda (_%e189657189694%_
                            _%hd189658189697%_
                            _%tl189659189699%_
                            _%e189660189702%_
                            _%hd189661189705%_
                            _%tl189662189707%_
                            _%e189663189710%_
                            _%hd189664189713%_
                            _%tl189665189715%_
                            _%e189666189718%_
                            _%hd189667189721%_
                            _%tl189668189723%_
                            _%__splice191233191234%_
                            _%target189669189726%_
                            _%tl189671189728%_)
                     (letrec ((_%loop189672189731%_
                               (lambda (_%hd189670189734%_
                                        _%rand189676189736%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd189670189734%_))
                                     (let ((_%e189673189739%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd189670189734%_))))
                                       (let ((_%lp-tl189675189744%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e189673189739%_)))
                                             (_%lp-hd189674189742%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e189673189739%_))))
                                         (_%loop189672189731%_
                                          _%lp-tl189675189744%_
                                          (cons _%lp-hd189674189742%_
                                                _%rand189676189736%_))))
                                     (let ((_%rand189677189747%_
                                            (reverse _%rand189676189736%_)))
                                       (_%__kont191231191232%_
                                        _%rand189677189747%_
                                        _%hd189667189721%_))))))
                       (_%loop189672189731%_ _%target189669189726%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191225191226%_))
                  (let ((_%e189643189830%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191225191226%_))))
                    (let ((_%tl189645189835%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189643189830%_)))
                          (_%hd189644189833%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189643189830%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd189644189833%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd189644189833%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189645189835%_))
                                  (let ((_%e189646189838%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189645189835%_))))
                                    (let ((_%tl189648189843%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189646189838%_)))
                                          (_%hd189647189841%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189646189838%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189648189843%_))
                                          (_%__kont191227191228%_)
                                          (_%__kont191235191236%_))))
                                  (_%__kont191235191236%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd189644189833%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189645189835%_))
                                      (let ((_%e189652189815%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189645189835%_))))
                                        (let ((_%tl189654189820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189652189815%_)))
                                              (_%hd189653189818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189652189815%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189654189820%_))
                                              (_%__kont191229191230%_)
                                              (_%__kont191235191236%_))))
                                      (_%__kont191235191236%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd189644189833%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189645189835%_))
                                          (let ((_%e189660189702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189645189835%_))))
                                            (let ((_%tl189662189707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189660189702%_)))
                                                  (_%hd189661189705%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189660189702%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd189661189705%_))
                                                  (let ((_%e189663189710%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd189661189705%_))))
                                                    (let ((_%tl189665189715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189663189710%_)))
                                                          (_%hd189664189713%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189663189710%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd189664189713%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd189664189713%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189665189715%_))
                          (let ((_%e189666189718%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189665189715%_))))
                            (let ((_%tl189668189723%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189666189718%_)))
                                  (_%hd189667189721%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189666189718%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189668189723%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189662189707%_))
                                      (let ((_%__splice191233191234%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189662189707%_
                                                '0))))
                                        (let ((_%tl189671189728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice191233191234%_
                                                  '1)))
                                              (_%target189669189726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice191233191234%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189671189728%_))
                                              (_%__match191314191315%_
                                               _%e189643189830%_
                                               _%hd189644189833%_
                                               _%tl189645189835%_
                                               _%e189660189702%_
                                               _%hd189661189705%_
                                               _%tl189662189707%_
                                               _%e189663189710%_
                                               _%hd189664189713%_
                                               _%tl189665189715%_
                                               _%e189666189718%_
                                               _%hd189667189721%_
                                               _%tl189668189723%_
                                               _%__splice191233191234%_
                                               _%target189669189726%_
                                               _%tl189671189728%_)
                                              (_%__kont191235191236%_))))
                                      (_%__kont191235191236%_))
                                  (_%__kont191235191236%_))))
                          (_%__kont191235191236%_))
                      (_%__kont191235191236%_))
                  (_%__kont191235191236%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont191235191236%_))))
                                          (_%__kont191235191236%_))
                                      (_%__kont191235191236%_))))
                          (_%__kont191235191236%_))))
                  (_%__kont191235191236%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx189631%_ _%klass189632%_)
        (let ((_%expr-type189634%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx189631%_))))
          (if _%expr-type189634%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type189634%_ _%klass189632%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx189609%_ _%expr189610%_ _%type189611%_)
        (if (not _%type189611%_)
            '#f
            (let ((_%$e189614%_
                   (eq? (##structure-ref _%type189611%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e189614%_
                  _%$e189614%_
                  (let ((_%expr-type189618%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr189610%_))))
                    (if (not _%expr-type189618%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type189618%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e189622%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type189618%_
                                      'gxc#!abort::t))))
                              (if _%$e189622%_
                                  _%$e189622%_
                                  (let ((_%$e189625%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type189618%_
                                            _%type189611%_))))
                                    (if _%$e189625%_
                                        _%$e189625%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type189611%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type189611%_
                                                   _%expr-type189618%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx189609%_
                                                   _%expr189610%_
                                                   _%expr-type189618%_
                                                   _%type189611%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self187618189421%_ _%ctx189423%_ _%stx189424%_ _%args189425%_)
        (let* ((_%self189427%_ _%self187618189421%_)
               (_%self189429%_ _%self189427%_)
               (_%klass189439%_
                (let ((__tmp191576
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self189429%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx189424%_ __tmp191576)))
               (_%fields189441%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass189439%_
                           '5
                           '#f
                           '#f))))
               (_%args189447%_
                (map (lambda (_%g189442189444%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx189423%_ _%g189442189444%_)))
                     _%args189425%_))
               (_%inline-make-object189449%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self189429%_
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
                           _%self189429%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields189441%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass189452%_ _%klass189439%_)
               (_%$e189466%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass189452%_ '6 '#f '#f))))
          (if _%$e189466%_
              ((lambda (_%ctor189469%_)
                 (let ((_%$obj189471%_
                        (let ((__tmp191577
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp191577)))
                       (_%ctor-impl189472%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass189452%_
                           _%ctor189469%_))))
                   (let ((__tmp191578
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj189471%_ '())
                                                  (cons _%inline-make-object189449%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl189472%_
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%ctor-impl189472%_ '()))
                                (cons (cons '%#ref (cons _%$obj189471%_ '()))
                                      _%args189447%_)))
                    (let ((_%$ctor189474%_
                           (let ((__tmp191579
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp191579))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor189474%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189429%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj189471%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor189469%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor189474%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor189474%_ '()))
                              (cons (cons '%#ref (cons _%$obj189471%_ '()))
                                    _%args189447%_)))
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
                             _%self189429%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor189469%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj189471%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp191578 _%stx189424%_))))
               _%$e189466%_)
              (let ((_%$e189476%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass189452%_
                        '10
                        '#f
                        '#f))))
                (if _%$e189476%_
                    ((lambda (_%metaclass189479%_)
                       (let* ((_%$obj189481%_
                               (let ((__tmp191580
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp191580)))
                              (_%metakons189483%_
                               (let ((__tmp191581
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx189424%_
                                         _%metaclass189479%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp191581
                                  'instance-init!)))
                              (__tmp191582
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj189481%_
                                                             '())
                                                       (cons _%inline-make-object189449%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons189483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons _%metakons189483%_ '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self189429%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj189481%_
                                                             '()))
                                                 _%args189447%_))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self189429%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj189481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args189447%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj189481%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp191582 _%stx189424%_)))
                     _%$e189476%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass189452%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp191583
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args189447%_))))
                              (declare (not safe))
                              (##fx= __tmp191583 _%fields189441%_))
                            (let ((__tmp191584
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self189429%_
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
                                              _%self189429%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args189447%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp191584
                               _%stx189424%_))
                            (let ((__tmp191586
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self189429%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp191585
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass189452%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx189424%_
                               __tmp191586
                               __tmp191585)))
                        (let ((_%$obj189488%_
                               (let ((__tmp191587
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp191587))))
                          (let _%lp189490%_ ((_%rest189492%_ _%args189447%_)
                                             (_%initializers189493%_ '()))
                            (let* ((_%__stx191317191318%_ _%rest189492%_)
                                   (_%g189497189518%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx191317191318%_)))))
                              (let ((_%__kont191319191320%_
                                     (lambda (_%L189572%_
                                              _%L189573%_
                                              _%L189574%_)
                                       (let* ((_%slot189601%_
                                               (let ((__tmp191588
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L189574%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp191588)))
                                              (_%off189603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass189452%_
                                                  _%slot189601%_))))
                                         (if _%off189603%_
                                             (_%lp189490%_
                                              _%L189572%_
                                              (cons (cons _%off189603%_
                                                          _%L189573%_)
                                                    _%initializers189493%_))
                                             (let ((__tmp191589
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self189429%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx189424%_
                                                __tmp191589
                                                _%slot189601%_))))))
                                    (_%__kont191321191322%_
                                     (lambda ()
                                       (let ((__tmp191590
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj189488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object189449%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp191593
                                     (cons (cons '%#ref
                                                 (cons _%$obj189488%_ '()))
                                           '()))
                                    (__tmp191591
                                     (let ((__tmp191592
                                            (lambda (_%i189532%_ _%r189533%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self189429%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i189532%_) '()))
                              (cons (cons '%#ref (cons _%$obj189488%_ '()))
                                    (cons (cdr _%i189532%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r189533%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp191592
                                        '()
                                        _%initializers189493%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp191593 __tmp191591)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp191590
                                          _%stx189424%_))))
                                    (_%__kont191323191324%_
                                     (lambda ()
                                       (let ((__tmp191594
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj189488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object189449%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj189488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args189447%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj189488%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp191594
                                          _%stx189424%_)))))
                                (let* ((_%g189495189535%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx191317191318%_))
                                              (_%__kont191321191322%_)
                                              (_%__kont191323191324%_))))
                                       (_%__match191354191355%_
                                        (lambda (_%e189502189540%_
                                                 _%hd189503189543%_
                                                 _%tl189504189545%_
                                                 _%e189505189548%_
                                                 _%hd189506189551%_
                                                 _%tl189507189553%_
                                                 _%e189508189556%_
                                                 _%hd189509189559%_
                                                 _%tl189510189561%_
                                                 _%e189511189564%_
                                                 _%hd189512189567%_
                                                 _%tl189513189569%_)
                                          (let ((_%L189572%_
                                                 _%tl189513189569%_)
                                                (_%L189573%_
                                                 _%hd189512189567%_)
                                                (_%L189574%_
                                                 _%hd189509189559%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L189574%_))
                                                (_%__kont191319191320%_
                                                 _%L189572%_
                                                 _%L189573%_
                                                 _%L189574%_)
                                                (_%__kont191323191324%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx191317191318%_))
                                      (let ((_%e189502189540%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx191317191318%_))))
                                        (let ((_%tl189504189545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189502189540%_)))
                                              (_%hd189503189543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189502189540%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd189503189543%_))
                                              (let ((_%e189505189548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd189503189543%_))))
                                                (let ((_%tl189507189553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189505189548%_)))
                                                      (_%hd189506189551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189505189548%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd189506189551%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd189506189551%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl189507189553%_))
                      (let ((_%e189508189556%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl189507189553%_))))
                        (let ((_%tl189510189561%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189508189556%_)))
                              (_%hd189509189559%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189508189556%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189510189561%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189504189545%_))
                                  (let ((_%e189511189564%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189504189545%_))))
                                    (let ((_%tl189513189569%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189511189564%_)))
                                          (_%hd189512189567%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189511189564%_))))
                                      (_%__match191354191355%_
                                       _%e189502189540%_
                                       _%hd189503189543%_
                                       _%tl189504189545%_
                                       _%e189505189548%_
                                       _%hd189506189551%_
                                       _%tl189507189553%_
                                       _%e189508189556%_
                                       _%hd189509189559%_
                                       _%tl189510189561%_
                                       _%e189511189564%_
                                       _%hd189512189567%_
                                       _%tl189513189569%_)))
                                  (_%__kont191323191324%_))
                              (_%__kont191323191324%_))))
                      (_%__kont191323191324%_))
                  (_%__kont191323191324%_))
              (_%__kont191323191324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont191323191324%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189495189535%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self187619189202%_ _%ctx189204%_ _%stx189205%_ _%args189206%_)
        (let* ((_%self189208%_ _%self187619189202%_)
               (_%self189210%_ _%self189208%_)
               (_%arguments-ok?189220%_
                (let ((__method191540
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self189210%_ 'check-arguments))))
                  (if __method191540
                      (let ()
                        (declare (not safe))
                        (__method191540
                         _%self189210%_
                         _%ctx189204%_
                         _%stx189205%_
                         _%args189206%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self189210%_
                                 'check-arguments))
                        '#!void))))
               (_%g189222189232%_
                (lambda (_%g189223189229%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189223189229%_))))
               (_%g189221189296%_
                (lambda (_%g189223189235%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189223189235%_))
                      (let ((_%e189225189237%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189223189235%_))))
                        (let ((_%hd189226189240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189225189237%_)))
                              (_%tl189227189242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189225189237%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189227189242%_))
                              ((lambda (_%L189245%_)
                                 (let* ((_%klass189258%_
                                         (let ((__tmp191595
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self189210%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx189205%_
                                            __tmp191595)))
                                        (_%field189260%_
                                         (let ((__tmp191596
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self189210%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass189258%_
                                            __tmp191596)))
                                        (_%object189262%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx189204%_
                                            _%L189245%_)))
                                        (_%klass189265%_ _%klass189258%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass189265%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp191597
                                              (cons (if (or _%arguments-ok?189220%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189210%_
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
                                 _%self189210%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field189260%_ '()))
                        (cons _%object189262%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp191597
                                          _%stx189205%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass189265%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp191598
                                                  (cons (if (or _%arguments-ok?189220%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self189210%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self189210%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field189260%_ '()))
                            (cons _%object189262%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191598
                                              _%stx189205%_))
                                           (let ((_%$e189284%_
                                                  (let ((__tmp191599
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self189210%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass189265%_
                                                     __tmp191599))))
                                             (if _%$e189284%_
                                                 ((lambda (_%klass189287%_)
                                                    (let ((__tmp191600
                                                           (cons (if (or _%arguments-ok?189220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self189210%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self189210%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field189260%_ '()))
                                     (cons _%object189262%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp191600 _%stx189205%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e189284%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self189210%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp191601
                                                            (let ((_%$obj189293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp191602
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp191602))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj189293%_ '())
                                              (cons _%object189262%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass189265%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj189293%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189210%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field189260%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj189293%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?189220%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj189293%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self189210%_
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
                                                             _%self189210%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj189293%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self189210%_
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
               (gxc#xform-wrap-source __tmp191601 _%stx189205%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp191603
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object189262%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self189210%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp191603 _%stx189205%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd189226189240%_)
                              (_%g189222189232%_ _%g189223189235%_))))
                      (_%g189222189232%_ _%g189223189235%_)))))
          (_%g189221189296%_ _%args189206%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass191085 __method-table191086)
        (let ((__check-arguments191087
               (let ((__tmp191604
                      (lambda ()
                        (let ((__method191088
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table191086
                                  'check-arguments
                                  '#f))))
                          (if __method191088
                              __method191088
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp191604)))
              (__slot191089
               (let ((__slot191090
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass191085 'slot))))
                 (if __slot191090
                     __slot191090
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self187619189202%_
                   _%ctx189204%_
                   _%stx189205%_
                   _%args189206%_)
            (let* ((_%self189208%_ _%self187619189202%_)
                   (_%self189210%_ _%self189208%_)
                   (_%arguments-ok?189220%_
                    ((force __check-arguments191087)
                     _%self189210%_
                     _%ctx189204%_
                     _%stx189205%_
                     _%args189206%_))
                   (_%g189222189232%_
                    (lambda (_%g189223189229%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g189223189229%_))))
                   (_%g189221189296%_
                    (lambda (_%g189223189235%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g189223189235%_))
                          (let ((_%e189225189237%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g189223189235%_))))
                            (let ((_%hd189226189240%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189225189237%_)))
                                  (_%tl189227189242%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189225189237%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189227189242%_))
                                  ((lambda (_%L189245%_)
                                     (let* ((_%klass189258%_
                                             (let ((__tmp191605
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self189210%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx189205%_
                                                __tmp191605)))
                                            (_%field189260%_
                                             (let ((__tmp191606
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self189210%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass189258%_
                                                __tmp191606)))
                                            (_%object189262%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx189204%_
                                                _%L189245%_)))
                                            (_%klass189265%_ _%klass189258%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass189265%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp191607
                                                  (cons (if (or _%arguments-ok?189220%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self189210%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self189210%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field189260%_ '()))
                            (cons _%object189262%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191607
                                              _%stx189205%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass189265%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp191608
                                                      (cons (if (or _%arguments-ok?189220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self189210%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self189210%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field189260%_ '()))
                                (cons _%object189262%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp191608
                                                  _%stx189205%_))
                                               (let ((_%$e189284%_
                                                      (let ((__tmp191609
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self189210%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass189265%_ __tmp191609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e189284%_
                                                     ((lambda (_%klass189287%_)
                                                        (let ((__tmp191610
                                                               (cons (if (or _%arguments-ok?189220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189210%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self189210%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field189260%_ '()))
                                         (cons _%object189262%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp191610 _%stx189205%_)))
              _%$e189284%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self189210%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp191611
                                                                (let ((_%$obj189293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp191612
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp191612))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj189293%_ '())
                                                  (cons _%object189262%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass189265%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj189293%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189210%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field189260%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj189293%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?189220%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj189293%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self189210%_
                               __slot191089
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
                        (##unchecked-structure-ref _%self189210%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj189293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self189210%_
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
                   (gxc#xform-wrap-source __tmp191611 _%stx189205%_))
                 (let ((__tmp191613
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object189262%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self189210%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp191613 _%stx189205%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd189226189240%_)
                                  (_%g189222189232%_ _%g189223189235%_))))
                          (_%g189222189232%_ _%g189223189235%_)))))
              (_%g189221189296%_ _%args189206%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self187620188964%_ _%ctx188966%_ _%stx188967%_ _%args188968%_)
        (let* ((_%self188970%_ _%self187620188964%_)
               (_%self188972%_ _%self188970%_)
               (_%arguments-ok?188982%_
                (let ((__method191541
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self188972%_ 'check-arguments))))
                  (if __method191541
                      (let ()
                        (declare (not safe))
                        (__method191541
                         _%self188972%_
                         _%ctx188966%_
                         _%stx188967%_
                         _%args188968%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188972%_
                                 'check-arguments))
                        '#!void))))
               (_%g188984188998%_
                (lambda (_%g188985188995%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188985188995%_))))
               (_%g188983189077%_
                (lambda (_%g188985189001%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188985189001%_))
                      (let ((_%e188988189003%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188985189001%_))))
                        (let ((_%hd188989189006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188988189003%_)))
                              (_%tl188990189008%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188988189003%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl188990189008%_))
                              (let ((_%e188991189011%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl188990189008%_))))
                                (let ((_%hd188992189014%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e188991189011%_)))
                                      (_%tl188993189016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e188991189011%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl188993189016%_))
                                      ((lambda (_%L189019%_ _%L189020%_)
                                         (let* ((_%klass189036%_
                                                 (let ((__tmp191614
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self188972%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx188967%_
                                                    __tmp191614)))
                                                (_%field189038%_
                                                 (let ((__tmp191615
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self188972%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass189036%_
                                                    __tmp191615)))
                                                (_%object189040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx188966%_
                                                    _%L189020%_)))
                                                (_%value189042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx188966%_
                                                    _%L189019%_)))
                                                (_%klass189045%_
                                                 _%klass189036%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass189045%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp191616
                                                      (cons (if (or _%arguments-ok?188982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self188972%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self188972%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field189038%_ '()))
                                (cons _%object189040%_
                                      (cons _%value189042%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp191616
                                                  _%stx188967%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass189045%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp191617
                                                          (cons (if (or _%arguments-ok?188982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self188972%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188972%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field189038%_ '()))
                                    (cons _%object189040%_
                                          (cons _%value189042%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp191617
                                                      _%stx188967%_))
                                                   (let ((_%$e189065%_
                                                          (let ((__tmp191618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self188972%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass189045%_
                     __tmp191618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e189065%_
                                                         ((lambda (_%klass189068%_)
                                                            (let ((__tmp191619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?188982%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self188972%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self188972%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field189038%_ '()))
                                             (cons _%object189040%_
                                                   (cons _%value189042%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp191619 _%stx188967%_)))
                  _%$e189065%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self188972%_ '4 '#f '#f))
                     (let ((__tmp191620
                            (let ((_%$obj189074%_
                                   (let ((__tmp191621
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp191621))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj189074%_ '())
                                                      (cons _%object189040%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass189045%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj189074%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188972%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field189038%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj189074%_
                                                              '()))
                                                  (cons _%value189042%_
                                                        '())))))
                          (cons (if _%arguments-ok?188982%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj189074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self188972%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value189042%_ '())))))
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
                             _%self188972%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj189074%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self188972%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value189042%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp191620 _%stx188967%_))
                     (let ((__tmp191622
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object189040%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188972%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value189042%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp191622
                        _%stx188967%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd188992189014%_
                                       _%hd188989189006%_)
                                      (_%g188984188998%_ _%g188985189001%_))))
                              (_%g188984188998%_ _%g188985189001%_))))
                      (_%g188984188998%_ _%g188985189001%_)))))
          (_%g188983189077%_ _%args188968%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass191091 __method-table191092)
        (let ((__check-arguments191093
               (let ((__tmp191623
                      (lambda ()
                        (let ((__method191094
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table191092
                                  'check-arguments
                                  '#f))))
                          (if __method191094
                              __method191094
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp191623))))
          (lambda (_%self187620188964%_
                   _%ctx188966%_
                   _%stx188967%_
                   _%args188968%_)
            (let* ((_%self188970%_ _%self187620188964%_)
                   (_%self188972%_ _%self188970%_)
                   (_%arguments-ok?188982%_
                    ((force __check-arguments191093)
                     _%self188972%_
                     _%ctx188966%_
                     _%stx188967%_
                     _%args188968%_))
                   (_%g188984188998%_
                    (lambda (_%g188985188995%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g188985188995%_))))
                   (_%g188983189077%_
                    (lambda (_%g188985189001%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g188985189001%_))
                          (let ((_%e188988189003%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g188985189001%_))))
                            (let ((_%hd188989189006%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188988189003%_)))
                                  (_%tl188990189008%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188988189003%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188990189008%_))
                                  (let ((_%e188991189011%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188990189008%_))))
                                    (let ((_%hd188992189014%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188991189011%_)))
                                          (_%tl188993189016%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188991189011%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl188993189016%_))
                                          ((lambda (_%L189019%_ _%L189020%_)
                                             (let* ((_%klass189036%_
                                                     (let ((__tmp191624
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self188972%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx188967%_
                                                        __tmp191624)))
                                                    (_%field189038%_
                                                     (let ((__tmp191625
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self188972%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass189036%_
                                                        __tmp191625)))
                                                    (_%object189040%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx188966%_
                                                        _%L189020%_)))
                                                    (_%value189042%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx188966%_
                                                        _%L189019%_)))
                                                    (_%klass189045%_
                                                     _%klass189036%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass189045%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp191626
                                                          (cons (if (or _%arguments-ok?188982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self188972%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188972%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field189038%_ '()))
                                    (cons _%object189040%_
                                          (cons _%value189042%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp191626
                                                      _%stx188967%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass189045%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp191627
                                                              (cons (if (or _%arguments-ok?188982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self188972%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self188972%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field189038%_ '()))
                                        (cons _%object189040%_
                                              (cons _%value189042%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191627 _%stx188967%_))
               (let ((_%$e189065%_
                      (let ((__tmp191628
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self188972%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass189045%_
                         __tmp191628))))
                 (if _%$e189065%_
                     ((lambda (_%klass189068%_)
                        (let ((__tmp191629
                               (cons (if (or _%arguments-ok?188982%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188972%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188972%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field189038%_
                                                             '()))
                                                 (cons _%object189040%_
                                                       (cons _%value189042%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp191629 _%stx188967%_)))
                      _%$e189065%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self188972%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp191630
                                (let ((_%$obj189074%_
                                       (let ((__tmp191631
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp191631))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj189074%_
                                                                '())
                                                          (cons _%object189040%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass189045%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj189074%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self188972%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field189038%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj189074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value189042%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?188982%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj189074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self188972%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value189042%_ '())))))
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
                                 _%self188972%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj189074%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188972%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value189042%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp191630 _%stx188967%_))
                         (let ((__tmp191632
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object189040%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self188972%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value189042%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp191632
                            _%stx188967%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd188992189014%_
                                           _%hd188989189006%_)
                                          (_%g188984188998%_
                                           _%g188985189001%_))))
                                  (_%g188984188998%_ _%g188985189001%_))))
                          (_%g188984188998%_ _%g188985189001%_)))))
              (_%g188983189077%_ _%args188968%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self187621188777%_ _%ctx188779%_ _%stx188780%_ _%args188781%_)
        (let* ((_%self188783%_ _%self187621188777%_)
               (_%self188785%_ _%self188783%_)
               (_%self188794188804%_ _%self188785%_)
               (_%E188796188808%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self188794188804%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K188797188818%_
                (lambda (_%inline188811%_ _%dispatch188812%_ _%arity188813%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self188785%_
                         _%args188781%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx188780%_
                         _%arity188813%_)))
                  (if _%inline188811%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp191633
                               (let ((__tmp191634
                                      (_%inline188811%_ _%stx188780%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp191634
                                  _%stx188780%_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _%ctx188779%_ __tmp191633)))
                      (if (and _%dispatch188812%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch188812%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch188812%_))
                            (let ((__tmp191635
                                   (let ((__tmp191636
                                          (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons _%dispatch188812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args188781%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp191636
                                      _%stx188780%_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _%ctx188779%_ __tmp191635)))
                          (gxc#!procedure::optimize-call
                           _%self188785%_
                           _%ctx188779%_
                           _%stx188780%_
                           _%args188781%_))))))
          (if '#t
              (let* ((_%e188798188821%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self188794188804%_
                         '1
                         '#f
                         '#f)))
                     (_%e188799188824%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self188794188804%_
                         '2
                         '#f
                         '#f)))
                     (_%e188800188827%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self188794188804%_
                         '3
                         '#f
                         '#f)))
                     (_%arity188830%_ _%e188800188827%_)
                     (_%e188801188832%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self188794188804%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch188835%_ _%e188801188832%_)
                     (_%e188802188837%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self188794188804%_
                         '5
                         '#f
                         '#f)))
                     (_%inline188840%_ _%e188802188837%_))
                (_%K188797188818%_
                 _%inline188840%_
                 _%dispatch188835%_
                 _%arity188830%_))
              (_%E188796188808%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self187622188627%_ _%ctx188629%_ _%stx188630%_ _%args188631%_)
        (let* ((_%self188633%_ _%self187622188627%_)
               (_%self188635%_ _%self188633%_)
               (_%$e188649%_
                (let ((__tmp191638
                       (lambda (_%g188644188646%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g188644188646%_
                            _%args188631%_))))
                      (__tmp191637
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self188635%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp191638 __tmp191637))))
          (if _%$e188649%_
              ((lambda (_%clause188652%_)
                 (let ((__method191542
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause188652%_ 'optimize-call))))
                   (if __method191542
                       (let ()
                         (declare (not safe))
                         (__method191542
                          _%clause188652%_
                          _%ctx188629%_
                          _%stx188630%_
                          _%args188631%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause188652%_
                                  'optimize-call))
                         '#!void))))
               _%$e188649%_)
              (let ((__tmp191639
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188635%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx188630%_
                 __tmp191639))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self187623188365%_ _%ctx188367%_ _%stx188368%_ _%args188369%_)
        (let* ((_%self188371%_ _%self187623188365%_)
               (_%self188373%_ _%self188371%_)
               (_%self188382188391%_ _%self188373%_)
               (_%E188384188395%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self188382188391%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K188385188486%_
                (lambda (_%dispatch188398%_ _%table188399%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch188398%_))
                      (let* ((_%g188400188410%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch188398%_)))
                             (_%else188402188418%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch188398%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx188367%_
                                   _%stx188368%_))))
                             (_%K188404188467%_
                              (lambda (_%main188421%_ _%keys188422%_)
                                (let ((_g191640_
                                       (gxc#!kw-lambda-split-args
                                        _%stx188368%_
                                        _%args188369%_)))
                                  (begin
                                    (let ((_g191641_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g191640_)
                                                 (##vector-length _g191640_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g191641_ 2)))
                                          (error "Context expects 2 values"
                                                 _g191641_)))
                                    (let ((_%pargs188424%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g191640_ 0)))
                                          (_%kwargs188425%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g191640_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main188421%_))
                                        (if _%table188399%_
                                            (let ((_%xargs188433%_
                                                   (map (lambda (_%key188427%_)
                                                          (let ((_%$e188429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key188427%_ _%kwargs188425%_))))
                    (if _%$e188429%_ _%$e188429%_ '(%#ref absent-value))))
                _%keys188422%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw188435%_)
                                                 (if (memq (car _%kw188435%_)
                                                           _%keys188422%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx188368%_
                                                        _%keys188422%_
                                                        _%kw188435%_))))
                                               _%kwargs188425%_)
                                              (let ((__tmp191642
                                                     (let ((__tmp191643
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%main188421%_ '()))
                                (cons (cons '%#quote (cons '#f '()))
                                      (let ()
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         _%pargs188424%_
                                         _%xargs188433%_)))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp191643 _%stx188368%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx188367%_
                                                 __tmp191642)))
                                            (let* ((_%kwt188437%_
                                                    (let ((__tmp191644
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp191644)))
                                                   (_%kwvars188441%_
                                                    (map (lambda (_%_188439%_)
                                                           (let ((__tmp191645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp191645)))
                 _%kwargs188425%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind188446%_
                                                    (map (lambda (_%kw188443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar188444%_)
                   (cons (cons _%kwvar188444%_ '())
                         (cons (cdr _%kw188443%_) '())))
                 _%kwargs188425%_
                 _%kwvars188441%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset188451%_
                                                    (map (lambda (_%kw188448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar188449%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt188437%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw188448%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar188449%_
                                                             '()))
                                                 '()))))))
                 _%kwargs188425%_
                 _%kwvars188441%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs188456%_
                                                    (map (lambda (_%kw188453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar188454%_)
                   (cons (car _%kw188453%_)
                         (cons '%#ref (cons _%kwvar188454%_ '()))))
                 _%kwargs188425%_
                 _%kwvars188441%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs188464%_
                                                    (map (lambda (_%key188458%_)
                                                           (let ((_%$e188460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key188458%_ _%xkwargs188456%_))))
                     (if _%$e188460%_ _%$e188460%_ '(%#ref absent-value))))
                 _%keys188422%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp191646
                                                    (let ((__tmp191647
                                                           (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwbind188446%_
                               (cons (cons '%#let-values
                                           (cons (cons (cons (cons _%kwt188437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ((__tmp191648
                                  (cons '%#call
                                        (cons '(%#ref make-symbolic-table)
                                              (cons (cons '%#quote
                                                          (cons (length _%kwargs188425%_)
                                                                '()))
                                                    (cons '(%#quote (length kwvars))
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp191648 _%stx188368%_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#begin
                                                             (let ((__tmp191649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ((__tmp191650
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons _%main188421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwt188437%_ '()))
                   (let ()
                     (declare (not safe))
                     (__foldr1 cons _%pargs188424%_ _%xargs188464%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp191650
                                     _%stx188368%_))
                                  '())))
                       (declare (not safe))
                       (__foldr1 cons __tmp191649 _%kwset188451%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp191647 _%stx188368%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%ctx188367%_
                                               __tmp191646))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g188400188410%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e188405188470%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g188400188410%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e188406188473%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g188400188410%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e188407188476%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g188400188410%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys188479%_ _%e188407188476%_)
                                   (_%e188408188481%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g188400188410%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main188484%_ _%e188408188481%_))
                              (_%K188404188467%_
                               _%main188484%_
                               _%keys188479%_))
                            (_%else188402188418%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx188367%_ _%stx188368%_))))))
          (if '#t
              (let* ((_%e188386188489%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self188382188391%_
                         '1
                         '#f
                         '#f)))
                     (_%e188387188492%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self188382188391%_
                         '2
                         '#f
                         '#f)))
                     (_%e188388188495%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self188382188391%_
                         '3
                         '#f
                         '#f)))
                     (_%table188498%_ _%e188388188495%_)
                     (_%e188389188500%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self188382188391%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch188503%_ _%e188389188500%_))
                (_%K188385188486%_ _%dispatch188503%_ _%table188498%_))
              (_%E188384188395%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx187978%_ _%args187979%_)
        (let _%lp187981%_ ((_%rest187983%_ _%args187979%_)
                           (_%pargs187984%_ '())
                           (_%kwargs187985%_ '()))
          (let* ((_%__stx191359191360%_ _%rest187983%_)
                 (_%g187991188043%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx191359191360%_)))))
            (let ((_%__kont191361191362%_
                   (lambda (_%L188222%_ _%L188223%_)
                     (_%lp187981%_
                      _%L188222%_
                      (cons _%L188223%_ _%pargs187984%_)
                      _%kwargs187985%_)))
                  (_%__kont191363191364%_
                   (lambda (_%L188168%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L188168%_ _%pargs187984%_))
                             (reverse _%kwargs187985%_))))
                  (_%__kont191365191366%_
                   (lambda (_%L188115%_ _%L188116%_ _%L188117%_)
                     (let ((_%kw188134%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L188117%_))))
                       (if (assq _%kw188134%_ _%kwargs187985%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx187978%_
                              _%kw188134%_))
                           (_%lp187981%_
                            _%L188115%_
                            _%pargs187984%_
                            (cons (cons _%kw188134%_ _%L188116%_)
                                  _%kwargs187985%_))))))
                  (_%__kont191367191368%_
                   (lambda (_%L188063%_ _%L188064%_)
                     (_%lp187981%_
                      _%L188063%_
                      (cons _%L188064%_ _%pargs187984%_)
                      _%kwargs187985%_)))
                  (_%__kont191369191370%_
                   (lambda ()
                     (values (reverse _%pargs187984%_)
                             (reverse _%kwargs187985%_)))))
              (let ((_%__match191466191467%_
                     (lambda (_%e188022188083%_
                              _%hd188023188086%_
                              _%tl188024188088%_
                              _%e188025188091%_
                              _%hd188026188094%_
                              _%tl188027188096%_
                              _%e188028188099%_
                              _%hd188029188102%_
                              _%tl188030188104%_
                              _%e188031188107%_
                              _%hd188032188110%_
                              _%tl188033188112%_)
                       (let ((_%L188115%_ _%tl188033188112%_)
                             (_%L188116%_ _%hd188032188110%_)
                             (_%L188117%_ _%hd188029188102%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L188117%_))
                             (_%__kont191365191366%_
                              _%L188115%_
                              _%L188116%_
                              _%L188117%_)
                             (_%__kont191367191368%_
                              _%tl188024188088%_
                              _%hd188023188086%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx191359191360%_))
                    (let ((_%e187995188187%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx191359191360%_))))
                      (let ((_%tl187997188192%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187995188187%_)))
                            (_%hd187996188190%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187995188187%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd187996188190%_))
                            (let ((_%e187998188195%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd187996188190%_))))
                              (let ((_%tl188000188200%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187998188195%_)))
                                    (_%hd187999188198%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187998188195%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd187999188198%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd187999188198%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl188000188200%_))
                                            (let ((_%e188001188203%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl188000188200%_))))
                                              (let ((_%tl188003188208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e188001188203%_)))
                                                    (_%hd188002188206%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e188001188203%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd188002188206%_))
                                                    (let ((_%e188004188211%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd188002188206%_))))
                                                      (if (equal? _%e188004188211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl188003188208%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187997188192%_))
                          (let ((_%e188005188214%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187997188192%_))))
                            (let ((_%tl188007188219%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188005188214%_)))
                                  (_%hd188006188217%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188005188214%_))))
                              (_%__kont191361191362%_
                               _%tl188007188219%_
                               _%hd188006188217%_)))
                          (_%__kont191367191368%_
                           _%tl187997188192%_
                           _%hd187996188190%_))
                      (_%__kont191367191368%_
                       _%tl187997188192%_
                       _%hd187996188190%_))
                  (if (equal? _%e188004188211%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl188003188208%_))
                          (_%__kont191363191364%_ _%tl187997188192%_)
                          (_%__kont191367191368%_
                           _%tl187997188192%_
                           _%hd187996188190%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl188003188208%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187997188192%_))
                              (let ((_%e188031188107%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187997188192%_))))
                                (let ((_%tl188033188112%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e188031188107%_)))
                                      (_%hd188032188110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e188031188107%_))))
                                  (_%__match191466191467%_
                                   _%e187995188187%_
                                   _%hd187996188190%_
                                   _%tl187997188192%_
                                   _%e187998188195%_
                                   _%hd187999188198%_
                                   _%tl188000188200%_
                                   _%e188001188203%_
                                   _%hd188002188206%_
                                   _%tl188003188208%_
                                   _%e188031188107%_
                                   _%hd188032188110%_
                                   _%tl188033188112%_)))
                              (_%__kont191367191368%_
                               _%tl187997188192%_
                               _%hd187996188190%_))
                          (_%__kont191367191368%_
                           _%tl187997188192%_
                           _%hd187996188190%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl188003188208%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl187997188192%_))
                                                            (let ((_%e188031188107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl187997188192%_))))
                      (let ((_%tl188033188112%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188031188107%_)))
                            (_%hd188032188110%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188031188107%_))))
                        (_%__match191466191467%_
                         _%e187995188187%_
                         _%hd187996188190%_
                         _%tl187997188192%_
                         _%e187998188195%_
                         _%hd187999188198%_
                         _%tl188000188200%_
                         _%e188001188203%_
                         _%hd188002188206%_
                         _%tl188003188208%_
                         _%e188031188107%_
                         _%hd188032188110%_
                         _%tl188033188112%_)))
                    (_%__kont191367191368%_
                     _%tl187997188192%_
                     _%hd187996188190%_))
                (_%__kont191367191368%_
                 _%tl187997188192%_
                 _%hd187996188190%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont191367191368%_
                                             _%tl187997188192%_
                                             _%hd187996188190%_))
                                        (_%__kont191367191368%_
                                         _%tl187997188192%_
                                         _%hd187996188190%_))
                                    (_%__kont191367191368%_
                                     _%tl187997188192%_
                                     _%hd187996188190%_))))
                            (_%__kont191367191368%_
                             _%tl187997188192%_
                             _%hd187996188190%_))))
                    (_%__kont191369191370%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self187624187960%_ _%ctx187962%_ _%stx187963%_ _%args187964%_)
        (let* ((_%self187966%_ _%self187624187960%_)
               (_%self187968%_ _%self187966%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx187962%_ _%stx187963%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self187648%_ _%stx187649%_)
        (let* ((_%__stx191475191476%_ _%stx187649%_)
               (_%g187652187692%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191475191476%_)))))
          (let ((_%__kont191477191478%_
                 (lambda (_%L187798%_ _%L187799%_)
                   (let ((_%$e187826%_
                          (member 'return:
                                  (let ((__tmp191651
                                         (lambda (_%g187818187821%_
                                                  _%g187819187823%_)
                                           (cons _%g187818187821%_
                                                 _%g187819187823%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp191651 '() _%L187799%_))
                                  gx#stx-eq?)))
                     (if _%$e187826%_
                         ((lambda (_%tail187829%_)
                            (let ((_%type187831%_
                                   (let ((__tmp191652
                                          (let ((__tmp191653
                                                 (cadr _%tail187829%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp191653))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx187649%_
                                      __tmp191652))))
                              (gxc#check-return-type!
                               _%stx187649%_
                               _%L187798%_
                               _%type187831%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self187648%_
                                 _%L187798%_))))
                          _%$e187826%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self187648%_ _%L187798%_))))))
                (_%__kont191481191482%_
                 (lambda (_%L187721%_ _%L187722%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self187648%_ _%L187721%_)))))
            (let ((_%__match191512191513%_
                   (lambda (_%e187656187742%_
                            _%hd187657187745%_
                            _%tl187658187747%_
                            _%e187659187750%_
                            _%hd187660187753%_
                            _%tl187661187755%_
                            _%e187662187758%_
                            _%hd187663187761%_
                            _%tl187664187763%_
                            _%__splice191479191480%_
                            _%target187665187766%_
                            _%tl187667187768%_)
                     (letrec ((_%loop187668187771%_
                               (lambda (_%hd187666187774%_
                                        _%signature187672187776%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd187666187774%_))
                                     (let ((_%e187669187779%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd187666187774%_))))
                                       (let ((_%lp-tl187671187784%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e187669187779%_)))
                                             (_%lp-hd187670187782%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e187669187779%_))))
                                         (_%loop187668187771%_
                                          _%lp-tl187671187784%_
                                          (cons _%lp-hd187670187782%_
                                                _%signature187672187776%_))))
                                     (let ((_%signature187673187787%_
                                            (reverse _%signature187672187776%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl187661187755%_))
                                           (let ((_%e187674187790%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl187661187755%_))))
                                             (let ((_%tl187676187795%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e187674187790%_)))
                                                   (_%hd187675187793%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e187674187790%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl187676187795%_))
                                                   (_%__kont191477191478%_
                                                    _%hd187675187793%_
                                                    _%signature187673187787%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g187652187692%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g187652187692%_))))))))
                       (_%loop187668187771%_ _%target187665187766%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191475191476%_))
                  (let ((_%e187656187742%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191475191476%_))))
                    (let ((_%tl187658187747%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187656187742%_)))
                          (_%hd187657187745%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187656187742%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187658187747%_))
                          (let ((_%e187659187750%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187658187747%_))))
                            (let ((_%tl187661187755%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187659187750%_)))
                                  (_%hd187660187753%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187659187750%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd187660187753%_))
                                  (let ((_%e187662187758%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd187660187753%_))))
                                    (let ((_%tl187664187763%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187662187758%_)))
                                          (_%hd187663187761%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187662187758%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd187663187761%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd187663187761%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl187664187763%_))
                                                  (let ((_%__splice191479191480%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl187664187763%_
                                                            '0))))
                                                    (let ((_%tl187667187768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191479191480%_
                                                              '1)))
                                                          (_%target187665187766%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191479191480%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187667187768%_))
                                                          (_%__match191512191513%_
                                                           _%e187656187742%_
                                                           _%hd187657187745%_
                                                           _%tl187658187747%_
                                                           _%e187659187750%_
                                                           _%hd187660187753%_
                                                           _%tl187661187755%_
                                                           _%e187662187758%_
                                                           _%hd187663187761%_
                                                           _%tl187664187763%_
                                                           _%__splice191479191480%_
                                                           _%target187665187766%_
                                                           _%tl187667187768%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl187661187755%_))
                      (let ((_%e187685187713%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl187661187755%_))))
                        (let ((_%tl187687187718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187685187713%_)))
                              (_%hd187686187716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187685187713%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl187687187718%_))
                              (_%__kont191481191482%_
                               _%hd187686187716%_
                               _%hd187660187753%_)
                              (let ()
                                (declare (not safe))
                                (_%g187652187692%_)))))
                      (let () (declare (not safe)) (_%g187652187692%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl187661187755%_))
                                                      (let ((_%e187685187713%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl187661187755%_))))
                (let ((_%tl187687187718%_
                       (let () (declare (not safe)) (##cdr _%e187685187713%_)))
                      (_%hd187686187716%_
                       (let ()
                         (declare (not safe))
                         (##car _%e187685187713%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187687187718%_))
                      (_%__kont191481191482%_
                       _%hd187686187716%_
                       _%hd187660187753%_)
                      (let () (declare (not safe)) (_%g187652187692%_)))))
              (let () (declare (not safe)) (_%g187652187692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl187661187755%_))
                                                  (let ((_%e187685187713%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl187661187755%_))))
                                                    (let ((_%tl187687187718%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187685187713%_)))
                                                          (_%hd187686187716%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187685187713%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187687187718%_))
                                                          (_%__kont191481191482%_
                                                           _%hd187686187716%_
                                                           _%hd187660187753%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g187652187692%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g187652187692%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187661187755%_))
                                              (let ((_%e187685187713%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187661187755%_))))
                                                (let ((_%tl187687187718%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187685187713%_)))
                                                      (_%hd187686187716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187685187713%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl187687187718%_))
                                                      (_%__kont191481191482%_
                                                       _%hd187686187716%_
                                                       _%hd187660187753%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g187652187692%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g187652187692%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187661187755%_))
                                      (let ((_%e187685187713%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187661187755%_))))
                                        (let ((_%tl187687187718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187685187713%_)))
                                              (_%hd187686187716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187685187713%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187687187718%_))
                                              (_%__kont191481191482%_
                                               _%hd187686187716%_
                                               _%hd187660187753%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g187652187692%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g187652187692%_))))))
                          (let () (declare (not safe)) (_%g187652187692%_)))))
                  (let () (declare (not safe)) (_%g187652187692%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx187626%_ _%expr187627%_ _%type187628%_)
        (let ((_%$e187630%_ (not _%type187628%_)))
          (if _%$e187630%_
              _%$e187630%_
              (let ((_%$e187633%_
                     (eq? (##structure-ref _%type187628%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e187633%_
                    _%$e187633%_
                    (let ((_%expr-type187637%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr187627%_))))
                      (if (not _%expr-type187637%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx187626%_
                             _%type187628%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type187637%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx187626%_
                                 _%type187628%_
                                 _%expr-type187637%_))
                              (let ((_%$e187641%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type187637%_
                                        'gxc#!abort::t))))
                                (if _%$e187641%_
                                    _%$e187641%_
                                    (let ((_%$e187644%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type187637%_
                                              _%type187628%_))))
                                      (if _%$e187644%_
                                          _%$e187644%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx187626%_
                                             _%type187628%_
                                             _%expr-type187637%_)))))))))))))))))
