(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1756721302)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp206022 (list gxc#::basic-xform::t))
            (__tmp206021 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp206022
         '()
         __tmp206021
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args205299%_
        (apply make-instance gxc#::optimize-call::t _%$args205299%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp206023
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
        (__make-atomic-promise __tmp206023)))
    (define gxc#apply-optimize-call
      (lambda (_%stx205291%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self205294%_
                (let ((__obj206013
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj206013))
               (__tmp206024
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205294%_ _%stx205291%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206024
           gxc#current-compile-method
           _%self205294%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp206026 (list gxc#::void::t))
            (__tmp206025 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp206026
         '()
         __tmp206025
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args205288%_
        (apply make-instance gxc#::check-return-type::t _%$args205288%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp206027
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
        (__make-atomic-promise __tmp206027)))
    (define gxc#apply-check-return-type
      (lambda (_%stx205280%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self205283%_
                (let ((__obj206015
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj206015))
               (__tmp206028
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205283%_ _%stx205280%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206028
           gxc#current-compile-method
           _%self205283%_))))
    (define gxc#optimize-call%
      (lambda (_%self204881%_ _%stx204882%_)
        (let* ((_%__stx205368205369%_ _%stx204882%_)
               (_%g204885204931%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205368205369%_)))))
          (let ((_%__kont205370205371%_
                 (lambda (_%L205074%_ _%L205075%_)
                   (let* ((_%rator-id205095%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L205075%_)))
                          (_%rator-type205097%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id205095%_))))
                     (if (or (not _%rator-type205097%_)
                             (eq? (##structure-ref
                                   _%rator-type205097%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self204881%_ _%stx204882%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type205097%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp206029
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type205097%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id205095%_
                                  '" => "
                                  _%rator-type205097%_
                                  '" "
                                  __tmp206029))
                               (let* ((_%optimized205112%_
                                       (let ((__method206016
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type205097%_
                                                 'optimize-call))))
                                         (if __method206016
                                             (let ((__tmp206030
                                                    (let ((__tmp206031
                                                           (lambda (_%g205104205107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g205105205109%_)
                     (cons _%g205104205107%_ _%g205105205109%_))))
              (declare (not safe))
              (__foldr1 __tmp206031 '() _%L205074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method206016
                                                _%rator-type205097%_
                                                _%self204881%_
                                                _%stx204882%_
                                                __tmp206030))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type205097%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx205316205317%_
                                       _%optimized205112%_)
                                      (_%g205115205144%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx205316205317%_)))))
                                 (let ((_%__kont205318205319%_
                                        (lambda (_%L205212%_ _%L205213%_)
                                          (let* ((_%optimized-rator-id205240%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L205213%_)))
                                                 (_%rator-type205245%_
                                                  (let ((_%$e205242%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id205240%_))))
                                                    (if _%$e205242%_
                                                        _%$e205242%_
                                                        _%rator-type205097%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type205245%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id205240%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type205245%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type205245%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized205112%_
                                                (let ((__tmp206032
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L205213%_ '()))
                           (let ((__tmp206033
                                  (lambda (_%g205253205256%_ _%g205254205258%_)
                                    (cons _%g205253205256%_
                                          _%g205254205258%_))))
                             (declare (not safe))
                             (__foldr1 __tmp206033 '() _%L205212%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp206032
                                                   _%stx204882%_))))))
                                       (_%__kont205322205323%_
                                        (lambda () _%optimized205112%_)))
                                   (let ((_%__match205365205366%_
                                          (lambda (_%e205119205156%_
                                                   _%hd205120205159%_
                                                   _%tl205121205161%_
                                                   _%e205122205164%_
                                                   _%hd205123205167%_
                                                   _%tl205124205169%_
                                                   _%e205125205172%_
                                                   _%hd205126205175%_
                                                   _%tl205127205177%_
                                                   _%e205128205180%_
                                                   _%hd205129205183%_
                                                   _%tl205130205185%_
                                                   _%__splice205320205321%_
                                                   _%target205131205188%_
                                                   _%tl205133205190%_)
                                            (letrec ((_%loop205134205193%_
                                                      (lambda (_%hd205132205196%_
                                                               _%arg205138205198%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd205132205196%_))
                                                            (let ((_%e205135205201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd205132205196%_))))
                      (let ((_%lp-tl205137205206%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205135205201%_)))
                            (_%lp-hd205136205204%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205135205201%_))))
                        (_%loop205134205193%_
                         _%lp-tl205137205206%_
                         (cons _%lp-hd205136205204%_ _%arg205138205198%_))))
                    (let ((_%arg205139205209%_ (reverse _%arg205138205198%_)))
                      (_%__kont205318205319%_
                       _%arg205139205209%_
                       _%hd205129205183%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop205134205193%_
                                               _%target205131205188%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx205316205317%_))
                                         (let ((_%e205119205156%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx205316205317%_))))
                                           (let ((_%tl205121205161%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e205119205156%_)))
                                                 (_%hd205120205159%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e205119205156%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd205120205159%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd205120205159%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl205121205161%_))
                                                         (let ((_%e205122205164%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl205121205161%_))))
                   (let ((_%tl205124205169%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e205122205164%_)))
                         (_%hd205123205167%_
                          (let ()
                            (declare (not safe))
                            (##car _%e205122205164%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd205123205167%_))
                         (let ((_%e205125205172%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd205123205167%_))))
                           (let ((_%tl205127205177%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e205125205172%_)))
                                 (_%hd205126205175%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e205125205172%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd205126205175%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd205126205175%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl205127205177%_))
                                         (let ((_%e205128205180%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl205127205177%_))))
                                           (let ((_%tl205130205185%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e205128205180%_)))
                                                 (_%hd205129205183%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e205128205180%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl205130205185%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl205124205169%_))
                                                     (let ((_%__splice205320205321%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl205124205169%_
                                                               '0))))
                                                       (let ((_%tl205133205190%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice205320205321%_ '1)))
                     (_%target205131205188%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice205320205321%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl205133205190%_))
                     (_%__match205365205366%_
                      _%e205119205156%_
                      _%hd205120205159%_
                      _%tl205121205161%_
                      _%e205122205164%_
                      _%hd205123205167%_
                      _%tl205124205169%_
                      _%e205125205172%_
                      _%hd205126205175%_
                      _%tl205127205177%_
                      _%e205128205180%_
                      _%hd205129205183%_
                      _%tl205130205185%_
                      _%__splice205320205321%_
                      _%target205131205188%_
                      _%tl205133205190%_)
                     (_%__kont205322205323%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205322205323%_))
                                                 (_%__kont205322205323%_))))
                                         (_%__kont205322205323%_))
                                     (_%__kont205322205323%_))
                                 (_%__kont205322205323%_))))
                         (_%__kont205322205323%_))))
                 (_%__kont205322205323%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205322205323%_))
                                                 (_%__kont205322205323%_))))
                                         (_%__kont205322205323%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type205097%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type205097%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp206034
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L205075%_
                                                                '()))
                                                    (map (lambda (_%g205264205266%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self204881%_
                                                              _%g205264205266%_)))
                                                         (let ((__tmp206035
                                                                (lambda (_%g205268205271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g205269205273%_)
                          (cons _%g205268205271%_ _%g205269205273%_))))
                   (declare (not safe))
                   (__foldr1 __tmp206035 '() _%L205074%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp206034
                                    _%stx204882%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx204882%_
                                    _%rator-type205097%_))))))))
                (_%__kont205374205375%_
                 (lambda (_%L204976%_ _%L204977%_)
                   (let ((_%rator-type204994%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L204977%_))))
                     (if (and _%rator-type204994%_
                              (eq? (##structure-ref
                                    _%rator-type204994%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type204994%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type204994%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type204994%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp206036
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self204881%_
                                               _%L204977%_))
                                            (map (lambda (_%g204996204998%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self204881%_
                                                      _%g204996204998%_)))
                                                 (let ((__tmp206037
                                                        (lambda (_%g205000205003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g205001205005%_)
                  (cons _%g205000205003%_ _%g205001205005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp206037
                                                    '()
                                                    _%L204976%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp206036 _%stx204882%_))
                         (if (or (not _%rator-type204994%_)
                                 (let ((__tmp206038
                                        (##structure-ref
                                         _%rator-type204994%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp206038 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self204881%_ _%stx204882%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx204882%_
                                _%rator-type204994%_))))))))
            (let* ((_%__match205435205436%_
                    (lambda (_%e204912204936%_
                             _%hd204913204939%_
                             _%tl204914204941%_
                             _%e204915204944%_
                             _%hd204916204947%_
                             _%tl204917204949%_
                             _%__splice205376205377%_
                             _%target204918204952%_
                             _%tl204920204954%_)
                      (letrec ((_%loop204921204957%_
                                (lambda (_%hd204919204960%_
                                         _%rand204925204962%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204919204960%_))
                                      (let ((_%e204922204965%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204919204960%_))))
                                        (let ((_%lp-tl204924204970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204922204965%_)))
                                              (_%lp-hd204923204968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204922204965%_))))
                                          (_%loop204921204957%_
                                           _%lp-tl204924204970%_
                                           (cons _%lp-hd204923204968%_
                                                 _%rand204925204962%_))))
                                      (let ((_%rand204926204973%_
                                             (reverse _%rand204925204962%_)))
                                        (_%__kont205374205375%_
                                         _%rand204926204973%_
                                         _%hd204916204947%_))))))
                        (_%loop204921204957%_ _%target204918204952%_ '()))))
                   (_%__match205415205416%_
                    (lambda (_%e204889205018%_
                             _%hd204890205021%_
                             _%tl204891205023%_
                             _%e204892205026%_
                             _%hd204893205029%_
                             _%tl204894205031%_
                             _%e204895205034%_
                             _%hd204896205037%_
                             _%tl204897205039%_
                             _%e204898205042%_
                             _%hd204899205045%_
                             _%tl204900205047%_
                             _%__splice205372205373%_
                             _%target204901205050%_
                             _%tl204903205052%_)
                      (letrec ((_%loop204904205055%_
                                (lambda (_%hd204902205058%_
                                         _%rand204908205060%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204902205058%_))
                                      (let ((_%e204905205063%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204902205058%_))))
                                        (let ((_%lp-tl204907205068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204905205063%_)))
                                              (_%lp-hd204906205066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204905205063%_))))
                                          (_%loop204904205055%_
                                           _%lp-tl204907205068%_
                                           (cons _%lp-hd204906205066%_
                                                 _%rand204908205060%_))))
                                      (let ((_%rand204909205071%_
                                             (reverse _%rand204908205060%_)))
                                        (_%__kont205370205371%_
                                         _%rand204909205071%_
                                         _%hd204899205045%_))))))
                        (_%loop204904205055%_ _%target204901205050%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205368205369%_))
                  (let ((_%e204889205018%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205368205369%_))))
                    (let ((_%tl204891205023%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204889205018%_)))
                          (_%hd204890205021%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204889205018%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204891205023%_))
                          (let ((_%e204892205026%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204891205023%_))))
                            (let ((_%tl204894205031%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204892205026%_)))
                                  (_%hd204893205029%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204892205026%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd204893205029%_))
                                  (let ((_%e204895205034%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204893205029%_))))
                                    (let ((_%tl204897205039%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204895205034%_)))
                                          (_%hd204896205037%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204895205034%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd204896205037%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd204896205037%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204897205039%_))
                                                  (let ((_%e204898205042%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204897205039%_))))
                                                    (let ((_%tl204900205047%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204898205042%_)))
                                                          (_%hd204899205045%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204898205042%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204900205047%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl204894205031%_))
                      (let ((_%__splice205372205373%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl204894205031%_
                                '0))))
                        (let ((_%tl204903205052%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205372205373%_ '1)))
                              (_%target204901205050%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205372205373%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204903205052%_))
                              (_%__match205415205416%_
                               _%e204889205018%_
                               _%hd204890205021%_
                               _%tl204891205023%_
                               _%e204892205026%_
                               _%hd204893205029%_
                               _%tl204894205031%_
                               _%e204895205034%_
                               _%hd204896205037%_
                               _%tl204897205039%_
                               _%e204898205042%_
                               _%hd204899205045%_
                               _%tl204900205047%_
                               _%__splice205372205373%_
                               _%target204901205050%_
                               _%tl204903205052%_)
                              (let ()
                                (declare (not safe))
                                (_%g204885204931%_)))))
                      (let () (declare (not safe)) (_%g204885204931%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl204894205031%_))
                      (let ((_%__splice205376205377%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl204894205031%_
                                '0))))
                        (let ((_%tl204920204954%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205376205377%_ '1)))
                              (_%target204918204952%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205376205377%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204920204954%_))
                              (_%__match205435205436%_
                               _%e204889205018%_
                               _%hd204890205021%_
                               _%tl204891205023%_
                               _%e204892205026%_
                               _%hd204893205029%_
                               _%tl204894205031%_
                               _%__splice205376205377%_
                               _%target204918204952%_
                               _%tl204920204954%_)
                              (let ()
                                (declare (not safe))
                                (_%g204885204931%_)))))
                      (let () (declare (not safe)) (_%g204885204931%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl204894205031%_))
                                                      (let ((_%__splice205376205377%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl204894205031%_
                        '0))))
                (let ((_%tl204920204954%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice205376205377%_ '1)))
                      (_%target204918204952%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice205376205377%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204920204954%_))
                      (_%__match205435205436%_
                       _%e204889205018%_
                       _%hd204890205021%_
                       _%tl204891205023%_
                       _%e204892205026%_
                       _%hd204893205029%_
                       _%tl204894205031%_
                       _%__splice205376205377%_
                       _%target204918204952%_
                       _%tl204920204954%_)
                      (let () (declare (not safe)) (_%g204885204931%_)))))
              (let () (declare (not safe)) (_%g204885204931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl204894205031%_))
                                                  (let ((_%__splice205376205377%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl204894205031%_
                                                            '0))))
                                                    (let ((_%tl204920204954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice205376205377%_
                                                              '1)))
                                                          (_%target204918204952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice205376205377%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204920204954%_))
                                                          (_%__match205435205436%_
                                                           _%e204889205018%_
                                                           _%hd204890205021%_
                                                           _%tl204891205023%_
                                                           _%e204892205026%_
                                                           _%hd204893205029%_
                                                           _%tl204894205031%_
                                                           _%__splice205376205377%_
                                                           _%target204918204952%_
                                                           _%tl204920204954%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204885204931%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204885204931%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl204894205031%_))
                                              (let ((_%__splice205376205377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl204894205031%_
                                                        '0))))
                                                (let ((_%tl204920204954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205376205377%_
                                                          '1)))
                                                      (_%target204918204952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205376205377%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204920204954%_))
                                                      (_%__match205435205436%_
                                                       _%e204889205018%_
                                                       _%hd204890205021%_
                                                       _%tl204891205023%_
                                                       _%e204892205026%_
                                                       _%hd204893205029%_
                                                       _%tl204894205031%_
                                                       _%__splice205376205377%_
                                                       _%target204918204952%_
                                                       _%tl204920204954%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204885204931%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204885204931%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204894205031%_))
                                      (let ((_%__splice205376205377%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl204894205031%_
                                                '0))))
                                        (let ((_%tl204920204954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205376205377%_
                                                  '1)))
                                              (_%target204918204952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205376205377%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204920204954%_))
                                              (_%__match205435205436%_
                                               _%e204889205018%_
                                               _%hd204890205021%_
                                               _%tl204891205023%_
                                               _%e204892205026%_
                                               _%hd204893205029%_
                                               _%tl204894205031%_
                                               _%__splice205376205377%_
                                               _%target204918204952%_
                                               _%tl204920204954%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g204885204931%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204885204931%_))))))
                          (let () (declare (not safe)) (_%g204885204931%_)))))
                  (let () (declare (not safe)) (_%g204885204931%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self204843%_ _%ctx204844%_ _%stx204845%_ _%args204846%_)
        (let ((_%self204849%_ _%self204843%_))
          (if (let ((__method206017
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self204849%_ 'check-arguments))))
                (if __method206017
                    (let ()
                      (declare (not safe))
                      (__method206017
                       _%self204849%_
                       _%ctx204844%_
                       _%stx204845%_
                       _%args204846%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self204849%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature204859%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self204849%_ '2 '#f '#f)))
                     (_%signature204861%_ _%signature204859%_)
                     (_%$e204871%_
                      (if _%signature204861%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature204861%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e204871%_
                    ((lambda (_%unchecked204874%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked204874%_))
                           (let ((__tmp206039
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked204874%_
                                                          '()))
                                              (map (lambda (_%g204875204877%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx204844%_
                                                        _%g204875204877%_)))
                                                   _%args204846%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp206039
                              _%stx204845%_
                              _%ctx204844%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx204844%_ _%stx204845%_))))
                     _%$e204871%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx204844%_ _%stx204845%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx204844%_ _%stx204845%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass205301 __method-table205302)
        (let ((__check-arguments205303
               (let ((__tmp206040
                      (lambda ()
                        (let ((__method205304
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table205302
                                  'check-arguments
                                  '#f))))
                          (if __method205304
                              __method205304
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp206040))))
          (lambda (_%self204843%_ _%ctx204844%_ _%stx204845%_ _%args204846%_)
            (let ((_%self204849%_ _%self204843%_))
              (if ((force __check-arguments205303)
                   _%self204849%_
                   _%ctx204844%_
                   _%stx204845%_
                   _%args204846%_)
                  (let* ((_%signature204859%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self204849%_
                             '2
                             '#f
                             '#f)))
                         (_%signature204861%_ _%signature204859%_)
                         (_%$e204871%_
                          (if _%signature204861%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature204861%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e204871%_
                        ((lambda (_%unchecked204874%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked204874%_))
                               (let ((__tmp206041
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked204874%_
                                                              '()))
                                                  (map (lambda (_%g204875204877%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx204844%_
                                                            _%g204875204877%_)))
                                                       _%args204846%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp206041
                                  _%stx204845%_
                                  _%ctx204844%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx204844%_
                                  _%stx204845%_))))
                         _%$e204871%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx204844%_ _%stx204845%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx204844%_ _%stx204845%_))))))))
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
      (lambda (_%self204594%_ _%ctx204595%_ _%stx204596%_ _%args204597%_)
        (let* ((_%self204600%_ _%self204594%_)
               (_%signature204609204611%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self204600%_ '2 '#f '#f))))
          (if _%signature204609204611%_
              (let* ((_%signature204614%_ _%signature204609204611%_)
                     (_%argument-types204615204617%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature204614%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types204615204617%_
                    (let* ((_%argument-types204620%_
                            _%argument-types204615204617%_)
                           (_%argument-types204625%_
                            (let ((__tmp206042
                                   (lambda (_%t204623%_)
                                     (if _%t204623%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx204596%_
                                            _%t204623%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp206042
                               _%argument-types204620%_))))
                      (let _%loop204627%_ ((_%rest-args204629%_ _%args204597%_)
                                           (_%rest-types204630%_
                                            _%argument-types204625%_)
                                           (_%result204631%_ '#t))
                        (let* ((_%rest-args204632204640%_ _%rest-args204629%_)
                               (_%else204634204648%_
                                (lambda () _%result204631%_))
                               (_%K204636204709%_
                                (lambda (_%rest-args204651%_ _%arg204652%_)
                                  (let* ((_%rest-types204653204664%_
                                          _%rest-types204630%_)
                                         (_%E204657204668%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types204653204664%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K204660204697%_
                                           (lambda (_%rest-types204694%_
                                                    _%type204695%_)
                                             (_%loop204627%_
                                              _%rest-args204651%_
                                              _%rest-types204694%_
                                              (if (gxc#check-expression-type!
                                                   _%stx204596%_
                                                   _%arg204652%_
                                                   _%type204695%_)
                                                  _%result204631%_
                                                  '#f))))
                                          (_%K204659204688%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx204596%_
                                                _%argument-types204625%_))))
                                          (_%K204658204678%_
                                           (lambda (_%tail-type204672%_)
                                             (if (let ((__tmp206043
                                                        (lambda (_%g204673204675%_)
                                                          (gxc#check-expression-type!
                                                           _%stx204596%_
                                                           _%g204673204675%_
                                                           _%tail-type204672%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp206043
                                                    _%rest-args204651%_))
                                                 _%result204631%_
                                                 '#f))))
                                      (let ((_%try-match204655204691%_
                                             (lambda ()
                                               (if (null? _%rest-types204653204664%_)
                                                   (_%K204659204688%_)
                                                   (let ((_%tail-type204681%_
                                                          _%rest-types204653204664%_))
                                                     (_%K204658204678%_
                                                      _%tail-type204681%_))))))
                                        (if (pair? _%rest-types204653204664%_)
                                            (let ((_%tl204662204702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types204653204664%_)))
                                                  (_%hd204661204700%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types204653204664%_))))
                                              (let ((_%type204705%_
                                                     _%hd204661204700%_)
                                                    (_%rest-types204707%_
                                                     _%tl204662204702%_))
                                                (_%K204660204697%_
                                                 _%rest-types204707%_
                                                 _%type204705%_)))
                                            (_%try-match204655204691%_))))))))
                          (if (pair? _%rest-args204632204640%_)
                              (let ((_%hd204637204712%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args204632204640%_)))
                                    (_%tl204638204714%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args204632204640%_))))
                                (let* ((_%arg204717%_ _%hd204637204712%_)
                                       (_%rest-args204719%_
                                        _%tl204638204714%_))
                                  (_%K204636204709%_
                                   _%rest-args204719%_
                                   _%arg204717%_)))
                              (_%else204634204648%_)))))
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
      (lambda (_%self204405%_ _%ctx204406%_ _%stx204407%_ _%args204408%_)
        (let* ((_%self204411%_ _%self204405%_)
               (_%g204421204431%_
                (lambda (_%g204422204428%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204422204428%_))))
               (_%g204420204469%_
                (lambda (_%g204422204434%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204422204434%_))
                      (let ((_%e204424204436%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204422204434%_))))
                        (let ((_%hd204425204439%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204424204436%_)))
                              (_%tl204426204441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204424204436%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204426204441%_))
                              ((lambda (_%L204444%_)
                                 (let* ((_%klass204456%_
                                         (let ((__tmp206044
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self204411%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx204407%_
                                            __tmp206044)))
                                        (_%object204458%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx204406%_
                                            _%L204444%_)))
                                        (_%instance?204463%_
                                         (let ((_%$e204460%_
                                                (gxc#expression-type?
                                                 _%object204458%_
                                                 _%klass204456%_)))
                                           (if _%$e204460%_
                                               _%$e204460%_
                                               (gxc#expression-type?
                                                _%L204444%_
                                                _%klass204456%_)))))
                                   (if _%instance?204463%_
                                       (let ((__tmp206045
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object204458%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L204444%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object204458%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp206045
                                          _%stx204407%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx204406%_
                                          _%stx204407%_)))))
                               _%hd204425204439%_)
                              (_%g204421204431%_ _%g204422204434%_))))
                      (_%g204421204431%_ _%g204422204434%_)))))
          (_%g204420204469%_ _%args204408%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self204201%_ _%ctx204202%_ _%stx204203%_ _%args204204%_)
        (let* ((_%self204207%_ _%self204201%_)
               (_%g204217204227%_
                (lambda (_%g204218204224%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204218204224%_))))
               (_%g204216204280%_
                (lambda (_%g204218204230%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204218204230%_))
                      (let ((_%e204220204232%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204218204230%_))))
                        (let ((_%hd204221204235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204220204232%_)))
                              (_%tl204222204237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204220204232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204222204237%_))
                              ((lambda (_%L204240%_)
                                 (let* ((_%klass204252%_
                                         (let ((__tmp206046
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self204207%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx204203%_
                                            __tmp206046)))
                                        (_%object204254%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx204202%_
                                            _%L204240%_)))
                                        (_%instance?204259%_
                                         (let ((_%$e204256%_
                                                (gxc#expression-type?
                                                 _%object204254%_
                                                 _%klass204252%_)))
                                           (if _%$e204256%_
                                               _%$e204256%_
                                               (gxc#expression-type?
                                                _%L204240%_
                                                _%klass204252%_))))
                                        (_%klass204262%_ _%klass204252%_))
                                   (if _%instance?204259%_
                                       (let ((__tmp206047
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object204254%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L204240%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object204254%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp206047
                                          _%stx204203%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass204262%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp206048
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass204262%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object204254%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp206048
                                              _%stx204203%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass204262%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp206049
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass204262%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object204254%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp206049
                                                  _%stx204203%_))
                                               (let ((__tmp206050
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self204207%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object204254%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp206050
                                                  _%stx204203%_)))))))
                               _%hd204221204235%_)
                              (_%g204217204227%_ _%g204218204230%_))))
                      (_%g204217204227%_ _%g204218204230%_)))))
          (_%g204216204280%_ _%args204204%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx203864%_)
        (let* ((_%__stx205445205446%_ _%stx203864%_)
               (_%g203869203910%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205445205446%_)))))
          (let ((_%__kont205447205448%_ (lambda () '#t))
                (_%__kont205449205450%_ (lambda () '#t))
                (_%__kont205451205452%_
                 (lambda (_%L203978%_ _%L203979%_)
                   (let ((_%rator-type204000204002%_
                          (let ((__tmp206051
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L203979%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp206051))))
                     (if _%rator-type204000204002%_
                         (let* ((_%rator-type204005%_
                                 _%rator-type204000204002%_)
                                (_%rator-signature204006204008%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type204005%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type204005%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature204006204008%_
                               (let* ((_%rator-signature204011%_
                                       _%rator-signature204006204008%_)
                                      (_%rator-effect204012204014%_
                                       (if _%rator-signature204011%_
                                           (##direct-structure-ref
                                            _%rator-signature204011%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect204012204014%_
                                     (let ((_%rator-effect204017%_
                                            _%rator-effect204012204014%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect204017%_)
                                               (equal? '(alloc)
                                                       _%rator-effect204017%_))
                                           (let ((__tmp206052
                                                  (let ((__tmp206053
                                                         (lambda (_%g204022204025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g204023204027%_)
                   (cons _%g204022204025%_ _%g204023204027%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp206053
                                                     '()
                                                     _%L203978%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp206052))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont205455205456%_ (lambda () '#f)))
            (let ((_%__match205534205535%_
                   (lambda (_%e203885203922%_
                            _%hd203886203925%_
                            _%tl203887203927%_
                            _%e203888203930%_
                            _%hd203889203933%_
                            _%tl203890203935%_
                            _%e203891203938%_
                            _%hd203892203941%_
                            _%tl203893203943%_
                            _%e203894203946%_
                            _%hd203895203949%_
                            _%tl203896203951%_
                            _%__splice205453205454%_
                            _%target203897203954%_
                            _%tl203899203956%_)
                     (letrec ((_%loop203900203959%_
                               (lambda (_%hd203898203962%_
                                        _%rand203904203964%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd203898203962%_))
                                     (let ((_%e203901203967%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd203898203962%_))))
                                       (let ((_%lp-tl203903203972%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e203901203967%_)))
                                             (_%lp-hd203902203970%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e203901203967%_))))
                                         (_%loop203900203959%_
                                          _%lp-tl203903203972%_
                                          (cons _%lp-hd203902203970%_
                                                _%rand203904203964%_))))
                                     (let ((_%rand203905203975%_
                                            (reverse _%rand203904203964%_)))
                                       (_%__kont205451205452%_
                                        _%rand203905203975%_
                                        _%hd203895203949%_))))))
                       (_%loop203900203959%_ _%target203897203954%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205445205446%_))
                  (let ((_%e203871204058%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205445205446%_))))
                    (let ((_%tl203873204063%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203871204058%_)))
                          (_%hd203872204061%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203871204058%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd203872204061%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd203872204061%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203873204063%_))
                                  (let ((_%e203874204066%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203873204063%_))))
                                    (let ((_%tl203876204071%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203874204066%_)))
                                          (_%hd203875204069%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203874204066%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203876204071%_))
                                          (_%__kont205447205448%_)
                                          (_%__kont205455205456%_))))
                                  (_%__kont205455205456%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd203872204061%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203873204063%_))
                                      (let ((_%e203880204043%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203873204063%_))))
                                        (let ((_%tl203882204048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203880204043%_)))
                                              (_%hd203881204046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203880204043%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203882204048%_))
                                              (_%__kont205449205450%_)
                                              (_%__kont205455205456%_))))
                                      (_%__kont205455205456%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd203872204061%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203873204063%_))
                                          (let ((_%e203888203930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl203873204063%_))))
                                            (let ((_%tl203890203935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203888203930%_)))
                                                  (_%hd203889203933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203888203930%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203889203933%_))
                                                  (let ((_%e203891203938%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203889203933%_))))
                                                    (let ((_%tl203893203943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203891203938%_)))
                                                          (_%hd203892203941%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203891203938%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd203892203941%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd203892203941%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203893203943%_))
                          (let ((_%e203894203946%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203893203943%_))))
                            (let ((_%tl203896203951%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203894203946%_)))
                                  (_%hd203895203949%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203894203946%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203896203951%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203890203935%_))
                                      (let ((_%__splice205453205454%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl203890203935%_
                                                '0))))
                                        (let ((_%tl203899203956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205453205454%_
                                                  '1)))
                                              (_%target203897203954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205453205454%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203899203956%_))
                                              (_%__match205534205535%_
                                               _%e203871204058%_
                                               _%hd203872204061%_
                                               _%tl203873204063%_
                                               _%e203888203930%_
                                               _%hd203889203933%_
                                               _%tl203890203935%_
                                               _%e203891203938%_
                                               _%hd203892203941%_
                                               _%tl203893203943%_
                                               _%e203894203946%_
                                               _%hd203895203949%_
                                               _%tl203896203951%_
                                               _%__splice205453205454%_
                                               _%target203897203954%_
                                               _%tl203899203956%_)
                                              (_%__kont205455205456%_))))
                                      (_%__kont205455205456%_))
                                  (_%__kont205455205456%_))))
                          (_%__kont205455205456%_))
                      (_%__kont205455205456%_))
                  (_%__kont205455205456%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205455205456%_))))
                                          (_%__kont205455205456%_))
                                      (_%__kont205455205456%_))))
                          (_%__kont205455205456%_))))
                  (_%__kont205455205456%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx203859%_ _%klass203860%_)
        (let ((_%expr-type203862%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx203859%_))))
          (if _%expr-type203862%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type203862%_ _%klass203860%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx203837%_ _%expr203838%_ _%type203839%_)
        (if (not _%type203839%_)
            '#f
            (let ((_%$e203842%_
                   (eq? (##structure-ref _%type203839%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e203842%_
                  _%$e203842%_
                  (let ((_%expr-type203846%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr203838%_))))
                    (if (not _%expr-type203846%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type203846%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e203850%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type203846%_
                                      'gxc#!abort::t))))
                              (if _%$e203850%_
                                  _%$e203850%_
                                  (let ((_%$e203853%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type203846%_
                                            _%type203839%_))))
                                    (if _%$e203853%_
                                        _%$e203853%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type203839%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type203839%_
                                                   _%expr-type203846%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx203837%_
                                                   _%expr203838%_
                                                   _%expr-type203846%_
                                                   _%type203839%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self203651%_ _%ctx203652%_ _%stx203653%_ _%args203654%_)
        (let* ((_%self203657%_ _%self203651%_)
               (_%klass203667%_
                (let ((__tmp206054
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self203657%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx203653%_ __tmp206054)))
               (_%fields203669%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass203667%_
                           '5
                           '#f
                           '#f))))
               (_%args203675%_
                (map (lambda (_%g203670203672%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx203652%_ _%g203670203672%_)))
                     _%args203654%_))
               (_%inline-make-object203677%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self203657%_
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
                           _%self203657%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields203669%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass203680%_ _%klass203667%_)
               (_%$e203694%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass203680%_ '6 '#f '#f))))
          (if _%$e203694%_
              ((lambda (_%ctor203697%_)
                 (let ((_%$obj203699%_
                        (let ((__tmp206055
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp206055)))
                       (_%ctor-impl203700%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass203680%_
                           _%ctor203697%_))))
                   (let ((__tmp206056
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj203699%_ '())
                                                  (cons _%inline-make-object203677%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl203700%_
                                                            (let ((__tmp206057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl203700%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj203699%_ '()))
                                             _%args203675%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp206057
                       _%stx203653%_
                       _%ctx203652%_))
                    (let ((_%$ctor203702%_
                           (let ((__tmp206058
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp206058))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor203702%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203657%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj203699%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor203697%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor203702%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor203702%_ '()))
                              (cons (cons '%#ref (cons _%$obj203699%_ '()))
                                    _%args203675%_)))
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
                             _%self203657%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor203697%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj203699%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp206056 _%stx203653%_))))
               _%$e203694%_)
              (let ((_%$e203704%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass203680%_
                        '10
                        '#f
                        '#f))))
                (if _%$e203704%_
                    ((lambda (_%metaclass203707%_)
                       (let* ((_%$obj203709%_
                               (let ((__tmp206059
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp206059)))
                              (_%metakons203711%_
                               (let ((__tmp206060
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx203653%_
                                         _%metaclass203707%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp206060
                                  'instance-init!)))
                              (__tmp206061
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj203709%_
                                                             '())
                                                       (cons _%inline-make-object203677%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons203711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp206062
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons203711%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self203657%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj203709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args203675%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp206062
                            _%stx203653%_
                            _%ctx203652%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self203657%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj203709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args203675%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj203709%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp206061 _%stx203653%_)))
                     _%$e203704%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass203680%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp206063
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args203675%_))))
                              (declare (not safe))
                              (##fx= __tmp206063 _%fields203669%_))
                            (let ((__tmp206064
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self203657%_
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
                                              _%self203657%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args203675%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp206064
                               _%stx203653%_))
                            (let ((__tmp206066
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self203657%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp206065
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass203680%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx203653%_
                               __tmp206066
                               __tmp206065)))
                        (let ((_%$obj203716%_
                               (let ((__tmp206067
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp206067))))
                          (let _%lp203718%_ ((_%rest203720%_ _%args203675%_)
                                             (_%initializers203721%_ '()))
                            (let* ((_%__stx205537205538%_ _%rest203720%_)
                                   (_%g203725203746%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx205537205538%_)))))
                              (let ((_%__kont205539205540%_
                                     (lambda (_%L203800%_
                                              _%L203801%_
                                              _%L203802%_)
                                       (let* ((_%slot203829%_
                                               (let ((__tmp206068
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L203802%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp206068)))
                                              (_%off203831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass203680%_
                                                  _%slot203829%_))))
                                         (if _%off203831%_
                                             (_%lp203718%_
                                              _%L203800%_
                                              (cons (cons _%off203831%_
                                                          _%L203801%_)
                                                    _%initializers203721%_))
                                             (let ((__tmp206069
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self203657%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx203653%_
                                                __tmp206069
                                                _%slot203829%_))))))
                                    (_%__kont205541205542%_
                                     (lambda ()
                                       (let ((__tmp206070
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj203716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object203677%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp206073
                                     (cons (cons '%#ref
                                                 (cons _%$obj203716%_ '()))
                                           '()))
                                    (__tmp206071
                                     (let ((__tmp206072
                                            (lambda (_%i203760%_ _%r203761%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self203657%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i203760%_) '()))
                              (cons (cons '%#ref (cons _%$obj203716%_ '()))
                                    (cons (cdr _%i203760%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r203761%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp206072
                                        '()
                                        _%initializers203721%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp206073 __tmp206071)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp206070
                                          _%stx203653%_))))
                                    (_%__kont205543205544%_
                                     (lambda ()
                                       (let ((__tmp206074
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj203716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object203677%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj203716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args203675%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj203716%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp206074
                                          _%stx203653%_)))))
                                (let* ((_%g203723203763%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx205537205538%_))
                                              (_%__kont205541205542%_)
                                              (_%__kont205543205544%_))))
                                       (_%__match205574205575%_
                                        (lambda (_%e203730203768%_
                                                 _%hd203731203771%_
                                                 _%tl203732203773%_
                                                 _%e203733203776%_
                                                 _%hd203734203779%_
                                                 _%tl203735203781%_
                                                 _%e203736203784%_
                                                 _%hd203737203787%_
                                                 _%tl203738203789%_
                                                 _%e203739203792%_
                                                 _%hd203740203795%_
                                                 _%tl203741203797%_)
                                          (let ((_%L203800%_
                                                 _%tl203741203797%_)
                                                (_%L203801%_
                                                 _%hd203740203795%_)
                                                (_%L203802%_
                                                 _%hd203737203787%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L203802%_))
                                                (_%__kont205539205540%_
                                                 _%L203800%_
                                                 _%L203801%_
                                                 _%L203802%_)
                                                (_%__kont205543205544%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx205537205538%_))
                                      (let ((_%e203730203768%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx205537205538%_))))
                                        (let ((_%tl203732203773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203730203768%_)))
                                              (_%hd203731203771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203730203768%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd203731203771%_))
                                              (let ((_%e203733203776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd203731203771%_))))
                                                (let ((_%tl203735203781%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203733203776%_)))
                                                      (_%hd203734203779%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203733203776%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd203734203779%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd203734203779%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl203735203781%_))
                      (let ((_%e203736203784%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl203735203781%_))))
                        (let ((_%tl203738203789%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203736203784%_)))
                              (_%hd203737203787%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203736203784%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203738203789%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203732203773%_))
                                  (let ((_%e203739203792%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203732203773%_))))
                                    (let ((_%tl203741203797%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203739203792%_)))
                                          (_%hd203740203795%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203739203792%_))))
                                      (_%__match205574205575%_
                                       _%e203730203768%_
                                       _%hd203731203771%_
                                       _%tl203732203773%_
                                       _%e203733203776%_
                                       _%hd203734203779%_
                                       _%tl203735203781%_
                                       _%e203736203784%_
                                       _%hd203737203787%_
                                       _%tl203738203789%_
                                       _%e203739203792%_
                                       _%hd203740203795%_
                                       _%tl203741203797%_)))
                                  (_%__kont205543205544%_))
                              (_%__kont205543205544%_))))
                      (_%__kont205543205544%_))
                  (_%__kont205543205544%_))
              (_%__kont205543205544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205543205544%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203723203763%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self203434%_ _%ctx203435%_ _%stx203436%_ _%args203437%_)
        (let* ((_%self203440%_ _%self203434%_)
               (_%arguments-ok?203450%_
                (let ((__method206018
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self203440%_ 'check-arguments))))
                  (if __method206018
                      (let ()
                        (declare (not safe))
                        (__method206018
                         _%self203440%_
                         _%ctx203435%_
                         _%stx203436%_
                         _%args203437%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self203440%_
                                 'check-arguments))
                        '#!void))))
               (_%g203452203462%_
                (lambda (_%g203453203459%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203453203459%_))))
               (_%g203451203526%_
                (lambda (_%g203453203465%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203453203465%_))
                      (let ((_%e203455203467%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203453203465%_))))
                        (let ((_%hd203456203470%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203455203467%_)))
                              (_%tl203457203472%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203455203467%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203457203472%_))
                              ((lambda (_%L203475%_)
                                 (let* ((_%klass203488%_
                                         (let ((__tmp206075
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self203440%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx203436%_
                                            __tmp206075)))
                                        (_%field203490%_
                                         (let ((__tmp206076
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self203440%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass203488%_
                                            __tmp206076)))
                                        (_%object203492%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx203435%_
                                            _%L203475%_)))
                                        (_%klass203495%_ _%klass203488%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass203495%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp206077
                                              (cons (if (or _%arguments-ok?203450%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self203440%_
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
                                 _%self203440%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field203490%_ '()))
                        (cons _%object203492%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp206077
                                          _%stx203436%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass203495%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp206078
                                                  (cons (if (or _%arguments-ok?203450%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self203440%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self203440%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field203490%_ '()))
                            (cons _%object203492%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp206078
                                              _%stx203436%_))
                                           (let ((_%$e203514%_
                                                  (let ((__tmp206079
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self203440%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass203495%_
                                                     __tmp206079))))
                                             (if _%$e203514%_
                                                 ((lambda (_%klass203517%_)
                                                    (let ((__tmp206080
                                                           (cons (if (or _%arguments-ok?203450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self203440%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self203440%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field203490%_ '()))
                                     (cons _%object203492%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp206080 _%stx203436%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e203514%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self203440%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp206081
                                                            (let ((_%$obj203523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp206082
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp206082))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj203523%_ '())
                                              (cons _%object203492%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass203495%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj203523%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203440%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field203490%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj203523%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?203450%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj203523%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self203440%_
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
                                                             _%self203440%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj203523%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self203440%_
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
               (gxc#xform-wrap-source __tmp206081 _%stx203436%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp206083
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object203492%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self203440%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp206083 _%stx203436%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd203456203470%_)
                              (_%g203452203462%_ _%g203453203465%_))))
                      (_%g203452203462%_ _%g203453203465%_)))))
          (_%g203451203526%_ _%args203437%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass205305 __method-table205306)
        (let ((__check-arguments205307
               (let ((__tmp206084
                      (lambda ()
                        (let ((__method205308
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table205306
                                  'check-arguments
                                  '#f))))
                          (if __method205308
                              __method205308
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp206084)))
              (__slot205309
               (let ((__slot205310
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass205305 'slot))))
                 (if __slot205310
                     __slot205310
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self203434%_ _%ctx203435%_ _%stx203436%_ _%args203437%_)
            (let* ((_%self203440%_ _%self203434%_)
                   (_%arguments-ok?203450%_
                    ((force __check-arguments205307)
                     _%self203440%_
                     _%ctx203435%_
                     _%stx203436%_
                     _%args203437%_))
                   (_%g203452203462%_
                    (lambda (_%g203453203459%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g203453203459%_))))
                   (_%g203451203526%_
                    (lambda (_%g203453203465%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g203453203465%_))
                          (let ((_%e203455203467%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g203453203465%_))))
                            (let ((_%hd203456203470%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203455203467%_)))
                                  (_%tl203457203472%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203455203467%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203457203472%_))
                                  ((lambda (_%L203475%_)
                                     (let* ((_%klass203488%_
                                             (let ((__tmp206085
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self203440%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx203436%_
                                                __tmp206085)))
                                            (_%field203490%_
                                             (let ((__tmp206086
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self203440%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass203488%_
                                                __tmp206086)))
                                            (_%object203492%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx203435%_
                                                _%L203475%_)))
                                            (_%klass203495%_ _%klass203488%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass203495%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp206087
                                                  (cons (if (or _%arguments-ok?203450%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self203440%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self203440%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field203490%_ '()))
                            (cons _%object203492%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp206087
                                              _%stx203436%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass203495%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp206088
                                                      (cons (if (or _%arguments-ok?203450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self203440%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self203440%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field203490%_ '()))
                                (cons _%object203492%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp206088
                                                  _%stx203436%_))
                                               (let ((_%$e203514%_
                                                      (let ((__tmp206089
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self203440%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass203495%_ __tmp206089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e203514%_
                                                     ((lambda (_%klass203517%_)
                                                        (let ((__tmp206090
                                                               (cons (if (or _%arguments-ok?203450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203440%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self203440%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field203490%_ '()))
                                         (cons _%object203492%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp206090 _%stx203436%_)))
              _%$e203514%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self203440%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp206091
                                                                (let ((_%$obj203523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp206092
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp206092))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj203523%_ '())
                                                  (cons _%object203492%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass203495%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj203523%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self203440%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field203490%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj203523%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?203450%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj203523%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self203440%_
                               __slot205309
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
                        (##unchecked-structure-ref _%self203440%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj203523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self203440%_
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
                   (gxc#xform-wrap-source __tmp206091 _%stx203436%_))
                 (let ((__tmp206093
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object203492%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self203440%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp206093 _%stx203436%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd203456203470%_)
                                  (_%g203452203462%_ _%g203453203465%_))))
                          (_%g203452203462%_ _%g203453203465%_)))))
              (_%g203451203526%_ _%args203437%_))))))
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
      (lambda (_%self203198%_ _%ctx203199%_ _%stx203200%_ _%args203201%_)
        (let* ((_%self203204%_ _%self203198%_)
               (_%arguments-ok?203214%_
                (let ((__method206019
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self203204%_ 'check-arguments))))
                  (if __method206019
                      (let ()
                        (declare (not safe))
                        (__method206019
                         _%self203204%_
                         _%ctx203199%_
                         _%stx203200%_
                         _%args203201%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self203204%_
                                 'check-arguments))
                        '#!void))))
               (_%g203216203230%_
                (lambda (_%g203217203227%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203217203227%_))))
               (_%g203215203309%_
                (lambda (_%g203217203233%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203217203233%_))
                      (let ((_%e203220203235%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203217203233%_))))
                        (let ((_%hd203221203238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203220203235%_)))
                              (_%tl203222203240%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203220203235%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203222203240%_))
                              (let ((_%e203223203243%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203222203240%_))))
                                (let ((_%hd203224203246%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203223203243%_)))
                                      (_%tl203225203248%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203223203243%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203225203248%_))
                                      ((lambda (_%L203251%_ _%L203252%_)
                                         (let* ((_%klass203268%_
                                                 (let ((__tmp206094
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self203204%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx203200%_
                                                    __tmp206094)))
                                                (_%field203270%_
                                                 (let ((__tmp206095
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self203204%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass203268%_
                                                    __tmp206095)))
                                                (_%object203272%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx203199%_
                                                    _%L203252%_)))
                                                (_%value203274%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx203199%_
                                                    _%L203251%_)))
                                                (_%klass203277%_
                                                 _%klass203268%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass203277%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp206096
                                                      (cons (if (or _%arguments-ok?203214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self203204%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self203204%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field203270%_ '()))
                                (cons _%object203272%_
                                      (cons _%value203274%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp206096
                                                  _%stx203200%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass203277%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp206097
                                                          (cons (if (or _%arguments-ok?203214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self203204%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203204%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field203270%_ '()))
                                    (cons _%object203272%_
                                          (cons _%value203274%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp206097
                                                      _%stx203200%_))
                                                   (let ((_%$e203297%_
                                                          (let ((__tmp206098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self203204%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass203277%_
                     __tmp206098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e203297%_
                                                         ((lambda (_%klass203300%_)
                                                            (let ((__tmp206099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?203214%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self203204%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self203204%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field203270%_ '()))
                                             (cons _%object203272%_
                                                   (cons _%value203274%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp206099 _%stx203200%_)))
                  _%$e203297%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self203204%_ '4 '#f '#f))
                     (let ((__tmp206100
                            (let ((_%$obj203306%_
                                   (let ((__tmp206101
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp206101))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj203306%_ '())
                                                      (cons _%object203272%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass203277%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj203306%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self203204%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field203270%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj203306%_
                                                              '()))
                                                  (cons _%value203274%_
                                                        '())))))
                          (cons (if _%arguments-ok?203214%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj203306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self203204%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value203274%_ '())))))
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
                             _%self203204%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj203306%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self203204%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value203274%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp206100 _%stx203200%_))
                     (let ((__tmp206102
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object203272%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self203204%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value203274%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp206102
                        _%stx203200%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd203224203246%_
                                       _%hd203221203238%_)
                                      (_%g203216203230%_ _%g203217203233%_))))
                              (_%g203216203230%_ _%g203217203233%_))))
                      (_%g203216203230%_ _%g203217203233%_)))))
          (_%g203215203309%_ _%args203201%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass205311 __method-table205312)
        (let ((__check-arguments205313
               (let ((__tmp206103
                      (lambda ()
                        (let ((__method205314
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table205312
                                  'check-arguments
                                  '#f))))
                          (if __method205314
                              __method205314
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp206103))))
          (lambda (_%self203198%_ _%ctx203199%_ _%stx203200%_ _%args203201%_)
            (let* ((_%self203204%_ _%self203198%_)
                   (_%arguments-ok?203214%_
                    ((force __check-arguments205313)
                     _%self203204%_
                     _%ctx203199%_
                     _%stx203200%_
                     _%args203201%_))
                   (_%g203216203230%_
                    (lambda (_%g203217203227%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g203217203227%_))))
                   (_%g203215203309%_
                    (lambda (_%g203217203233%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g203217203233%_))
                          (let ((_%e203220203235%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g203217203233%_))))
                            (let ((_%hd203221203238%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203220203235%_)))
                                  (_%tl203222203240%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203220203235%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203222203240%_))
                                  (let ((_%e203223203243%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203222203240%_))))
                                    (let ((_%hd203224203246%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203223203243%_)))
                                          (_%tl203225203248%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203223203243%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203225203248%_))
                                          ((lambda (_%L203251%_ _%L203252%_)
                                             (let* ((_%klass203268%_
                                                     (let ((__tmp206104
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self203204%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx203200%_
                                                        __tmp206104)))
                                                    (_%field203270%_
                                                     (let ((__tmp206105
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self203204%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass203268%_
                                                        __tmp206105)))
                                                    (_%object203272%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx203199%_
                                                        _%L203252%_)))
                                                    (_%value203274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx203199%_
                                                        _%L203251%_)))
                                                    (_%klass203277%_
                                                     _%klass203268%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass203277%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp206106
                                                          (cons (if (or _%arguments-ok?203214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self203204%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203204%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field203270%_ '()))
                                    (cons _%object203272%_
                                          (cons _%value203274%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp206106
                                                      _%stx203200%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass203277%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp206107
                                                              (cons (if (or _%arguments-ok?203214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self203204%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self203204%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field203270%_ '()))
                                        (cons _%object203272%_
                                              (cons _%value203274%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp206107 _%stx203200%_))
               (let ((_%$e203297%_
                      (let ((__tmp206108
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self203204%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass203277%_
                         __tmp206108))))
                 (if _%$e203297%_
                     ((lambda (_%klass203300%_)
                        (let ((__tmp206109
                               (cons (if (or _%arguments-ok?203214%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self203204%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self203204%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field203270%_
                                                             '()))
                                                 (cons _%object203272%_
                                                       (cons _%value203274%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp206109 _%stx203200%_)))
                      _%$e203297%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self203204%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp206110
                                (let ((_%$obj203306%_
                                       (let ((__tmp206111
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp206111))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj203306%_
                                                                '())
                                                          (cons _%object203272%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass203277%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj203306%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self203204%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field203270%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj203306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value203274%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?203214%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj203306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self203204%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value203274%_ '())))))
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
                                 _%self203204%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj203306%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203204%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value203274%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp206110 _%stx203200%_))
                         (let ((__tmp206112
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object203272%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self203204%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value203274%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp206112
                            _%stx203200%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd203224203246%_
                                           _%hd203221203238%_)
                                          (_%g203216203230%_
                                           _%g203217203233%_))))
                                  (_%g203216203230%_ _%g203217203233%_))))
                          (_%g203216203230%_ _%g203217203233%_)))))
              (_%g203215203309%_ _%args203201%_))))))
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
      (lambda (_%self203013%_ _%ctx203014%_ _%stx203015%_ _%args203016%_)
        (let* ((_%self203019%_ _%self203013%_)
               (_%self203028203038%_ _%self203019%_)
               (_%E203030203042%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self203028203038%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K203031203052%_
                (lambda (_%inline203045%_ _%dispatch203046%_ _%arity203047%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self203019%_
                         _%args203016%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx203015%_
                         _%arity203047%_)))
                  (if _%inline203045%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp206113 (_%inline203045%_ _%stx203015%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp206113
                           _%stx203015%_
                           _%ctx203014%_)))
                      (if (and _%dispatch203046%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch203046%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch203046%_))
                            (let ((__tmp206114
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch203046%_
                                                           '()))
                                               _%args203016%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp206114
                               _%stx203015%_
                               _%ctx203014%_)))
                          (gxc#!procedure::optimize-call
                           _%self203019%_
                           _%ctx203014%_
                           _%stx203015%_
                           _%args203016%_)))))
               (_%e203032203055%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203028203038%_ '1 '#f '#f)))
               (_%e203033203058%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203028203038%_ '2 '#f '#f)))
               (_%e203034203061%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203028203038%_ '3 '#f '#f)))
               (_%arity203064%_ _%e203034203061%_)
               (_%e203035203066%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203028203038%_ '4 '#f '#f)))
               (_%dispatch203069%_ _%e203035203066%_)
               (_%e203036203071%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203028203038%_ '5 '#f '#f)))
               (_%inline203074%_ _%e203036203071%_))
          (_%K203031203052%_
           _%inline203074%_
           _%dispatch203069%_
           _%arity203064%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self202865%_ _%ctx202866%_ _%stx202867%_ _%args202868%_)
        (let* ((_%self202871%_ _%self202865%_)
               (_%$e202885%_
                (let ((__tmp206116
                       (lambda (_%g202880202882%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g202880202882%_
                            _%args202868%_))))
                      (__tmp206115
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self202871%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp206116 __tmp206115))))
          (if _%$e202885%_
              ((lambda (_%clause202888%_)
                 (let ((__method206020
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause202888%_ 'optimize-call))))
                   (if __method206020
                       (let ()
                         (declare (not safe))
                         (__method206020
                          _%clause202888%_
                          _%ctx202866%_
                          _%stx202867%_
                          _%args202868%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause202888%_
                                  'optimize-call))
                         '#!void))))
               _%$e202885%_)
              (let ((__tmp206117
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self202871%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx202867%_
                 __tmp206117))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self202605%_ _%ctx202606%_ _%stx202607%_ _%args202608%_)
        (let* ((_%self202611%_ _%self202605%_)
               (_%self202620202629%_ _%self202611%_)
               (_%E202622202633%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self202620202629%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K202623202724%_
                (lambda (_%dispatch202636%_ _%table202637%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch202636%_))
                      (let* ((_%g202638202648%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch202636%_)))
                             (_%else202640202656%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch202636%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx202606%_
                                   _%stx202607%_))))
                             (_%K202642202705%_
                              (lambda (_%main202659%_ _%keys202660%_)
                                (let ((_g206118_
                                       (gxc#!kw-lambda-split-args
                                        _%stx202607%_
                                        _%args202608%_)))
                                  (begin
                                    (let ((_g206119_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g206118_)
                                                 (##values-length _g206118_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g206119_ 2)))
                                          (error "Context expects 2 values"
                                                 _g206119_)))
                                    (let ((_%pargs202662%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206118_ 0)))
                                          (_%kwargs202663%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206118_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main202659%_))
                                        (if _%table202637%_
                                            (let ((_%xargs202671%_
                                                   (map (lambda (_%key202665%_)
                                                          (let ((_%$e202667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key202665%_ _%kwargs202663%_))))
                    (if _%$e202667%_ _%$e202667%_ '(%#ref absent-value))))
                _%keys202660%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw202673%_)
                                                 (if (memq (car _%kw202673%_)
                                                           _%keys202660%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx202607%_
                                                        _%keys202660%_
                                                        _%kw202673%_))))
                                               _%kwargs202663%_)
                                              (let ((__tmp206120
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main202659%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs202662%_
                                  _%xargs202671%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp206120
                                                 _%stx202607%_
                                                 _%ctx202606%_)))
                                            (let* ((_%kwt202675%_
                                                    (let ((__tmp206121
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp206121)))
                                                   (_%kwvars202679%_
                                                    (map (lambda (_%_202677%_)
                                                           (let ((__tmp206122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp206122)))
                 _%kwargs202663%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind202684%_
                                                    (map (lambda (_%kw202681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar202682%_)
                   (cons (cons _%kwvar202682%_ '())
                         (cons (cdr _%kw202681%_) '())))
                 _%kwargs202663%_
                 _%kwvars202679%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset202689%_
                                                    (map (lambda (_%kw202686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar202687%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt202675%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw202686%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar202687%_
                                                             '()))
                                                 '()))))))
                 _%kwargs202663%_
                 _%kwvars202679%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs202694%_
                                                    (map (lambda (_%kw202691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar202692%_)
                   (cons (car _%kw202691%_)
                         (cons '%#ref (cons _%kwvar202692%_ '()))))
                 _%kwargs202663%_
                 _%kwvars202679%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs202702%_
                                                    (map (lambda (_%key202696%_)
                                                           (let ((_%$e202698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key202696%_ _%xkwargs202694%_))))
                     (if _%$e202698%_ _%$e202698%_ '(%#ref absent-value))))
                 _%keys202660%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp206123
                                                    (cons '%#let-values
                                                          (cons _%kwbind202684%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt202675%_ '())
                                                      (cons (let ((__tmp206124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs202663%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp206124 _%stx202607%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp206125
                                                             (cons (let ((__tmp206126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main202659%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt202675%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs202662%_
                                                       _%xargs202702%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp206126 _%stx202607%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp206125 _%kwset202689%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp206123
                                               _%stx202607%_
                                               _%ctx202606%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g202638202648%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e202643202708%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202638202648%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e202644202711%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202638202648%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e202645202714%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202638202648%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys202717%_ _%e202645202714%_)
                                   (_%e202646202719%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202638202648%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main202722%_ _%e202646202719%_))
                              (_%K202642202705%_
                               _%main202722%_
                               _%keys202717%_))
                            (_%else202640202656%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx202606%_ _%stx202607%_)))))
               (_%e202624202727%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202620202629%_ '1 '#f '#f)))
               (_%e202625202730%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202620202629%_ '2 '#f '#f)))
               (_%e202626202733%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202620202629%_ '3 '#f '#f)))
               (_%table202736%_ _%e202626202733%_)
               (_%e202627202738%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202620202629%_ '4 '#f '#f)))
               (_%dispatch202741%_ _%e202627202738%_))
          (_%K202623202724%_ _%dispatch202741%_ _%table202736%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx202218%_ _%args202219%_)
        (let _%lp202221%_ ((_%rest202223%_ _%args202219%_)
                           (_%pargs202224%_ '())
                           (_%kwargs202225%_ '()))
          (let* ((_%__stx205579205580%_ _%rest202223%_)
                 (_%g202231202283%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx205579205580%_)))))
            (let ((_%__kont205581205582%_
                   (lambda (_%L202462%_ _%L202463%_)
                     (_%lp202221%_
                      _%L202462%_
                      (cons _%L202463%_ _%pargs202224%_)
                      _%kwargs202225%_)))
                  (_%__kont205583205584%_
                   (lambda (_%L202408%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L202408%_ _%pargs202224%_))
                             (reverse _%kwargs202225%_))))
                  (_%__kont205585205586%_
                   (lambda (_%L202355%_ _%L202356%_ _%L202357%_)
                     (let ((_%kw202374%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L202357%_))))
                       (if (assq _%kw202374%_ _%kwargs202225%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx202218%_
                              _%kw202374%_))
                           (_%lp202221%_
                            _%L202355%_
                            _%pargs202224%_
                            (cons (cons _%kw202374%_ _%L202356%_)
                                  _%kwargs202225%_))))))
                  (_%__kont205587205588%_
                   (lambda (_%L202303%_ _%L202304%_)
                     (_%lp202221%_
                      _%L202303%_
                      (cons _%L202304%_ _%pargs202224%_)
                      _%kwargs202225%_)))
                  (_%__kont205589205590%_
                   (lambda ()
                     (values (reverse _%pargs202224%_)
                             (reverse _%kwargs202225%_)))))
              (let ((_%__match205686205687%_
                     (lambda (_%e202262202323%_
                              _%hd202263202326%_
                              _%tl202264202328%_
                              _%e202265202331%_
                              _%hd202266202334%_
                              _%tl202267202336%_
                              _%e202268202339%_
                              _%hd202269202342%_
                              _%tl202270202344%_
                              _%e202271202347%_
                              _%hd202272202350%_
                              _%tl202273202352%_)
                       (let ((_%L202355%_ _%tl202273202352%_)
                             (_%L202356%_ _%hd202272202350%_)
                             (_%L202357%_ _%hd202269202342%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L202357%_))
                             (_%__kont205585205586%_
                              _%L202355%_
                              _%L202356%_
                              _%L202357%_)
                             (_%__kont205587205588%_
                              _%tl202264202328%_
                              _%hd202263202326%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx205579205580%_))
                    (let ((_%e202235202427%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx205579205580%_))))
                      (let ((_%tl202237202432%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202235202427%_)))
                            (_%hd202236202430%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202235202427%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd202236202430%_))
                            (let ((_%e202238202435%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd202236202430%_))))
                              (let ((_%tl202240202440%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202238202435%_)))
                                    (_%hd202239202438%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202238202435%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd202239202438%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd202239202438%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202240202440%_))
                                            (let ((_%e202241202443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202240202440%_))))
                                              (let ((_%tl202243202448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202241202443%_)))
                                                    (_%hd202242202446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202241202443%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd202242202446%_))
                                                    (let ((_%e202244202451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202242202446%_))))
                                                      (if (equal? _%e202244202451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl202243202448%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202237202432%_))
                          (let ((_%e202245202454%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202237202432%_))))
                            (let ((_%tl202247202459%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202245202454%_)))
                                  (_%hd202246202457%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202245202454%_))))
                              (_%__kont205581205582%_
                               _%tl202247202459%_
                               _%hd202246202457%_)))
                          (_%__kont205587205588%_
                           _%tl202237202432%_
                           _%hd202236202430%_))
                      (_%__kont205587205588%_
                       _%tl202237202432%_
                       _%hd202236202430%_))
                  (if (equal? _%e202244202451%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202243202448%_))
                          (_%__kont205583205584%_ _%tl202237202432%_)
                          (_%__kont205587205588%_
                           _%tl202237202432%_
                           _%hd202236202430%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202243202448%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202237202432%_))
                              (let ((_%e202271202347%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202237202432%_))))
                                (let ((_%tl202273202352%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202271202347%_)))
                                      (_%hd202272202350%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202271202347%_))))
                                  (_%__match205686205687%_
                                   _%e202235202427%_
                                   _%hd202236202430%_
                                   _%tl202237202432%_
                                   _%e202238202435%_
                                   _%hd202239202438%_
                                   _%tl202240202440%_
                                   _%e202241202443%_
                                   _%hd202242202446%_
                                   _%tl202243202448%_
                                   _%e202271202347%_
                                   _%hd202272202350%_
                                   _%tl202273202352%_)))
                              (_%__kont205587205588%_
                               _%tl202237202432%_
                               _%hd202236202430%_))
                          (_%__kont205587205588%_
                           _%tl202237202432%_
                           _%hd202236202430%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl202243202448%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202237202432%_))
                                                            (let ((_%e202271202347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202237202432%_))))
                      (let ((_%tl202273202352%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202271202347%_)))
                            (_%hd202272202350%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202271202347%_))))
                        (_%__match205686205687%_
                         _%e202235202427%_
                         _%hd202236202430%_
                         _%tl202237202432%_
                         _%e202238202435%_
                         _%hd202239202438%_
                         _%tl202240202440%_
                         _%e202241202443%_
                         _%hd202242202446%_
                         _%tl202243202448%_
                         _%e202271202347%_
                         _%hd202272202350%_
                         _%tl202273202352%_)))
                    (_%__kont205587205588%_
                     _%tl202237202432%_
                     _%hd202236202430%_))
                (_%__kont205587205588%_
                 _%tl202237202432%_
                 _%hd202236202430%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont205587205588%_
                                             _%tl202237202432%_
                                             _%hd202236202430%_))
                                        (_%__kont205587205588%_
                                         _%tl202237202432%_
                                         _%hd202236202430%_))
                                    (_%__kont205587205588%_
                                     _%tl202237202432%_
                                     _%hd202236202430%_))))
                            (_%__kont205587205588%_
                             _%tl202237202432%_
                             _%hd202236202430%_))))
                    (_%__kont205589205590%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self202202%_ _%ctx202203%_ _%stx202204%_ _%args202205%_)
        (let ((_%self202208%_ _%self202202%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx202203%_ _%stx202204%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self201890%_ _%stx201891%_)
        (let* ((_%__stx205695205696%_ _%stx201891%_)
               (_%g201894201934%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205695205696%_)))))
          (let ((_%__kont205697205698%_
                 (lambda (_%L202040%_ _%L202041%_)
                   (let ((_%$e202068%_
                          (member 'return:
                                  (let ((__tmp206127
                                         (lambda (_%g202060202063%_
                                                  _%g202061202065%_)
                                           (cons _%g202060202063%_
                                                 _%g202061202065%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp206127 '() _%L202041%_))
                                  gx#stx-eq?)))
                     (if _%$e202068%_
                         ((lambda (_%tail202071%_)
                            (let ((_%type202073%_
                                   (let ((__tmp206128
                                          (let ((__tmp206129
                                                 (cadr _%tail202071%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp206129))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx201891%_
                                      __tmp206128))))
                              (gxc#check-return-type!
                               _%stx201891%_
                               _%L202040%_
                               _%type202073%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self201890%_
                                 _%L202040%_))))
                          _%$e202068%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self201890%_ _%L202040%_))))))
                (_%__kont205701205702%_
                 (lambda (_%L201963%_ _%L201964%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self201890%_ _%L201963%_)))))
            (let ((_%__match205732205733%_
                   (lambda (_%e201898201984%_
                            _%hd201899201987%_
                            _%tl201900201989%_
                            _%e201901201992%_
                            _%hd201902201995%_
                            _%tl201903201997%_
                            _%e201904202000%_
                            _%hd201905202003%_
                            _%tl201906202005%_
                            _%__splice205699205700%_
                            _%target201907202008%_
                            _%tl201909202010%_)
                     (letrec ((_%loop201910202013%_
                               (lambda (_%hd201908202016%_
                                        _%signature201914202018%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd201908202016%_))
                                     (let ((_%e201911202021%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd201908202016%_))))
                                       (let ((_%lp-tl201913202026%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201911202021%_)))
                                             (_%lp-hd201912202024%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201911202021%_))))
                                         (_%loop201910202013%_
                                          _%lp-tl201913202026%_
                                          (cons _%lp-hd201912202024%_
                                                _%signature201914202018%_))))
                                     (let ((_%signature201915202029%_
                                            (reverse _%signature201914202018%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl201903201997%_))
                                           (let ((_%e201916202032%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl201903201997%_))))
                                             (let ((_%tl201918202037%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e201916202032%_)))
                                                   (_%hd201917202035%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e201916202032%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl201918202037%_))
                                                   (_%__kont205697205698%_
                                                    _%hd201917202035%_
                                                    _%signature201915202029%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g201894201934%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g201894201934%_))))))))
                       (_%loop201910202013%_ _%target201907202008%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205695205696%_))
                  (let ((_%e201898201984%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205695205696%_))))
                    (let ((_%tl201900201989%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201898201984%_)))
                          (_%hd201899201987%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201898201984%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201900201989%_))
                          (let ((_%e201901201992%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201900201989%_))))
                            (let ((_%tl201903201997%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201901201992%_)))
                                  (_%hd201902201995%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201901201992%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd201902201995%_))
                                  (let ((_%e201904202000%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd201902201995%_))))
                                    (let ((_%tl201906202005%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201904202000%_)))
                                          (_%hd201905202003%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201904202000%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd201905202003%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd201905202003%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl201906202005%_))
                                                  (let ((_%__splice205699205700%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl201906202005%_
                                                            '0))))
                                                    (let ((_%tl201909202010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice205699205700%_
                                                              '1)))
                                                          (_%target201907202008%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice205699205700%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201909202010%_))
                                                          (_%__match205732205733%_
                                                           _%e201898201984%_
                                                           _%hd201899201987%_
                                                           _%tl201900201989%_
                                                           _%e201901201992%_
                                                           _%hd201902201995%_
                                                           _%tl201903201997%_
                                                           _%e201904202000%_
                                                           _%hd201905202003%_
                                                           _%tl201906202005%_
                                                           _%__splice205699205700%_
                                                           _%target201907202008%_
                                                           _%tl201909202010%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl201903201997%_))
                      (let ((_%e201927201955%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201903201997%_))))
                        (let ((_%tl201929201960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201927201955%_)))
                              (_%hd201928201958%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201927201955%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201929201960%_))
                              (_%__kont205701205702%_
                               _%hd201928201958%_
                               _%hd201902201995%_)
                              (let ()
                                (declare (not safe))
                                (_%g201894201934%_)))))
                      (let () (declare (not safe)) (_%g201894201934%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201903201997%_))
                                                      (let ((_%e201927201955%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl201903201997%_))))
                (let ((_%tl201929201960%_
                       (let () (declare (not safe)) (##cdr _%e201927201955%_)))
                      (_%hd201928201958%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201927201955%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201929201960%_))
                      (_%__kont205701205702%_
                       _%hd201928201958%_
                       _%hd201902201995%_)
                      (let () (declare (not safe)) (_%g201894201934%_)))))
              (let () (declare (not safe)) (_%g201894201934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201903201997%_))
                                                  (let ((_%e201927201955%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201903201997%_))))
                                                    (let ((_%tl201929201960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201927201955%_)))
                                                          (_%hd201928201958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201927201955%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201929201960%_))
                                                          (_%__kont205701205702%_
                                                           _%hd201928201958%_
                                                           _%hd201902201995%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201894201934%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201894201934%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201903201997%_))
                                              (let ((_%e201927201955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201903201997%_))))
                                                (let ((_%tl201929201960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201927201955%_)))
                                                      (_%hd201928201958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201927201955%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201929201960%_))
                                                      (_%__kont205701205702%_
                                                       _%hd201928201958%_
                                                       _%hd201902201995%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201894201934%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201894201934%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201903201997%_))
                                      (let ((_%e201927201955%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201903201997%_))))
                                        (let ((_%tl201929201960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201927201955%_)))
                                              (_%hd201928201958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201927201955%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201929201960%_))
                                              (_%__kont205701205702%_
                                               _%hd201928201958%_
                                               _%hd201902201995%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g201894201934%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201894201934%_))))))
                          (let () (declare (not safe)) (_%g201894201934%_)))))
                  (let () (declare (not safe)) (_%g201894201934%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx201865%_ _%expr201866%_ _%type201867%_)
        (let ((_%$e201869%_ (not _%type201867%_)))
          (if _%$e201869%_
              _%$e201869%_
              (let ((_%$e201872%_
                     (eq? (##structure-ref _%type201867%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e201872%_
                    _%$e201872%_
                    (let ((_%$e201875%_
                           (eq? (##structure-ref
                                 _%type201867%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e201875%_
                          _%$e201875%_
                          (let ((_%expr-type201879%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr201866%_))))
                            (if (not _%expr-type201879%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx201865%_
                                   _%type201867%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type201879%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx201865%_
                                       _%type201867%_
                                       _%expr-type201879%_))
                                    (let ((_%$e201883%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type201879%_
                                              'gxc#!abort::t))))
                                      (if _%$e201883%_
                                          _%$e201883%_
                                          (let ((_%$e201886%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type201879%_
                                                    _%type201867%_))))
                                            (if _%$e201886%_
                                                _%$e201886%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx201865%_
                                                   _%type201867%_
                                                   _%expr-type201879%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self201291%_ _%stx201292%_)
        (let* ((_%__stx205777205778%_ _%stx201292%_)
               (_%g201297201407%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205777205778%_)))))
          (let ((_%__kont205779205780%_
                 (lambda (_%L201839%_ _%L201840%_ _%L201841%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L201841%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self201291%_ _%L201840%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self201291%_ _%L201839%_)))))
                (_%__kont205781205782%_
                 (lambda (_%L201665%_ _%L201666%_ _%L201667%_ _%L201668%_)
                   (let ((_%$e201700%_
                          (let ((__tmp206130
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L201668%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp206130))))
                     (if _%$e201700%_
                         ((lambda (_%pred-type201703%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type201703%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type201703%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test201708%_
                                        (let ((__tmp206131
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L201668%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L201667%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp206131
                                           _%stx201292%_
                                           _%self201291%_)))
                                       (_%K201712%_
                                        (let ((__tmp206132
                                               (lambda ()
                                                 (let ((__tmp206135
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self201291%_
                                                             _%L201666%_))))
                                                       (__tmp206133
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L201667%_))
                            (let ((__tmp206134
                                   (##structure-ref
                                    _%pred-type201703%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx201292%_
                               __tmp206134)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp206135
                                                    gxc#current-compile-path-type
                                                    __tmp206133)))))
                                          (declare (not safe))
                                          (__make-promise __tmp206132)))
                                       (_%E201715%_
                                        (let ((__tmp206136
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self201291%_
                                                    _%L201665%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp206136)))
                                       (_%__stx205755205756%_ _%test201708%_)
                                       (_%g201719201733%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx205755205756%_)))))
                                  (let ((_%__kont205757205758%_
                                         (lambda (_%L201761%_ _%L201762%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L201761%_))
                                               (force _%K201712%_)
                                               (force _%E201715%_))))
                                        (_%__kont205759205760%_
                                         (lambda ()
                                           (let ((__tmp206137
                                                  (cons '%#if
                                                        (cons _%test201708%_
                                                              (cons (force _%K201712%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E201715%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp206137
                                              _%stx201292%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx205755205756%_))
                                        (let ((_%e201723201745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx205755205756%_))))
                                          (let ((_%tl201725201750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201723201745%_)))
                                                (_%hd201724201748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201723201745%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl201725201750%_))
                                                (let ((_%e201726201753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl201725201750%_))))
                                                  (let ((_%tl201728201758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201726201753%_)))
                                                        (_%hd201727201756%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201726201753%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201728201758%_))
                                                        (_%__kont205757205758%_
                                                         _%hd201727201756%_
                                                         _%hd201724201748%_)
                                                        (_%__kont205759205760%_))))
                                                (_%__kont205759205760%_))))
                                        (_%__kont205759205760%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self201291%_
                                   _%stx201292%_))))
                          _%$e201700%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self201291%_
                            _%stx201292%_))))))
                (_%__kont205783205784%_
                 (lambda (_%L201541%_ _%L201542%_ _%L201543%_ _%L201544%_)
                   (gxc#optimize-if%
                    _%self201291%_
                    (let ((__tmp206138
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L201543%_
                                       (cons _%L201541%_
                                             (cons _%L201542%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp206138 _%stx201292%_)))))
                (_%__kont205785205786%_
                 (lambda (_%L201444%_ _%L201445%_ _%L201446%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self201291%_ _%stx201292%_)))))
            (let ((_%__match205984205985%_
                   (lambda (_%e201361201469%_
                            _%hd201362201472%_
                            _%tl201363201474%_
                            _%e201364201477%_
                            _%hd201365201480%_
                            _%tl201366201482%_
                            _%e201367201485%_
                            _%hd201368201488%_
                            _%tl201369201490%_
                            _%e201370201493%_
                            _%hd201371201496%_
                            _%tl201372201498%_
                            _%e201373201501%_
                            _%hd201374201504%_
                            _%tl201375201506%_
                            _%e201376201509%_
                            _%hd201377201512%_
                            _%tl201378201514%_
                            _%e201379201517%_
                            _%hd201380201520%_
                            _%tl201381201522%_
                            _%e201382201525%_
                            _%hd201383201528%_
                            _%tl201384201530%_
                            _%e201385201533%_
                            _%hd201386201536%_
                            _%tl201387201538%_)
                     (let ((_%L201541%_ _%hd201386201536%_)
                           (_%L201542%_ _%hd201383201528%_)
                           (_%L201543%_ _%hd201380201520%_)
                           (_%L201544%_ _%hd201377201512%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L201544%_ 'not))
                           (_%__kont205783205784%_
                            _%L201541%_
                            _%L201542%_
                            _%L201543%_
                            _%L201544%_)
                           (_%__kont205785205786%_
                            _%hd201386201536%_
                            _%hd201383201528%_
                            _%hd201365201480%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205777205778%_))
                  (let ((_%e201302201791%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205777205778%_))))
                    (let ((_%tl201304201796%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201302201791%_)))
                          (_%hd201303201794%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201302201791%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201304201796%_))
                          (let ((_%e201305201799%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201304201796%_))))
                            (let ((_%tl201307201804%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201305201799%_)))
                                  (_%hd201306201802%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201305201799%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd201306201802%_))
                                  (let ((_%e201308201807%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd201306201802%_))))
                                    (let ((_%tl201310201812%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201308201807%_)))
                                          (_%hd201309201810%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201308201807%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd201309201810%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd201309201810%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201310201812%_))
                                                  (let ((_%e201311201815%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201310201812%_))))
                                                    (let ((_%tl201313201820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201311201815%_)))
                                                          (_%hd201312201818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201311201815%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201313201820%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl201307201804%_))
                      (let ((_%e201314201823%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201307201804%_))))
                        (let ((_%tl201316201828%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201314201823%_)))
                              (_%hd201315201826%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201314201823%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201316201828%_))
                              (let ((_%e201317201831%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201316201828%_))))
                                (let ((_%tl201319201836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201317201831%_)))
                                      (_%hd201318201834%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201317201831%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201319201836%_))
                                      (_%__kont205779205780%_
                                       _%hd201318201834%_
                                       _%hd201315201826%_
                                       _%hd201312201818%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g201297201407%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g201297201407%_)))))
                      (let () (declare (not safe)) (_%g201297201407%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201307201804%_))
                      (let ((_%e201397201428%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201307201804%_))))
                        (let ((_%tl201399201433%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201397201428%_)))
                              (_%hd201398201431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201397201428%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201399201433%_))
                              (let ((_%e201400201436%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201399201433%_))))
                                (let ((_%tl201402201441%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201400201436%_)))
                                      (_%hd201401201439%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201400201436%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201402201441%_))
                                      (_%__kont205785205786%_
                                       _%hd201401201439%_
                                       _%hd201398201431%_
                                       _%hd201306201802%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g201297201407%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g201297201407%_)))))
                      (let () (declare (not safe)) (_%g201297201407%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201307201804%_))
                                                      (let ((_%e201397201428%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl201307201804%_))))
                (let ((_%tl201399201433%_
                       (let () (declare (not safe)) (##cdr _%e201397201428%_)))
                      (_%hd201398201431%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201397201428%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201399201433%_))
                      (let ((_%e201400201436%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201399201433%_))))
                        (let ((_%tl201402201441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201400201436%_)))
                              (_%hd201401201439%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201400201436%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201402201441%_))
                              (_%__kont205785205786%_
                               _%hd201401201439%_
                               _%hd201398201431%_
                               _%hd201306201802%_)
                              (let ()
                                (declare (not safe))
                                (_%g201297201407%_)))))
                      (let () (declare (not safe)) (_%g201297201407%_)))))
              (let () (declare (not safe)) (_%g201297201407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd201309201810%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201310201812%_))
                                                      (let ((_%e201333201601%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl201310201812%_))))
                (let ((_%tl201335201606%_
                       (let () (declare (not safe)) (##cdr _%e201333201601%_)))
                      (_%hd201334201604%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201333201601%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd201334201604%_))
                      (let ((_%e201336201609%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd201334201604%_))))
                        (let ((_%tl201338201614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201336201609%_)))
                              (_%hd201337201612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201336201609%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd201337201612%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd201337201612%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201338201614%_))
                                      (let ((_%e201339201617%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201338201614%_))))
                                        (let ((_%tl201341201622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201339201617%_)))
                                              (_%hd201340201620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201339201617%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201341201622%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201335201606%_))
                                                  (let ((_%e201342201625%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201335201606%_))))
                                                    (let ((_%tl201344201630%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201342201625%_)))
                                                          (_%hd201343201628%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201342201625%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd201343201628%_))
                                                          (let ((_%e201345201633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd201343201628%_))))
                    (let ((_%tl201347201638%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201345201633%_)))
                          (_%hd201346201636%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201345201633%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd201346201636%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd201346201636%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201347201638%_))
                                  (let ((_%e201348201641%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201347201638%_))))
                                    (let ((_%tl201350201646%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201348201641%_)))
                                          (_%hd201349201644%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201348201641%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201350201646%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201344201630%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201307201804%_))
                                                  (let ((_%e201351201649%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201307201804%_))))
                                                    (let ((_%tl201353201654%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201351201649%_)))
                                                          (_%hd201352201652%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201351201649%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201353201654%_))
                                                          (let ((_%e201354201657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201353201654%_))))
                    (let ((_%tl201356201662%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201354201657%_)))
                          (_%hd201355201660%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201354201657%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201356201662%_))
                          (_%__kont205781205782%_
                           _%hd201355201660%_
                           _%hd201352201652%_
                           _%hd201349201644%_
                           _%hd201340201620%_)
                          (let () (declare (not safe)) (_%g201297201407%_)))))
                  (let () (declare (not safe)) (_%g201297201407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201297201407%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201307201804%_))
                                                  (let ((_%e201397201428%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201307201804%_))))
                                                    (let ((_%tl201399201433%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201397201428%_)))
                                                          (_%hd201398201431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201397201428%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201399201433%_))
                                                          (let ((_%e201400201436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201399201433%_))))
                    (let ((_%tl201402201441%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201400201436%_)))
                          (_%hd201401201439%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201400201436%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201402201441%_))
                          (_%__kont205785205786%_
                           _%hd201401201439%_
                           _%hd201398201431%_
                           _%hd201306201802%_)
                          (let () (declare (not safe)) (_%g201297201407%_)))))
                  (let () (declare (not safe)) (_%g201297201407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201297201407%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201344201630%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201307201804%_))
                                                  (let ((_%e201382201525%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201307201804%_))))
                                                    (let ((_%tl201384201530%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201382201525%_)))
                                                          (_%hd201383201528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201382201525%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201384201530%_))
                                                          (let ((_%e201385201533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201384201530%_))))
                    (let ((_%tl201387201538%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201385201533%_)))
                          (_%hd201386201536%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201385201533%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201387201538%_))
                          (_%__match205984205985%_
                           _%e201302201791%_
                           _%hd201303201794%_
                           _%tl201304201796%_
                           _%e201305201799%_
                           _%hd201306201802%_
                           _%tl201307201804%_
                           _%e201308201807%_
                           _%hd201309201810%_
                           _%tl201310201812%_
                           _%e201333201601%_
                           _%hd201334201604%_
                           _%tl201335201606%_
                           _%e201336201609%_
                           _%hd201337201612%_
                           _%tl201338201614%_
                           _%e201339201617%_
                           _%hd201340201620%_
                           _%tl201341201622%_
                           _%e201342201625%_
                           _%hd201343201628%_
                           _%tl201344201630%_
                           _%e201382201525%_
                           _%hd201383201528%_
                           _%tl201384201530%_
                           _%e201385201533%_
                           _%hd201386201536%_
                           _%tl201387201538%_)
                          (let () (declare (not safe)) (_%g201297201407%_)))))
                  (let () (declare (not safe)) (_%g201297201407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201297201407%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201307201804%_))
                                                  (let ((_%e201397201428%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201307201804%_))))
                                                    (let ((_%tl201399201433%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201397201428%_)))
                                                          (_%hd201398201431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201397201428%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201399201433%_))
                                                          (let ((_%e201400201436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201399201433%_))))
                    (let ((_%tl201402201441%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201400201436%_)))
                          (_%hd201401201439%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201400201436%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201402201441%_))
                          (_%__kont205785205786%_
                           _%hd201401201439%_
                           _%hd201398201431%_
                           _%hd201306201802%_)
                          (let () (declare (not safe)) (_%g201297201407%_)))))
                  (let () (declare (not safe)) (_%g201297201407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201297201407%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201344201630%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201307201804%_))
                                          (let ((_%e201382201525%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201307201804%_))))
                                            (let ((_%tl201384201530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201382201525%_)))
                                                  (_%hd201383201528%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201382201525%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201384201530%_))
                                                  (let ((_%e201385201533%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201384201530%_))))
                                                    (let ((_%tl201387201538%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201385201533%_)))
                                                          (_%hd201386201536%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201385201533%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201387201538%_))
                                                          (_%__match205984205985%_
                                                           _%e201302201791%_
                                                           _%hd201303201794%_
                                                           _%tl201304201796%_
                                                           _%e201305201799%_
                                                           _%hd201306201802%_
                                                           _%tl201307201804%_
                                                           _%e201308201807%_
                                                           _%hd201309201810%_
                                                           _%tl201310201812%_
                                                           _%e201333201601%_
                                                           _%hd201334201604%_
                                                           _%tl201335201606%_
                                                           _%e201336201609%_
                                                           _%hd201337201612%_
                                                           _%tl201338201614%_
                                                           _%e201339201617%_
                                                           _%hd201340201620%_
                                                           _%tl201341201622%_
                                                           _%e201342201625%_
                                                           _%hd201343201628%_
                                                           _%tl201344201630%_
                                                           _%e201382201525%_
                                                           _%hd201383201528%_
                                                           _%tl201384201530%_
                                                           _%e201385201533%_
                                                           _%hd201386201536%_
                                                           _%tl201387201538%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201297201407%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201297201407%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201297201407%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201307201804%_))
                                          (let ((_%e201397201428%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201307201804%_))))
                                            (let ((_%tl201399201433%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201397201428%_)))
                                                  (_%hd201398201431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201397201428%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201399201433%_))
                                                  (let ((_%e201400201436%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201399201433%_))))
                                                    (let ((_%tl201402201441%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201400201436%_)))
                                                          (_%hd201401201439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201400201436%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201402201441%_))
                                                          (_%__kont205785205786%_
                                                           _%hd201401201439%_
                                                           _%hd201398201431%_
                                                           _%hd201306201802%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201297201407%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201297201407%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201297201407%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201344201630%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201307201804%_))
                                      (let ((_%e201382201525%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201307201804%_))))
                                        (let ((_%tl201384201530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201382201525%_)))
                                              (_%hd201383201528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201382201525%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201384201530%_))
                                              (let ((_%e201385201533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201384201530%_))))
                                                (let ((_%tl201387201538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201385201533%_)))
                                                      (_%hd201386201536%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201385201533%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201387201538%_))
                                                      (_%__match205984205985%_
                                                       _%e201302201791%_
                                                       _%hd201303201794%_
                                                       _%tl201304201796%_
                                                       _%e201305201799%_
                                                       _%hd201306201802%_
                                                       _%tl201307201804%_
                                                       _%e201308201807%_
                                                       _%hd201309201810%_
                                                       _%tl201310201812%_
                                                       _%e201333201601%_
                                                       _%hd201334201604%_
                                                       _%tl201335201606%_
                                                       _%e201336201609%_
                                                       _%hd201337201612%_
                                                       _%tl201338201614%_
                                                       _%e201339201617%_
                                                       _%hd201340201620%_
                                                       _%tl201341201622%_
                                                       _%e201342201625%_
                                                       _%hd201343201628%_
                                                       _%tl201344201630%_
                                                       _%e201382201525%_
                                                       _%hd201383201528%_
                                                       _%tl201384201530%_
                                                       _%e201385201533%_
                                                       _%hd201386201536%_
                                                       _%tl201387201538%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201297201407%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201297201407%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201297201407%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201307201804%_))
                                      (let ((_%e201397201428%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201307201804%_))))
                                        (let ((_%tl201399201433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201397201428%_)))
                                              (_%hd201398201431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201397201428%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201399201433%_))
                                              (let ((_%e201400201436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201399201433%_))))
                                                (let ((_%tl201402201441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201400201436%_)))
                                                      (_%hd201401201439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201400201436%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201402201441%_))
                                                      (_%__kont205785205786%_
                                                       _%hd201401201439%_
                                                       _%hd201398201431%_
                                                       _%hd201306201802%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201297201407%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201297201407%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201297201407%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201344201630%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201307201804%_))
                                  (let ((_%e201382201525%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201307201804%_))))
                                    (let ((_%tl201384201530%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201382201525%_)))
                                          (_%hd201383201528%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201382201525%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201384201530%_))
                                          (let ((_%e201385201533%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201384201530%_))))
                                            (let ((_%tl201387201538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201385201533%_)))
                                                  (_%hd201386201536%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201385201533%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201387201538%_))
                                                  (_%__match205984205985%_
                                                   _%e201302201791%_
                                                   _%hd201303201794%_
                                                   _%tl201304201796%_
                                                   _%e201305201799%_
                                                   _%hd201306201802%_
                                                   _%tl201307201804%_
                                                   _%e201308201807%_
                                                   _%hd201309201810%_
                                                   _%tl201310201812%_
                                                   _%e201333201601%_
                                                   _%hd201334201604%_
                                                   _%tl201335201606%_
                                                   _%e201336201609%_
                                                   _%hd201337201612%_
                                                   _%tl201338201614%_
                                                   _%e201339201617%_
                                                   _%hd201340201620%_
                                                   _%tl201341201622%_
                                                   _%e201342201625%_
                                                   _%hd201343201628%_
                                                   _%tl201344201630%_
                                                   _%e201382201525%_
                                                   _%hd201383201528%_
                                                   _%tl201384201530%_
                                                   _%e201385201533%_
                                                   _%hd201386201536%_
                                                   _%tl201387201538%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201297201407%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201297201407%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201297201407%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201307201804%_))
                                  (let ((_%e201397201428%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201307201804%_))))
                                    (let ((_%tl201399201433%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201397201428%_)))
                                          (_%hd201398201431%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201397201428%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201399201433%_))
                                          (let ((_%e201400201436%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201399201433%_))))
                                            (let ((_%tl201402201441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201400201436%_)))
                                                  (_%hd201401201439%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201400201436%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201402201441%_))
                                                  (_%__kont205785205786%_
                                                   _%hd201401201439%_
                                                   _%hd201398201431%_
                                                   _%hd201306201802%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201297201407%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201297201407%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201297201407%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201344201630%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201307201804%_))
                          (let ((_%e201382201525%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201307201804%_))))
                            (let ((_%tl201384201530%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201382201525%_)))
                                  (_%hd201383201528%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201382201525%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201384201530%_))
                                  (let ((_%e201385201533%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201384201530%_))))
                                    (let ((_%tl201387201538%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201385201533%_)))
                                          (_%hd201386201536%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201385201533%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201387201538%_))
                                          (_%__match205984205985%_
                                           _%e201302201791%_
                                           _%hd201303201794%_
                                           _%tl201304201796%_
                                           _%e201305201799%_
                                           _%hd201306201802%_
                                           _%tl201307201804%_
                                           _%e201308201807%_
                                           _%hd201309201810%_
                                           _%tl201310201812%_
                                           _%e201333201601%_
                                           _%hd201334201604%_
                                           _%tl201335201606%_
                                           _%e201336201609%_
                                           _%hd201337201612%_
                                           _%tl201338201614%_
                                           _%e201339201617%_
                                           _%hd201340201620%_
                                           _%tl201341201622%_
                                           _%e201342201625%_
                                           _%hd201343201628%_
                                           _%tl201344201630%_
                                           _%e201382201525%_
                                           _%hd201383201528%_
                                           _%tl201384201530%_
                                           _%e201385201533%_
                                           _%hd201386201536%_
                                           _%tl201387201538%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g201297201407%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201297201407%_)))))
                          (let () (declare (not safe)) (_%g201297201407%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201307201804%_))
                          (let ((_%e201397201428%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201307201804%_))))
                            (let ((_%tl201399201433%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201397201428%_)))
                                  (_%hd201398201431%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201397201428%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201399201433%_))
                                  (let ((_%e201400201436%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201399201433%_))))
                                    (let ((_%tl201402201441%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201400201436%_)))
                                          (_%hd201401201439%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201400201436%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201402201441%_))
                                          (_%__kont205785205786%_
                                           _%hd201401201439%_
                                           _%hd201398201431%_
                                           _%hd201306201802%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g201297201407%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201297201407%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g201297201407%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201307201804%_))
                                                      (let ((_%e201397201428%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl201307201804%_))))
                (let ((_%tl201399201433%_
                       (let () (declare (not safe)) (##cdr _%e201397201428%_)))
                      (_%hd201398201431%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201397201428%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201399201433%_))
                      (let ((_%e201400201436%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201399201433%_))))
                        (let ((_%tl201402201441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201400201436%_)))
                              (_%hd201401201439%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201400201436%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201402201441%_))
                              (_%__kont205785205786%_
                               _%hd201401201439%_
                               _%hd201398201431%_
                               _%hd201306201802%_)
                              (let ()
                                (declare (not safe))
                                (_%g201297201407%_)))))
                      (let () (declare (not safe)) (_%g201297201407%_)))))
              (let () (declare (not safe)) (_%g201297201407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201307201804%_))
                                                  (let ((_%e201397201428%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201307201804%_))))
                                                    (let ((_%tl201399201433%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201397201428%_)))
                                                          (_%hd201398201431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201397201428%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201399201433%_))
                                                          (let ((_%e201400201436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201399201433%_))))
                    (let ((_%tl201402201441%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201400201436%_)))
                          (_%hd201401201439%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201400201436%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201402201441%_))
                          (_%__kont205785205786%_
                           _%hd201401201439%_
                           _%hd201398201431%_
                           _%hd201306201802%_)
                          (let () (declare (not safe)) (_%g201297201407%_)))))
                  (let () (declare (not safe)) (_%g201297201407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201297201407%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201307201804%_))
                                          (let ((_%e201397201428%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201307201804%_))))
                                            (let ((_%tl201399201433%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201397201428%_)))
                                                  (_%hd201398201431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201397201428%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201399201433%_))
                                                  (let ((_%e201400201436%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201399201433%_))))
                                                    (let ((_%tl201402201441%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201400201436%_)))
                                                          (_%hd201401201439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201400201436%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201402201441%_))
                                                          (_%__kont205785205786%_
                                                           _%hd201401201439%_
                                                           _%hd201398201431%_
                                                           _%hd201306201802%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201297201407%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201297201407%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201297201407%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201307201804%_))
                                      (let ((_%e201397201428%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201307201804%_))))
                                        (let ((_%tl201399201433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201397201428%_)))
                                              (_%hd201398201431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201397201428%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201399201433%_))
                                              (let ((_%e201400201436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201399201433%_))))
                                                (let ((_%tl201402201441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201400201436%_)))
                                                      (_%hd201401201439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201400201436%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201402201441%_))
                                                      (_%__kont205785205786%_
                                                       _%hd201401201439%_
                                                       _%hd201398201431%_
                                                       _%hd201306201802%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201297201407%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201297201407%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201297201407%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201307201804%_))
                                  (let ((_%e201397201428%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201307201804%_))))
                                    (let ((_%tl201399201433%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201397201428%_)))
                                          (_%hd201398201431%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201397201428%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201399201433%_))
                                          (let ((_%e201400201436%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201399201433%_))))
                                            (let ((_%tl201402201441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201400201436%_)))
                                                  (_%hd201401201439%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201400201436%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201402201441%_))
                                                  (_%__kont205785205786%_
                                                   _%hd201401201439%_
                                                   _%hd201398201431%_
                                                   _%hd201306201802%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201297201407%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201297201407%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201297201407%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201307201804%_))
                          (let ((_%e201397201428%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201307201804%_))))
                            (let ((_%tl201399201433%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201397201428%_)))
                                  (_%hd201398201431%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201397201428%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201399201433%_))
                                  (let ((_%e201400201436%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201399201433%_))))
                                    (let ((_%tl201402201441%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201400201436%_)))
                                          (_%hd201401201439%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201400201436%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201402201441%_))
                                          (_%__kont205785205786%_
                                           _%hd201401201439%_
                                           _%hd201398201431%_
                                           _%hd201306201802%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g201297201407%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201297201407%_)))))
                          (let () (declare (not safe)) (_%g201297201407%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl201307201804%_))
                  (let ((_%e201397201428%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201307201804%_))))
                    (let ((_%tl201399201433%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201397201428%_)))
                          (_%hd201398201431%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201397201428%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201399201433%_))
                          (let ((_%e201400201436%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201399201433%_))))
                            (let ((_%tl201402201441%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201400201436%_)))
                                  (_%hd201401201439%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201400201436%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201402201441%_))
                                  (_%__kont205785205786%_
                                   _%hd201401201439%_
                                   _%hd201398201431%_
                                   _%hd201306201802%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g201297201407%_)))))
                          (let () (declare (not safe)) (_%g201297201407%_)))))
                  (let () (declare (not safe)) (_%g201297201407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201307201804%_))
                                                      (let ((_%e201397201428%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl201307201804%_))))
                (let ((_%tl201399201433%_
                       (let () (declare (not safe)) (##cdr _%e201397201428%_)))
                      (_%hd201398201431%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201397201428%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201399201433%_))
                      (let ((_%e201400201436%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201399201433%_))))
                        (let ((_%tl201402201441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201400201436%_)))
                              (_%hd201401201439%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201400201436%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201402201441%_))
                              (_%__kont205785205786%_
                               _%hd201401201439%_
                               _%hd201398201431%_
                               _%hd201306201802%_)
                              (let ()
                                (declare (not safe))
                                (_%g201297201407%_)))))
                      (let () (declare (not safe)) (_%g201297201407%_)))))
              (let () (declare (not safe)) (_%g201297201407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201307201804%_))
                                              (let ((_%e201397201428%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201307201804%_))))
                                                (let ((_%tl201399201433%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201397201428%_)))
                                                      (_%hd201398201431%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201397201428%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201399201433%_))
                                                      (let ((_%e201400201436%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl201399201433%_))))
                (let ((_%tl201402201441%_
                       (let () (declare (not safe)) (##cdr _%e201400201436%_)))
                      (_%hd201401201439%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201400201436%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201402201441%_))
                      (_%__kont205785205786%_
                       _%hd201401201439%_
                       _%hd201398201431%_
                       _%hd201306201802%_)
                      (let () (declare (not safe)) (_%g201297201407%_)))))
              (let () (declare (not safe)) (_%g201297201407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201297201407%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201307201804%_))
                                      (let ((_%e201397201428%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201307201804%_))))
                                        (let ((_%tl201399201433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201397201428%_)))
                                              (_%hd201398201431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201397201428%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201399201433%_))
                                              (let ((_%e201400201436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201399201433%_))))
                                                (let ((_%tl201402201441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201400201436%_)))
                                                      (_%hd201401201439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201400201436%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201402201441%_))
                                                      (_%__kont205785205786%_
                                                       _%hd201401201439%_
                                                       _%hd201398201431%_
                                                       _%hd201306201802%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201297201407%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201297201407%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201297201407%_))))))
                          (let () (declare (not safe)) (_%g201297201407%_)))))
                  (let () (declare (not safe)) (_%g201297201407%_))))))))))
