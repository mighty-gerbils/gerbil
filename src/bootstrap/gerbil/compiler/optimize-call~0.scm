(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1756715359)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp206024 (list gxc#::basic-xform::t))
            (__tmp206023 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp206024
         '()
         __tmp206023
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args205301%_
        (apply make-instance gxc#::optimize-call::t _%$args205301%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp206025
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
        (__make-atomic-promise __tmp206025)))
    (define gxc#apply-optimize-call
      (lambda (_%stx205293%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self205296%_
                (let ((__obj206015
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj206015))
               (__tmp206026
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205296%_ _%stx205293%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206026
           gxc#current-compile-method
           _%self205296%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp206028 (list gxc#::void::t))
            (__tmp206027 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp206028
         '()
         __tmp206027
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args205290%_
        (apply make-instance gxc#::check-return-type::t _%$args205290%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp206029
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
        (__make-atomic-promise __tmp206029)))
    (define gxc#apply-check-return-type
      (lambda (_%stx205282%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self205285%_
                (let ((__obj206017
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj206017))
               (__tmp206030
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205285%_ _%stx205282%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206030
           gxc#current-compile-method
           _%self205285%_))))
    (define gxc#optimize-call%
      (lambda (_%self204883%_ _%stx204884%_)
        (let* ((_%__stx205370205371%_ _%stx204884%_)
               (_%g204887204933%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205370205371%_)))))
          (let ((_%__kont205372205373%_
                 (lambda (_%L205076%_ _%L205077%_)
                   (let* ((_%rator-id205097%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L205077%_)))
                          (_%rator-type205099%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id205097%_))))
                     (if (or (not _%rator-type205099%_)
                             (eq? (##structure-ref
                                   _%rator-type205099%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self204883%_ _%stx204884%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type205099%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp206031
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type205099%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id205097%_
                                  '" => "
                                  _%rator-type205099%_
                                  '" "
                                  __tmp206031))
                               (let* ((_%optimized205114%_
                                       (let ((__method206018
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type205099%_
                                                 'optimize-call))))
                                         (if __method206018
                                             (let ((__tmp206032
                                                    (let ((__tmp206033
                                                           (lambda (_%g205106205109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g205107205111%_)
                     (cons _%g205106205109%_ _%g205107205111%_))))
              (declare (not safe))
              (__foldr1 __tmp206033 '() _%L205076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method206018
                                                _%rator-type205099%_
                                                _%self204883%_
                                                _%stx204884%_
                                                __tmp206032))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type205099%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx205318205319%_
                                       _%optimized205114%_)
                                      (_%g205117205146%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx205318205319%_)))))
                                 (let ((_%__kont205320205321%_
                                        (lambda (_%L205214%_ _%L205215%_)
                                          (let* ((_%optimized-rator-id205242%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L205215%_)))
                                                 (_%rator-type205247%_
                                                  (let ((_%$e205244%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id205242%_))))
                                                    (if _%$e205244%_
                                                        _%$e205244%_
                                                        _%rator-type205099%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type205247%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id205242%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type205247%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type205247%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized205114%_
                                                (let ((__tmp206034
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L205215%_ '()))
                           (let ((__tmp206035
                                  (lambda (_%g205255205258%_ _%g205256205260%_)
                                    (cons _%g205255205258%_
                                          _%g205256205260%_))))
                             (declare (not safe))
                             (__foldr1 __tmp206035 '() _%L205214%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp206034
                                                   _%stx204884%_))))))
                                       (_%__kont205324205325%_
                                        (lambda () _%optimized205114%_)))
                                   (let ((_%__match205367205368%_
                                          (lambda (_%e205121205158%_
                                                   _%hd205122205161%_
                                                   _%tl205123205163%_
                                                   _%e205124205166%_
                                                   _%hd205125205169%_
                                                   _%tl205126205171%_
                                                   _%e205127205174%_
                                                   _%hd205128205177%_
                                                   _%tl205129205179%_
                                                   _%e205130205182%_
                                                   _%hd205131205185%_
                                                   _%tl205132205187%_
                                                   _%__splice205322205323%_
                                                   _%target205133205190%_
                                                   _%tl205135205192%_)
                                            (letrec ((_%loop205136205195%_
                                                      (lambda (_%hd205134205198%_
                                                               _%arg205140205200%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd205134205198%_))
                                                            (let ((_%e205137205203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd205134205198%_))))
                      (let ((_%lp-tl205139205208%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205137205203%_)))
                            (_%lp-hd205138205206%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205137205203%_))))
                        (_%loop205136205195%_
                         _%lp-tl205139205208%_
                         (cons _%lp-hd205138205206%_ _%arg205140205200%_))))
                    (let ((_%arg205141205211%_ (reverse _%arg205140205200%_)))
                      (_%__kont205320205321%_
                       _%arg205141205211%_
                       _%hd205131205185%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop205136205195%_
                                               _%target205133205190%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx205318205319%_))
                                         (let ((_%e205121205158%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx205318205319%_))))
                                           (let ((_%tl205123205163%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e205121205158%_)))
                                                 (_%hd205122205161%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e205121205158%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd205122205161%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd205122205161%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl205123205163%_))
                                                         (let ((_%e205124205166%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl205123205163%_))))
                   (let ((_%tl205126205171%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e205124205166%_)))
                         (_%hd205125205169%_
                          (let ()
                            (declare (not safe))
                            (##car _%e205124205166%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd205125205169%_))
                         (let ((_%e205127205174%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd205125205169%_))))
                           (let ((_%tl205129205179%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e205127205174%_)))
                                 (_%hd205128205177%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e205127205174%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd205128205177%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd205128205177%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl205129205179%_))
                                         (let ((_%e205130205182%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl205129205179%_))))
                                           (let ((_%tl205132205187%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e205130205182%_)))
                                                 (_%hd205131205185%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e205130205182%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl205132205187%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl205126205171%_))
                                                     (let ((_%__splice205322205323%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl205126205171%_
                                                               '0))))
                                                       (let ((_%tl205135205192%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice205322205323%_ '1)))
                     (_%target205133205190%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice205322205323%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl205135205192%_))
                     (_%__match205367205368%_
                      _%e205121205158%_
                      _%hd205122205161%_
                      _%tl205123205163%_
                      _%e205124205166%_
                      _%hd205125205169%_
                      _%tl205126205171%_
                      _%e205127205174%_
                      _%hd205128205177%_
                      _%tl205129205179%_
                      _%e205130205182%_
                      _%hd205131205185%_
                      _%tl205132205187%_
                      _%__splice205322205323%_
                      _%target205133205190%_
                      _%tl205135205192%_)
                     (_%__kont205324205325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205324205325%_))
                                                 (_%__kont205324205325%_))))
                                         (_%__kont205324205325%_))
                                     (_%__kont205324205325%_))
                                 (_%__kont205324205325%_))))
                         (_%__kont205324205325%_))))
                 (_%__kont205324205325%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205324205325%_))
                                                 (_%__kont205324205325%_))))
                                         (_%__kont205324205325%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type205099%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type205099%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp206036
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L205077%_
                                                                '()))
                                                    (map (lambda (_%g205266205268%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self204883%_
                                                              _%g205266205268%_)))
                                                         (let ((__tmp206037
                                                                (lambda (_%g205270205273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g205271205275%_)
                          (cons _%g205270205273%_ _%g205271205275%_))))
                   (declare (not safe))
                   (__foldr1 __tmp206037 '() _%L205076%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp206036
                                    _%stx204884%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx204884%_
                                    _%rator-type205099%_))))))))
                (_%__kont205376205377%_
                 (lambda (_%L204978%_ _%L204979%_)
                   (let ((_%rator-type204996%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L204979%_))))
                     (if (and _%rator-type204996%_
                              (eq? (##structure-ref
                                    _%rator-type204996%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type204996%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type204996%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type204996%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp206038
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self204883%_
                                               _%L204979%_))
                                            (map (lambda (_%g204998205000%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self204883%_
                                                      _%g204998205000%_)))
                                                 (let ((__tmp206039
                                                        (lambda (_%g205002205005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g205003205007%_)
                  (cons _%g205002205005%_ _%g205003205007%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp206039
                                                    '()
                                                    _%L204978%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp206038 _%stx204884%_))
                         (if (or (not _%rator-type204996%_)
                                 (let ((__tmp206040
                                        (##structure-ref
                                         _%rator-type204996%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp206040 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self204883%_ _%stx204884%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx204884%_
                                _%rator-type204996%_))))))))
            (let* ((_%__match205437205438%_
                    (lambda (_%e204914204938%_
                             _%hd204915204941%_
                             _%tl204916204943%_
                             _%e204917204946%_
                             _%hd204918204949%_
                             _%tl204919204951%_
                             _%__splice205378205379%_
                             _%target204920204954%_
                             _%tl204922204956%_)
                      (letrec ((_%loop204923204959%_
                                (lambda (_%hd204921204962%_
                                         _%rand204927204964%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204921204962%_))
                                      (let ((_%e204924204967%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204921204962%_))))
                                        (let ((_%lp-tl204926204972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204924204967%_)))
                                              (_%lp-hd204925204970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204924204967%_))))
                                          (_%loop204923204959%_
                                           _%lp-tl204926204972%_
                                           (cons _%lp-hd204925204970%_
                                                 _%rand204927204964%_))))
                                      (let ((_%rand204928204975%_
                                             (reverse _%rand204927204964%_)))
                                        (_%__kont205376205377%_
                                         _%rand204928204975%_
                                         _%hd204918204949%_))))))
                        (_%loop204923204959%_ _%target204920204954%_ '()))))
                   (_%__match205417205418%_
                    (lambda (_%e204891205020%_
                             _%hd204892205023%_
                             _%tl204893205025%_
                             _%e204894205028%_
                             _%hd204895205031%_
                             _%tl204896205033%_
                             _%e204897205036%_
                             _%hd204898205039%_
                             _%tl204899205041%_
                             _%e204900205044%_
                             _%hd204901205047%_
                             _%tl204902205049%_
                             _%__splice205374205375%_
                             _%target204903205052%_
                             _%tl204905205054%_)
                      (letrec ((_%loop204906205057%_
                                (lambda (_%hd204904205060%_
                                         _%rand204910205062%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204904205060%_))
                                      (let ((_%e204907205065%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204904205060%_))))
                                        (let ((_%lp-tl204909205070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204907205065%_)))
                                              (_%lp-hd204908205068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204907205065%_))))
                                          (_%loop204906205057%_
                                           _%lp-tl204909205070%_
                                           (cons _%lp-hd204908205068%_
                                                 _%rand204910205062%_))))
                                      (let ((_%rand204911205073%_
                                             (reverse _%rand204910205062%_)))
                                        (_%__kont205372205373%_
                                         _%rand204911205073%_
                                         _%hd204901205047%_))))))
                        (_%loop204906205057%_ _%target204903205052%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205370205371%_))
                  (let ((_%e204891205020%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205370205371%_))))
                    (let ((_%tl204893205025%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204891205020%_)))
                          (_%hd204892205023%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204891205020%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204893205025%_))
                          (let ((_%e204894205028%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204893205025%_))))
                            (let ((_%tl204896205033%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204894205028%_)))
                                  (_%hd204895205031%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204894205028%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd204895205031%_))
                                  (let ((_%e204897205036%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204895205031%_))))
                                    (let ((_%tl204899205041%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204897205036%_)))
                                          (_%hd204898205039%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204897205036%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd204898205039%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd204898205039%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204899205041%_))
                                                  (let ((_%e204900205044%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204899205041%_))))
                                                    (let ((_%tl204902205049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204900205044%_)))
                                                          (_%hd204901205047%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204900205044%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204902205049%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl204896205033%_))
                      (let ((_%__splice205374205375%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl204896205033%_
                                '0))))
                        (let ((_%tl204905205054%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205374205375%_ '1)))
                              (_%target204903205052%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205374205375%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204905205054%_))
                              (_%__match205417205418%_
                               _%e204891205020%_
                               _%hd204892205023%_
                               _%tl204893205025%_
                               _%e204894205028%_
                               _%hd204895205031%_
                               _%tl204896205033%_
                               _%e204897205036%_
                               _%hd204898205039%_
                               _%tl204899205041%_
                               _%e204900205044%_
                               _%hd204901205047%_
                               _%tl204902205049%_
                               _%__splice205374205375%_
                               _%target204903205052%_
                               _%tl204905205054%_)
                              (let ()
                                (declare (not safe))
                                (_%g204887204933%_)))))
                      (let () (declare (not safe)) (_%g204887204933%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl204896205033%_))
                      (let ((_%__splice205378205379%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl204896205033%_
                                '0))))
                        (let ((_%tl204922204956%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205378205379%_ '1)))
                              (_%target204920204954%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205378205379%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204922204956%_))
                              (_%__match205437205438%_
                               _%e204891205020%_
                               _%hd204892205023%_
                               _%tl204893205025%_
                               _%e204894205028%_
                               _%hd204895205031%_
                               _%tl204896205033%_
                               _%__splice205378205379%_
                               _%target204920204954%_
                               _%tl204922204956%_)
                              (let ()
                                (declare (not safe))
                                (_%g204887204933%_)))))
                      (let () (declare (not safe)) (_%g204887204933%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl204896205033%_))
                                                      (let ((_%__splice205378205379%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl204896205033%_
                        '0))))
                (let ((_%tl204922204956%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice205378205379%_ '1)))
                      (_%target204920204954%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice205378205379%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204922204956%_))
                      (_%__match205437205438%_
                       _%e204891205020%_
                       _%hd204892205023%_
                       _%tl204893205025%_
                       _%e204894205028%_
                       _%hd204895205031%_
                       _%tl204896205033%_
                       _%__splice205378205379%_
                       _%target204920204954%_
                       _%tl204922204956%_)
                      (let () (declare (not safe)) (_%g204887204933%_)))))
              (let () (declare (not safe)) (_%g204887204933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl204896205033%_))
                                                  (let ((_%__splice205378205379%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl204896205033%_
                                                            '0))))
                                                    (let ((_%tl204922204956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice205378205379%_
                                                              '1)))
                                                          (_%target204920204954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice205378205379%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204922204956%_))
                                                          (_%__match205437205438%_
                                                           _%e204891205020%_
                                                           _%hd204892205023%_
                                                           _%tl204893205025%_
                                                           _%e204894205028%_
                                                           _%hd204895205031%_
                                                           _%tl204896205033%_
                                                           _%__splice205378205379%_
                                                           _%target204920204954%_
                                                           _%tl204922204956%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204887204933%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204887204933%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl204896205033%_))
                                              (let ((_%__splice205378205379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl204896205033%_
                                                        '0))))
                                                (let ((_%tl204922204956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205378205379%_
                                                          '1)))
                                                      (_%target204920204954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205378205379%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204922204956%_))
                                                      (_%__match205437205438%_
                                                       _%e204891205020%_
                                                       _%hd204892205023%_
                                                       _%tl204893205025%_
                                                       _%e204894205028%_
                                                       _%hd204895205031%_
                                                       _%tl204896205033%_
                                                       _%__splice205378205379%_
                                                       _%target204920204954%_
                                                       _%tl204922204956%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204887204933%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204887204933%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204896205033%_))
                                      (let ((_%__splice205378205379%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl204896205033%_
                                                '0))))
                                        (let ((_%tl204922204956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205378205379%_
                                                  '1)))
                                              (_%target204920204954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205378205379%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204922204956%_))
                                              (_%__match205437205438%_
                                               _%e204891205020%_
                                               _%hd204892205023%_
                                               _%tl204893205025%_
                                               _%e204894205028%_
                                               _%hd204895205031%_
                                               _%tl204896205033%_
                                               _%__splice205378205379%_
                                               _%target204920204954%_
                                               _%tl204922204956%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g204887204933%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204887204933%_))))))
                          (let () (declare (not safe)) (_%g204887204933%_)))))
                  (let () (declare (not safe)) (_%g204887204933%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self204845%_ _%ctx204846%_ _%stx204847%_ _%args204848%_)
        (let ((_%self204851%_ _%self204845%_))
          (if (let ((__method206019
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self204851%_ 'check-arguments))))
                (if __method206019
                    (let ()
                      (declare (not safe))
                      (__method206019
                       _%self204851%_
                       _%ctx204846%_
                       _%stx204847%_
                       _%args204848%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self204851%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature204861%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self204851%_ '2 '#f '#f)))
                     (_%signature204863%_ _%signature204861%_)
                     (_%$e204873%_
                      (if _%signature204863%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature204863%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e204873%_
                    ((lambda (_%unchecked204876%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked204876%_))
                           (let ((__tmp206041
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked204876%_
                                                          '()))
                                              (map (lambda (_%g204877204879%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx204846%_
                                                        _%g204877204879%_)))
                                                   _%args204848%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp206041
                              _%stx204847%_
                              _%ctx204846%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx204846%_ _%stx204847%_))))
                     _%$e204873%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx204846%_ _%stx204847%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx204846%_ _%stx204847%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass205303 __method-table205304)
        (let ((__check-arguments205305
               (let ((__tmp206042
                      (lambda ()
                        (let ((__method205306
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table205304
                                  'check-arguments
                                  '#f))))
                          (if __method205306
                              __method205306
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp206042))))
          (lambda (_%self204845%_ _%ctx204846%_ _%stx204847%_ _%args204848%_)
            (let ((_%self204851%_ _%self204845%_))
              (if ((force __check-arguments205305)
                   _%self204851%_
                   _%ctx204846%_
                   _%stx204847%_
                   _%args204848%_)
                  (let* ((_%signature204861%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self204851%_
                             '2
                             '#f
                             '#f)))
                         (_%signature204863%_ _%signature204861%_)
                         (_%$e204873%_
                          (if _%signature204863%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature204863%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e204873%_
                        ((lambda (_%unchecked204876%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked204876%_))
                               (let ((__tmp206043
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked204876%_
                                                              '()))
                                                  (map (lambda (_%g204877204879%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx204846%_
                                                            _%g204877204879%_)))
                                                       _%args204848%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp206043
                                  _%stx204847%_
                                  _%ctx204846%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx204846%_
                                  _%stx204847%_))))
                         _%$e204873%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx204846%_ _%stx204847%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx204846%_ _%stx204847%_))))))))
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
      (lambda (_%self204596%_ _%ctx204597%_ _%stx204598%_ _%args204599%_)
        (let* ((_%self204602%_ _%self204596%_)
               (_%signature204611204613%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self204602%_ '2 '#f '#f))))
          (if _%signature204611204613%_
              (let* ((_%signature204616%_ _%signature204611204613%_)
                     (_%argument-types204617204619%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature204616%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types204617204619%_
                    (let* ((_%argument-types204622%_
                            _%argument-types204617204619%_)
                           (_%argument-types204627%_
                            (let ((__tmp206044
                                   (lambda (_%t204625%_)
                                     (if _%t204625%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx204598%_
                                            _%t204625%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp206044
                               _%argument-types204622%_))))
                      (let _%loop204629%_ ((_%rest-args204631%_ _%args204599%_)
                                           (_%rest-types204632%_
                                            _%argument-types204627%_)
                                           (_%result204633%_ '#t))
                        (let* ((_%rest-args204634204642%_ _%rest-args204631%_)
                               (_%else204636204650%_
                                (lambda () _%result204633%_))
                               (_%K204638204711%_
                                (lambda (_%rest-args204653%_ _%arg204654%_)
                                  (let* ((_%rest-types204655204666%_
                                          _%rest-types204632%_)
                                         (_%E204659204670%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types204655204666%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K204662204699%_
                                           (lambda (_%rest-types204696%_
                                                    _%type204697%_)
                                             (_%loop204629%_
                                              _%rest-args204653%_
                                              _%rest-types204696%_
                                              (if (gxc#check-expression-type!
                                                   _%stx204598%_
                                                   _%arg204654%_
                                                   _%type204697%_)
                                                  _%result204633%_
                                                  '#f))))
                                          (_%K204661204690%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx204598%_
                                                _%argument-types204627%_))))
                                          (_%K204660204680%_
                                           (lambda (_%tail-type204674%_)
                                             (if (let ((__tmp206045
                                                        (lambda (_%g204675204677%_)
                                                          (gxc#check-expression-type!
                                                           _%stx204598%_
                                                           _%g204675204677%_
                                                           _%tail-type204674%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp206045
                                                    _%rest-args204653%_))
                                                 _%result204633%_
                                                 '#f))))
                                      (let ((_%try-match204657204693%_
                                             (lambda ()
                                               (if (null? _%rest-types204655204666%_)
                                                   (_%K204661204690%_)
                                                   (let ((_%tail-type204683%_
                                                          _%rest-types204655204666%_))
                                                     (_%K204660204680%_
                                                      _%tail-type204683%_))))))
                                        (if (pair? _%rest-types204655204666%_)
                                            (let ((_%tl204664204704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types204655204666%_)))
                                                  (_%hd204663204702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types204655204666%_))))
                                              (let ((_%type204707%_
                                                     _%hd204663204702%_)
                                                    (_%rest-types204709%_
                                                     _%tl204664204704%_))
                                                (_%K204662204699%_
                                                 _%rest-types204709%_
                                                 _%type204707%_)))
                                            (_%try-match204657204693%_))))))))
                          (if (pair? _%rest-args204634204642%_)
                              (let ((_%hd204639204714%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args204634204642%_)))
                                    (_%tl204640204716%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args204634204642%_))))
                                (let* ((_%arg204719%_ _%hd204639204714%_)
                                       (_%rest-args204721%_
                                        _%tl204640204716%_))
                                  (_%K204638204711%_
                                   _%rest-args204721%_
                                   _%arg204719%_)))
                              (_%else204636204650%_)))))
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
      (lambda (_%self204407%_ _%ctx204408%_ _%stx204409%_ _%args204410%_)
        (let* ((_%self204413%_ _%self204407%_)
               (_%g204423204433%_
                (lambda (_%g204424204430%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204424204430%_))))
               (_%g204422204471%_
                (lambda (_%g204424204436%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204424204436%_))
                      (let ((_%e204426204438%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204424204436%_))))
                        (let ((_%hd204427204441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204426204438%_)))
                              (_%tl204428204443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204426204438%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204428204443%_))
                              ((lambda (_%L204446%_)
                                 (let* ((_%klass204458%_
                                         (let ((__tmp206046
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self204413%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx204409%_
                                            __tmp206046)))
                                        (_%object204460%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx204408%_
                                            _%L204446%_)))
                                        (_%instance?204465%_
                                         (let ((_%$e204462%_
                                                (gxc#expression-type?
                                                 _%object204460%_
                                                 _%klass204458%_)))
                                           (if _%$e204462%_
                                               _%$e204462%_
                                               (gxc#expression-type?
                                                _%L204446%_
                                                _%klass204458%_)))))
                                   (if _%instance?204465%_
                                       (let ((__tmp206047
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object204460%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L204446%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object204460%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp206047
                                          _%stx204409%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx204408%_
                                          _%stx204409%_)))))
                               _%hd204427204441%_)
                              (_%g204423204433%_ _%g204424204436%_))))
                      (_%g204423204433%_ _%g204424204436%_)))))
          (_%g204422204471%_ _%args204410%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self204203%_ _%ctx204204%_ _%stx204205%_ _%args204206%_)
        (let* ((_%self204209%_ _%self204203%_)
               (_%g204219204229%_
                (lambda (_%g204220204226%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204220204226%_))))
               (_%g204218204282%_
                (lambda (_%g204220204232%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204220204232%_))
                      (let ((_%e204222204234%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204220204232%_))))
                        (let ((_%hd204223204237%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204222204234%_)))
                              (_%tl204224204239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204222204234%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204224204239%_))
                              ((lambda (_%L204242%_)
                                 (let* ((_%klass204254%_
                                         (let ((__tmp206048
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self204209%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx204205%_
                                            __tmp206048)))
                                        (_%object204256%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx204204%_
                                            _%L204242%_)))
                                        (_%instance?204261%_
                                         (let ((_%$e204258%_
                                                (gxc#expression-type?
                                                 _%object204256%_
                                                 _%klass204254%_)))
                                           (if _%$e204258%_
                                               _%$e204258%_
                                               (gxc#expression-type?
                                                _%L204242%_
                                                _%klass204254%_))))
                                        (_%klass204264%_ _%klass204254%_))
                                   (if _%instance?204261%_
                                       (let ((__tmp206049
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object204256%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L204242%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object204256%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp206049
                                          _%stx204205%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass204264%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp206050
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass204264%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object204256%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp206050
                                              _%stx204205%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass204264%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp206051
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass204264%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object204256%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp206051
                                                  _%stx204205%_))
                                               (let ((__tmp206052
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self204209%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object204256%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp206052
                                                  _%stx204205%_)))))))
                               _%hd204223204237%_)
                              (_%g204219204229%_ _%g204220204232%_))))
                      (_%g204219204229%_ _%g204220204232%_)))))
          (_%g204218204282%_ _%args204206%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx203866%_)
        (let* ((_%__stx205447205448%_ _%stx203866%_)
               (_%g203871203912%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205447205448%_)))))
          (let ((_%__kont205449205450%_ (lambda () '#t))
                (_%__kont205451205452%_ (lambda () '#t))
                (_%__kont205453205454%_
                 (lambda (_%L203980%_ _%L203981%_)
                   (let ((_%rator-type204002204004%_
                          (let ((__tmp206053
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L203981%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp206053))))
                     (if _%rator-type204002204004%_
                         (let* ((_%rator-type204007%_
                                 _%rator-type204002204004%_)
                                (_%rator-signature204008204010%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type204007%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type204007%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature204008204010%_
                               (let* ((_%rator-signature204013%_
                                       _%rator-signature204008204010%_)
                                      (_%rator-effect204014204016%_
                                       (if _%rator-signature204013%_
                                           (##direct-structure-ref
                                            _%rator-signature204013%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect204014204016%_
                                     (let ((_%rator-effect204019%_
                                            _%rator-effect204014204016%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect204019%_)
                                               (equal? '(alloc)
                                                       _%rator-effect204019%_))
                                           (let ((__tmp206054
                                                  (let ((__tmp206055
                                                         (lambda (_%g204024204027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g204025204029%_)
                   (cons _%g204024204027%_ _%g204025204029%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp206055
                                                     '()
                                                     _%L203980%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp206054))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont205457205458%_ (lambda () '#f)))
            (let ((_%__match205536205537%_
                   (lambda (_%e203887203924%_
                            _%hd203888203927%_
                            _%tl203889203929%_
                            _%e203890203932%_
                            _%hd203891203935%_
                            _%tl203892203937%_
                            _%e203893203940%_
                            _%hd203894203943%_
                            _%tl203895203945%_
                            _%e203896203948%_
                            _%hd203897203951%_
                            _%tl203898203953%_
                            _%__splice205455205456%_
                            _%target203899203956%_
                            _%tl203901203958%_)
                     (letrec ((_%loop203902203961%_
                               (lambda (_%hd203900203964%_
                                        _%rand203906203966%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd203900203964%_))
                                     (let ((_%e203903203969%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd203900203964%_))))
                                       (let ((_%lp-tl203905203974%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e203903203969%_)))
                                             (_%lp-hd203904203972%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e203903203969%_))))
                                         (_%loop203902203961%_
                                          _%lp-tl203905203974%_
                                          (cons _%lp-hd203904203972%_
                                                _%rand203906203966%_))))
                                     (let ((_%rand203907203977%_
                                            (reverse _%rand203906203966%_)))
                                       (_%__kont205453205454%_
                                        _%rand203907203977%_
                                        _%hd203897203951%_))))))
                       (_%loop203902203961%_ _%target203899203956%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205447205448%_))
                  (let ((_%e203873204060%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205447205448%_))))
                    (let ((_%tl203875204065%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203873204060%_)))
                          (_%hd203874204063%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203873204060%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd203874204063%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd203874204063%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203875204065%_))
                                  (let ((_%e203876204068%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203875204065%_))))
                                    (let ((_%tl203878204073%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203876204068%_)))
                                          (_%hd203877204071%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203876204068%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203878204073%_))
                                          (_%__kont205449205450%_)
                                          (_%__kont205457205458%_))))
                                  (_%__kont205457205458%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd203874204063%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203875204065%_))
                                      (let ((_%e203882204045%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203875204065%_))))
                                        (let ((_%tl203884204050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203882204045%_)))
                                              (_%hd203883204048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203882204045%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203884204050%_))
                                              (_%__kont205451205452%_)
                                              (_%__kont205457205458%_))))
                                      (_%__kont205457205458%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd203874204063%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203875204065%_))
                                          (let ((_%e203890203932%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl203875204065%_))))
                                            (let ((_%tl203892203937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203890203932%_)))
                                                  (_%hd203891203935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203890203932%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203891203935%_))
                                                  (let ((_%e203893203940%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203891203935%_))))
                                                    (let ((_%tl203895203945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203893203940%_)))
                                                          (_%hd203894203943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203893203940%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd203894203943%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd203894203943%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203895203945%_))
                          (let ((_%e203896203948%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203895203945%_))))
                            (let ((_%tl203898203953%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203896203948%_)))
                                  (_%hd203897203951%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203896203948%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203898203953%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203892203937%_))
                                      (let ((_%__splice205455205456%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl203892203937%_
                                                '0))))
                                        (let ((_%tl203901203958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205455205456%_
                                                  '1)))
                                              (_%target203899203956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205455205456%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203901203958%_))
                                              (_%__match205536205537%_
                                               _%e203873204060%_
                                               _%hd203874204063%_
                                               _%tl203875204065%_
                                               _%e203890203932%_
                                               _%hd203891203935%_
                                               _%tl203892203937%_
                                               _%e203893203940%_
                                               _%hd203894203943%_
                                               _%tl203895203945%_
                                               _%e203896203948%_
                                               _%hd203897203951%_
                                               _%tl203898203953%_
                                               _%__splice205455205456%_
                                               _%target203899203956%_
                                               _%tl203901203958%_)
                                              (_%__kont205457205458%_))))
                                      (_%__kont205457205458%_))
                                  (_%__kont205457205458%_))))
                          (_%__kont205457205458%_))
                      (_%__kont205457205458%_))
                  (_%__kont205457205458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205457205458%_))))
                                          (_%__kont205457205458%_))
                                      (_%__kont205457205458%_))))
                          (_%__kont205457205458%_))))
                  (_%__kont205457205458%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx203861%_ _%klass203862%_)
        (let ((_%expr-type203864%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx203861%_))))
          (if _%expr-type203864%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type203864%_ _%klass203862%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx203839%_ _%expr203840%_ _%type203841%_)
        (if (not _%type203841%_)
            '#f
            (let ((_%$e203844%_
                   (eq? (##structure-ref _%type203841%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e203844%_
                  _%$e203844%_
                  (let ((_%expr-type203848%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr203840%_))))
                    (if (not _%expr-type203848%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type203848%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e203852%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type203848%_
                                      'gxc#!abort::t))))
                              (if _%$e203852%_
                                  _%$e203852%_
                                  (let ((_%$e203855%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type203848%_
                                            _%type203841%_))))
                                    (if _%$e203855%_
                                        _%$e203855%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type203841%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type203841%_
                                                   _%expr-type203848%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx203839%_
                                                   _%expr203840%_
                                                   _%expr-type203848%_
                                                   _%type203841%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self203653%_ _%ctx203654%_ _%stx203655%_ _%args203656%_)
        (let* ((_%self203659%_ _%self203653%_)
               (_%klass203669%_
                (let ((__tmp206056
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self203659%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx203655%_ __tmp206056)))
               (_%fields203671%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass203669%_
                           '5
                           '#f
                           '#f))))
               (_%args203677%_
                (map (lambda (_%g203672203674%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx203654%_ _%g203672203674%_)))
                     _%args203656%_))
               (_%inline-make-object203679%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self203659%_
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
                           _%self203659%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields203671%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass203682%_ _%klass203669%_)
               (_%$e203696%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass203682%_ '6 '#f '#f))))
          (if _%$e203696%_
              ((lambda (_%ctor203699%_)
                 (let ((_%$obj203701%_
                        (let ((__tmp206057
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp206057)))
                       (_%ctor-impl203702%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass203682%_
                           _%ctor203699%_))))
                   (let ((__tmp206058
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj203701%_ '())
                                                  (cons _%inline-make-object203679%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl203702%_
                                                            (let ((__tmp206059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl203702%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj203701%_ '()))
                                             _%args203677%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp206059
                       _%stx203655%_
                       _%ctx203654%_))
                    (let ((_%$ctor203704%_
                           (let ((__tmp206060
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp206060))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor203704%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203659%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj203701%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor203699%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor203704%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor203704%_ '()))
                              (cons (cons '%#ref (cons _%$obj203701%_ '()))
                                    _%args203677%_)))
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
                             _%self203659%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor203699%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj203701%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp206058 _%stx203655%_))))
               _%$e203696%_)
              (let ((_%$e203706%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass203682%_
                        '10
                        '#f
                        '#f))))
                (if _%$e203706%_
                    ((lambda (_%metaclass203709%_)
                       (let* ((_%$obj203711%_
                               (let ((__tmp206061
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp206061)))
                              (_%metakons203713%_
                               (let ((__tmp206062
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx203655%_
                                         _%metaclass203709%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp206062
                                  'instance-init!)))
                              (__tmp206063
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj203711%_
                                                             '())
                                                       (cons _%inline-make-object203679%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons203713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp206064
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons203713%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self203659%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj203711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args203677%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp206064
                            _%stx203655%_
                            _%ctx203654%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self203659%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj203711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args203677%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj203711%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp206063 _%stx203655%_)))
                     _%$e203706%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass203682%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp206065
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args203677%_))))
                              (declare (not safe))
                              (##fx= __tmp206065 _%fields203671%_))
                            (let ((__tmp206066
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self203659%_
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
                                              _%self203659%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args203677%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp206066
                               _%stx203655%_))
                            (let ((__tmp206068
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self203659%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp206067
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass203682%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx203655%_
                               __tmp206068
                               __tmp206067)))
                        (let ((_%$obj203718%_
                               (let ((__tmp206069
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp206069))))
                          (let _%lp203720%_ ((_%rest203722%_ _%args203677%_)
                                             (_%initializers203723%_ '()))
                            (let* ((_%__stx205539205540%_ _%rest203722%_)
                                   (_%g203727203748%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx205539205540%_)))))
                              (let ((_%__kont205541205542%_
                                     (lambda (_%L203802%_
                                              _%L203803%_
                                              _%L203804%_)
                                       (let* ((_%slot203831%_
                                               (let ((__tmp206070
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L203804%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp206070)))
                                              (_%off203833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass203682%_
                                                  _%slot203831%_))))
                                         (if _%off203833%_
                                             (_%lp203720%_
                                              _%L203802%_
                                              (cons (cons _%off203833%_
                                                          _%L203803%_)
                                                    _%initializers203723%_))
                                             (let ((__tmp206071
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self203659%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx203655%_
                                                __tmp206071
                                                _%slot203831%_))))))
                                    (_%__kont205543205544%_
                                     (lambda ()
                                       (let ((__tmp206072
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj203718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object203679%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp206075
                                     (cons (cons '%#ref
                                                 (cons _%$obj203718%_ '()))
                                           '()))
                                    (__tmp206073
                                     (let ((__tmp206074
                                            (lambda (_%i203762%_ _%r203763%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self203659%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i203762%_) '()))
                              (cons (cons '%#ref (cons _%$obj203718%_ '()))
                                    (cons (cdr _%i203762%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r203763%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp206074
                                        '()
                                        _%initializers203723%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp206075 __tmp206073)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp206072
                                          _%stx203655%_))))
                                    (_%__kont205545205546%_
                                     (lambda ()
                                       (let ((__tmp206076
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj203718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object203679%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj203718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args203677%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj203718%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp206076
                                          _%stx203655%_)))))
                                (let* ((_%g203725203765%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx205539205540%_))
                                              (_%__kont205543205544%_)
                                              (_%__kont205545205546%_))))
                                       (_%__match205576205577%_
                                        (lambda (_%e203732203770%_
                                                 _%hd203733203773%_
                                                 _%tl203734203775%_
                                                 _%e203735203778%_
                                                 _%hd203736203781%_
                                                 _%tl203737203783%_
                                                 _%e203738203786%_
                                                 _%hd203739203789%_
                                                 _%tl203740203791%_
                                                 _%e203741203794%_
                                                 _%hd203742203797%_
                                                 _%tl203743203799%_)
                                          (let ((_%L203802%_
                                                 _%tl203743203799%_)
                                                (_%L203803%_
                                                 _%hd203742203797%_)
                                                (_%L203804%_
                                                 _%hd203739203789%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L203804%_))
                                                (_%__kont205541205542%_
                                                 _%L203802%_
                                                 _%L203803%_
                                                 _%L203804%_)
                                                (_%__kont205545205546%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx205539205540%_))
                                      (let ((_%e203732203770%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx205539205540%_))))
                                        (let ((_%tl203734203775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203732203770%_)))
                                              (_%hd203733203773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203732203770%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd203733203773%_))
                                              (let ((_%e203735203778%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd203733203773%_))))
                                                (let ((_%tl203737203783%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203735203778%_)))
                                                      (_%hd203736203781%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203735203778%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd203736203781%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd203736203781%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl203737203783%_))
                      (let ((_%e203738203786%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl203737203783%_))))
                        (let ((_%tl203740203791%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203738203786%_)))
                              (_%hd203739203789%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203738203786%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203740203791%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203734203775%_))
                                  (let ((_%e203741203794%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203734203775%_))))
                                    (let ((_%tl203743203799%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203741203794%_)))
                                          (_%hd203742203797%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203741203794%_))))
                                      (_%__match205576205577%_
                                       _%e203732203770%_
                                       _%hd203733203773%_
                                       _%tl203734203775%_
                                       _%e203735203778%_
                                       _%hd203736203781%_
                                       _%tl203737203783%_
                                       _%e203738203786%_
                                       _%hd203739203789%_
                                       _%tl203740203791%_
                                       _%e203741203794%_
                                       _%hd203742203797%_
                                       _%tl203743203799%_)))
                                  (_%__kont205545205546%_))
                              (_%__kont205545205546%_))))
                      (_%__kont205545205546%_))
                  (_%__kont205545205546%_))
              (_%__kont205545205546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205545205546%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203725203765%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self203436%_ _%ctx203437%_ _%stx203438%_ _%args203439%_)
        (let* ((_%self203442%_ _%self203436%_)
               (_%arguments-ok?203452%_
                (let ((__method206020
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self203442%_ 'check-arguments))))
                  (if __method206020
                      (let ()
                        (declare (not safe))
                        (__method206020
                         _%self203442%_
                         _%ctx203437%_
                         _%stx203438%_
                         _%args203439%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self203442%_
                                 'check-arguments))
                        '#!void))))
               (_%g203454203464%_
                (lambda (_%g203455203461%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203455203461%_))))
               (_%g203453203528%_
                (lambda (_%g203455203467%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203455203467%_))
                      (let ((_%e203457203469%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203455203467%_))))
                        (let ((_%hd203458203472%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203457203469%_)))
                              (_%tl203459203474%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203457203469%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203459203474%_))
                              ((lambda (_%L203477%_)
                                 (let* ((_%klass203490%_
                                         (let ((__tmp206077
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self203442%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx203438%_
                                            __tmp206077)))
                                        (_%field203492%_
                                         (let ((__tmp206078
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self203442%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass203490%_
                                            __tmp206078)))
                                        (_%object203494%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx203437%_
                                            _%L203477%_)))
                                        (_%klass203497%_ _%klass203490%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass203497%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp206079
                                              (cons (if (or _%arguments-ok?203452%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self203442%_
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
                                 _%self203442%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field203492%_ '()))
                        (cons _%object203494%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp206079
                                          _%stx203438%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass203497%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp206080
                                                  (cons (if (or _%arguments-ok?203452%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self203442%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self203442%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field203492%_ '()))
                            (cons _%object203494%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp206080
                                              _%stx203438%_))
                                           (let ((_%$e203516%_
                                                  (let ((__tmp206081
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self203442%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass203497%_
                                                     __tmp206081))))
                                             (if _%$e203516%_
                                                 ((lambda (_%klass203519%_)
                                                    (let ((__tmp206082
                                                           (cons (if (or _%arguments-ok?203452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self203442%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self203442%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field203492%_ '()))
                                     (cons _%object203494%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp206082 _%stx203438%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e203516%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self203442%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp206083
                                                            (let ((_%$obj203525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp206084
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp206084))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj203525%_ '())
                                              (cons _%object203494%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass203497%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj203525%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203442%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field203492%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj203525%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?203452%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj203525%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self203442%_
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
                                                             _%self203442%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj203525%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self203442%_
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
               (gxc#xform-wrap-source __tmp206083 _%stx203438%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp206085
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object203494%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self203442%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp206085 _%stx203438%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd203458203472%_)
                              (_%g203454203464%_ _%g203455203467%_))))
                      (_%g203454203464%_ _%g203455203467%_)))))
          (_%g203453203528%_ _%args203439%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass205307 __method-table205308)
        (let ((__check-arguments205309
               (let ((__tmp206086
                      (lambda ()
                        (let ((__method205310
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table205308
                                  'check-arguments
                                  '#f))))
                          (if __method205310
                              __method205310
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp206086)))
              (__slot205311
               (let ((__slot205312
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass205307 'slot))))
                 (if __slot205312
                     __slot205312
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self203436%_ _%ctx203437%_ _%stx203438%_ _%args203439%_)
            (let* ((_%self203442%_ _%self203436%_)
                   (_%arguments-ok?203452%_
                    ((force __check-arguments205309)
                     _%self203442%_
                     _%ctx203437%_
                     _%stx203438%_
                     _%args203439%_))
                   (_%g203454203464%_
                    (lambda (_%g203455203461%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g203455203461%_))))
                   (_%g203453203528%_
                    (lambda (_%g203455203467%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g203455203467%_))
                          (let ((_%e203457203469%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g203455203467%_))))
                            (let ((_%hd203458203472%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203457203469%_)))
                                  (_%tl203459203474%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203457203469%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203459203474%_))
                                  ((lambda (_%L203477%_)
                                     (let* ((_%klass203490%_
                                             (let ((__tmp206087
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self203442%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx203438%_
                                                __tmp206087)))
                                            (_%field203492%_
                                             (let ((__tmp206088
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self203442%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass203490%_
                                                __tmp206088)))
                                            (_%object203494%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx203437%_
                                                _%L203477%_)))
                                            (_%klass203497%_ _%klass203490%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass203497%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp206089
                                                  (cons (if (or _%arguments-ok?203452%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self203442%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self203442%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field203492%_ '()))
                            (cons _%object203494%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp206089
                                              _%stx203438%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass203497%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp206090
                                                      (cons (if (or _%arguments-ok?203452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self203442%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self203442%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field203492%_ '()))
                                (cons _%object203494%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp206090
                                                  _%stx203438%_))
                                               (let ((_%$e203516%_
                                                      (let ((__tmp206091
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self203442%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass203497%_ __tmp206091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e203516%_
                                                     ((lambda (_%klass203519%_)
                                                        (let ((__tmp206092
                                                               (cons (if (or _%arguments-ok?203452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203442%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self203442%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field203492%_ '()))
                                         (cons _%object203494%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp206092 _%stx203438%_)))
              _%$e203516%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self203442%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp206093
                                                                (let ((_%$obj203525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp206094
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp206094))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj203525%_ '())
                                                  (cons _%object203494%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass203497%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj203525%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self203442%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field203492%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj203525%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?203452%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj203525%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self203442%_
                               __slot205311
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
                        (##unchecked-structure-ref _%self203442%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj203525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self203442%_
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
                   (gxc#xform-wrap-source __tmp206093 _%stx203438%_))
                 (let ((__tmp206095
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object203494%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self203442%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp206095 _%stx203438%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd203458203472%_)
                                  (_%g203454203464%_ _%g203455203467%_))))
                          (_%g203454203464%_ _%g203455203467%_)))))
              (_%g203453203528%_ _%args203439%_))))))
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
      (lambda (_%self203200%_ _%ctx203201%_ _%stx203202%_ _%args203203%_)
        (let* ((_%self203206%_ _%self203200%_)
               (_%arguments-ok?203216%_
                (let ((__method206021
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self203206%_ 'check-arguments))))
                  (if __method206021
                      (let ()
                        (declare (not safe))
                        (__method206021
                         _%self203206%_
                         _%ctx203201%_
                         _%stx203202%_
                         _%args203203%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self203206%_
                                 'check-arguments))
                        '#!void))))
               (_%g203218203232%_
                (lambda (_%g203219203229%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203219203229%_))))
               (_%g203217203311%_
                (lambda (_%g203219203235%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203219203235%_))
                      (let ((_%e203222203237%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203219203235%_))))
                        (let ((_%hd203223203240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203222203237%_)))
                              (_%tl203224203242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203222203237%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203224203242%_))
                              (let ((_%e203225203245%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203224203242%_))))
                                (let ((_%hd203226203248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203225203245%_)))
                                      (_%tl203227203250%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203225203245%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203227203250%_))
                                      ((lambda (_%L203253%_ _%L203254%_)
                                         (let* ((_%klass203270%_
                                                 (let ((__tmp206096
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self203206%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx203202%_
                                                    __tmp206096)))
                                                (_%field203272%_
                                                 (let ((__tmp206097
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self203206%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass203270%_
                                                    __tmp206097)))
                                                (_%object203274%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx203201%_
                                                    _%L203254%_)))
                                                (_%value203276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx203201%_
                                                    _%L203253%_)))
                                                (_%klass203279%_
                                                 _%klass203270%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass203279%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp206098
                                                      (cons (if (or _%arguments-ok?203216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self203206%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self203206%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field203272%_ '()))
                                (cons _%object203274%_
                                      (cons _%value203276%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp206098
                                                  _%stx203202%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass203279%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp206099
                                                          (cons (if (or _%arguments-ok?203216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self203206%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203206%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field203272%_ '()))
                                    (cons _%object203274%_
                                          (cons _%value203276%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp206099
                                                      _%stx203202%_))
                                                   (let ((_%$e203299%_
                                                          (let ((__tmp206100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self203206%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass203279%_
                     __tmp206100))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e203299%_
                                                         ((lambda (_%klass203302%_)
                                                            (let ((__tmp206101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?203216%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self203206%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self203206%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field203272%_ '()))
                                             (cons _%object203274%_
                                                   (cons _%value203276%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp206101 _%stx203202%_)))
                  _%$e203299%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self203206%_ '4 '#f '#f))
                     (let ((__tmp206102
                            (let ((_%$obj203308%_
                                   (let ((__tmp206103
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp206103))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj203308%_ '())
                                                      (cons _%object203274%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass203279%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj203308%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self203206%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field203272%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj203308%_
                                                              '()))
                                                  (cons _%value203276%_
                                                        '())))))
                          (cons (if _%arguments-ok?203216%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj203308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self203206%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value203276%_ '())))))
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
                             _%self203206%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj203308%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self203206%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value203276%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp206102 _%stx203202%_))
                     (let ((__tmp206104
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object203274%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self203206%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value203276%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp206104
                        _%stx203202%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd203226203248%_
                                       _%hd203223203240%_)
                                      (_%g203218203232%_ _%g203219203235%_))))
                              (_%g203218203232%_ _%g203219203235%_))))
                      (_%g203218203232%_ _%g203219203235%_)))))
          (_%g203217203311%_ _%args203203%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass205313 __method-table205314)
        (let ((__check-arguments205315
               (let ((__tmp206105
                      (lambda ()
                        (let ((__method205316
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table205314
                                  'check-arguments
                                  '#f))))
                          (if __method205316
                              __method205316
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp206105))))
          (lambda (_%self203200%_ _%ctx203201%_ _%stx203202%_ _%args203203%_)
            (let* ((_%self203206%_ _%self203200%_)
                   (_%arguments-ok?203216%_
                    ((force __check-arguments205315)
                     _%self203206%_
                     _%ctx203201%_
                     _%stx203202%_
                     _%args203203%_))
                   (_%g203218203232%_
                    (lambda (_%g203219203229%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g203219203229%_))))
                   (_%g203217203311%_
                    (lambda (_%g203219203235%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g203219203235%_))
                          (let ((_%e203222203237%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g203219203235%_))))
                            (let ((_%hd203223203240%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203222203237%_)))
                                  (_%tl203224203242%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203222203237%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203224203242%_))
                                  (let ((_%e203225203245%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203224203242%_))))
                                    (let ((_%hd203226203248%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203225203245%_)))
                                          (_%tl203227203250%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203225203245%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203227203250%_))
                                          ((lambda (_%L203253%_ _%L203254%_)
                                             (let* ((_%klass203270%_
                                                     (let ((__tmp206106
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self203206%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx203202%_
                                                        __tmp206106)))
                                                    (_%field203272%_
                                                     (let ((__tmp206107
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self203206%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass203270%_
                                                        __tmp206107)))
                                                    (_%object203274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx203201%_
                                                        _%L203254%_)))
                                                    (_%value203276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx203201%_
                                                        _%L203253%_)))
                                                    (_%klass203279%_
                                                     _%klass203270%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass203279%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp206108
                                                          (cons (if (or _%arguments-ok?203216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self203206%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203206%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field203272%_ '()))
                                    (cons _%object203274%_
                                          (cons _%value203276%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp206108
                                                      _%stx203202%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass203279%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp206109
                                                              (cons (if (or _%arguments-ok?203216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self203206%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self203206%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field203272%_ '()))
                                        (cons _%object203274%_
                                              (cons _%value203276%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp206109 _%stx203202%_))
               (let ((_%$e203299%_
                      (let ((__tmp206110
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self203206%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass203279%_
                         __tmp206110))))
                 (if _%$e203299%_
                     ((lambda (_%klass203302%_)
                        (let ((__tmp206111
                               (cons (if (or _%arguments-ok?203216%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self203206%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self203206%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field203272%_
                                                             '()))
                                                 (cons _%object203274%_
                                                       (cons _%value203276%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp206111 _%stx203202%_)))
                      _%$e203299%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self203206%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp206112
                                (let ((_%$obj203308%_
                                       (let ((__tmp206113
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp206113))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj203308%_
                                                                '())
                                                          (cons _%object203274%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass203279%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj203308%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self203206%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field203272%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj203308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value203276%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?203216%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj203308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self203206%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value203276%_ '())))))
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
                                 _%self203206%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj203308%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203206%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value203276%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp206112 _%stx203202%_))
                         (let ((__tmp206114
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object203274%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self203206%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value203276%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp206114
                            _%stx203202%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd203226203248%_
                                           _%hd203223203240%_)
                                          (_%g203218203232%_
                                           _%g203219203235%_))))
                                  (_%g203218203232%_ _%g203219203235%_))))
                          (_%g203218203232%_ _%g203219203235%_)))))
              (_%g203217203311%_ _%args203203%_))))))
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
      (lambda (_%self203015%_ _%ctx203016%_ _%stx203017%_ _%args203018%_)
        (let* ((_%self203021%_ _%self203015%_)
               (_%self203030203040%_ _%self203021%_)
               (_%E203032203044%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self203030203040%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K203033203054%_
                (lambda (_%inline203047%_ _%dispatch203048%_ _%arity203049%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self203021%_
                         _%args203018%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx203017%_
                         _%arity203049%_)))
                  (if _%inline203047%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp206115 (_%inline203047%_ _%stx203017%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp206115
                           _%stx203017%_
                           _%ctx203016%_)))
                      (if (and _%dispatch203048%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch203048%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch203048%_))
                            (let ((__tmp206116
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch203048%_
                                                           '()))
                                               _%args203018%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp206116
                               _%stx203017%_
                               _%ctx203016%_)))
                          (gxc#!procedure::optimize-call
                           _%self203021%_
                           _%ctx203016%_
                           _%stx203017%_
                           _%args203018%_)))))
               (_%e203034203057%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203030203040%_ '1 '#f '#f)))
               (_%e203035203060%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203030203040%_ '2 '#f '#f)))
               (_%e203036203063%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203030203040%_ '3 '#f '#f)))
               (_%arity203066%_ _%e203036203063%_)
               (_%e203037203068%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203030203040%_ '4 '#f '#f)))
               (_%dispatch203071%_ _%e203037203068%_)
               (_%e203038203073%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203030203040%_ '5 '#f '#f)))
               (_%inline203076%_ _%e203038203073%_))
          (_%K203033203054%_
           _%inline203076%_
           _%dispatch203071%_
           _%arity203066%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self202867%_ _%ctx202868%_ _%stx202869%_ _%args202870%_)
        (let* ((_%self202873%_ _%self202867%_)
               (_%$e202887%_
                (let ((__tmp206118
                       (lambda (_%g202882202884%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g202882202884%_
                            _%args202870%_))))
                      (__tmp206117
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self202873%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp206118 __tmp206117))))
          (if _%$e202887%_
              ((lambda (_%clause202890%_)
                 (let ((__method206022
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause202890%_ 'optimize-call))))
                   (if __method206022
                       (let ()
                         (declare (not safe))
                         (__method206022
                          _%clause202890%_
                          _%ctx202868%_
                          _%stx202869%_
                          _%args202870%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause202890%_
                                  'optimize-call))
                         '#!void))))
               _%$e202887%_)
              (let ((__tmp206119
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self202873%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx202869%_
                 __tmp206119))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self202607%_ _%ctx202608%_ _%stx202609%_ _%args202610%_)
        (let* ((_%self202613%_ _%self202607%_)
               (_%self202622202631%_ _%self202613%_)
               (_%E202624202635%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self202622202631%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K202625202726%_
                (lambda (_%dispatch202638%_ _%table202639%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch202638%_))
                      (let* ((_%g202640202650%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch202638%_)))
                             (_%else202642202658%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch202638%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx202608%_
                                   _%stx202609%_))))
                             (_%K202644202707%_
                              (lambda (_%main202661%_ _%keys202662%_)
                                (let ((_g206120_
                                       (gxc#!kw-lambda-split-args
                                        _%stx202609%_
                                        _%args202610%_)))
                                  (begin
                                    (let ((_g206121_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g206120_)
                                                 (##values-length _g206120_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g206121_ 2)))
                                          (error "Context expects 2 values"
                                                 _g206121_)))
                                    (let ((_%pargs202664%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206120_ 0)))
                                          (_%kwargs202665%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206120_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main202661%_))
                                        (if _%table202639%_
                                            (let ((_%xargs202673%_
                                                   (map (lambda (_%key202667%_)
                                                          (let ((_%$e202669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key202667%_ _%kwargs202665%_))))
                    (if _%$e202669%_ _%$e202669%_ '(%#ref absent-value))))
                _%keys202662%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw202675%_)
                                                 (if (memq (car _%kw202675%_)
                                                           _%keys202662%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx202609%_
                                                        _%keys202662%_
                                                        _%kw202675%_))))
                                               _%kwargs202665%_)
                                              (let ((__tmp206122
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main202661%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs202664%_
                                  _%xargs202673%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp206122
                                                 _%stx202609%_
                                                 _%ctx202608%_)))
                                            (let* ((_%kwt202677%_
                                                    (let ((__tmp206123
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp206123)))
                                                   (_%kwvars202681%_
                                                    (map (lambda (_%_202679%_)
                                                           (let ((__tmp206124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp206124)))
                 _%kwargs202665%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind202686%_
                                                    (map (lambda (_%kw202683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar202684%_)
                   (cons (cons _%kwvar202684%_ '())
                         (cons (cdr _%kw202683%_) '())))
                 _%kwargs202665%_
                 _%kwvars202681%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset202691%_
                                                    (map (lambda (_%kw202688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar202689%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt202677%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw202688%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar202689%_
                                                             '()))
                                                 '()))))))
                 _%kwargs202665%_
                 _%kwvars202681%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs202696%_
                                                    (map (lambda (_%kw202693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar202694%_)
                   (cons (car _%kw202693%_)
                         (cons '%#ref (cons _%kwvar202694%_ '()))))
                 _%kwargs202665%_
                 _%kwvars202681%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs202704%_
                                                    (map (lambda (_%key202698%_)
                                                           (let ((_%$e202700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key202698%_ _%xkwargs202696%_))))
                     (if _%$e202700%_ _%$e202700%_ '(%#ref absent-value))))
                 _%keys202662%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp206125
                                                    (cons '%#let-values
                                                          (cons _%kwbind202686%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt202677%_ '())
                                                      (cons (let ((__tmp206126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs202665%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp206126 _%stx202609%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp206127
                                                             (cons (let ((__tmp206128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main202661%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt202677%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs202664%_
                                                       _%xargs202704%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp206128 _%stx202609%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp206127 _%kwset202691%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp206125
                                               _%stx202609%_
                                               _%ctx202608%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g202640202650%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e202645202710%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202640202650%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e202646202713%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202640202650%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e202647202716%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202640202650%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys202719%_ _%e202647202716%_)
                                   (_%e202648202721%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202640202650%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main202724%_ _%e202648202721%_))
                              (_%K202644202707%_
                               _%main202724%_
                               _%keys202719%_))
                            (_%else202642202658%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx202608%_ _%stx202609%_)))))
               (_%e202626202729%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202622202631%_ '1 '#f '#f)))
               (_%e202627202732%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202622202631%_ '2 '#f '#f)))
               (_%e202628202735%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202622202631%_ '3 '#f '#f)))
               (_%table202738%_ _%e202628202735%_)
               (_%e202629202740%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202622202631%_ '4 '#f '#f)))
               (_%dispatch202743%_ _%e202629202740%_))
          (_%K202625202726%_ _%dispatch202743%_ _%table202738%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx202220%_ _%args202221%_)
        (let _%lp202223%_ ((_%rest202225%_ _%args202221%_)
                           (_%pargs202226%_ '())
                           (_%kwargs202227%_ '()))
          (let* ((_%__stx205581205582%_ _%rest202225%_)
                 (_%g202233202285%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx205581205582%_)))))
            (let ((_%__kont205583205584%_
                   (lambda (_%L202464%_ _%L202465%_)
                     (_%lp202223%_
                      _%L202464%_
                      (cons _%L202465%_ _%pargs202226%_)
                      _%kwargs202227%_)))
                  (_%__kont205585205586%_
                   (lambda (_%L202410%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L202410%_ _%pargs202226%_))
                             (reverse _%kwargs202227%_))))
                  (_%__kont205587205588%_
                   (lambda (_%L202357%_ _%L202358%_ _%L202359%_)
                     (let ((_%kw202376%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L202359%_))))
                       (if (assq _%kw202376%_ _%kwargs202227%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx202220%_
                              _%kw202376%_))
                           (_%lp202223%_
                            _%L202357%_
                            _%pargs202226%_
                            (cons (cons _%kw202376%_ _%L202358%_)
                                  _%kwargs202227%_))))))
                  (_%__kont205589205590%_
                   (lambda (_%L202305%_ _%L202306%_)
                     (_%lp202223%_
                      _%L202305%_
                      (cons _%L202306%_ _%pargs202226%_)
                      _%kwargs202227%_)))
                  (_%__kont205591205592%_
                   (lambda ()
                     (values (reverse _%pargs202226%_)
                             (reverse _%kwargs202227%_)))))
              (let ((_%__match205688205689%_
                     (lambda (_%e202264202325%_
                              _%hd202265202328%_
                              _%tl202266202330%_
                              _%e202267202333%_
                              _%hd202268202336%_
                              _%tl202269202338%_
                              _%e202270202341%_
                              _%hd202271202344%_
                              _%tl202272202346%_
                              _%e202273202349%_
                              _%hd202274202352%_
                              _%tl202275202354%_)
                       (let ((_%L202357%_ _%tl202275202354%_)
                             (_%L202358%_ _%hd202274202352%_)
                             (_%L202359%_ _%hd202271202344%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L202359%_))
                             (_%__kont205587205588%_
                              _%L202357%_
                              _%L202358%_
                              _%L202359%_)
                             (_%__kont205589205590%_
                              _%tl202266202330%_
                              _%hd202265202328%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx205581205582%_))
                    (let ((_%e202237202429%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx205581205582%_))))
                      (let ((_%tl202239202434%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202237202429%_)))
                            (_%hd202238202432%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202237202429%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd202238202432%_))
                            (let ((_%e202240202437%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd202238202432%_))))
                              (let ((_%tl202242202442%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202240202437%_)))
                                    (_%hd202241202440%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202240202437%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd202241202440%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd202241202440%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202242202442%_))
                                            (let ((_%e202243202445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202242202442%_))))
                                              (let ((_%tl202245202450%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202243202445%_)))
                                                    (_%hd202244202448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202243202445%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd202244202448%_))
                                                    (let ((_%e202246202453%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202244202448%_))))
                                                      (if (equal? _%e202246202453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl202245202450%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202239202434%_))
                          (let ((_%e202247202456%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202239202434%_))))
                            (let ((_%tl202249202461%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202247202456%_)))
                                  (_%hd202248202459%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202247202456%_))))
                              (_%__kont205583205584%_
                               _%tl202249202461%_
                               _%hd202248202459%_)))
                          (_%__kont205589205590%_
                           _%tl202239202434%_
                           _%hd202238202432%_))
                      (_%__kont205589205590%_
                       _%tl202239202434%_
                       _%hd202238202432%_))
                  (if (equal? _%e202246202453%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202245202450%_))
                          (_%__kont205585205586%_ _%tl202239202434%_)
                          (_%__kont205589205590%_
                           _%tl202239202434%_
                           _%hd202238202432%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202245202450%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202239202434%_))
                              (let ((_%e202273202349%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202239202434%_))))
                                (let ((_%tl202275202354%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202273202349%_)))
                                      (_%hd202274202352%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202273202349%_))))
                                  (_%__match205688205689%_
                                   _%e202237202429%_
                                   _%hd202238202432%_
                                   _%tl202239202434%_
                                   _%e202240202437%_
                                   _%hd202241202440%_
                                   _%tl202242202442%_
                                   _%e202243202445%_
                                   _%hd202244202448%_
                                   _%tl202245202450%_
                                   _%e202273202349%_
                                   _%hd202274202352%_
                                   _%tl202275202354%_)))
                              (_%__kont205589205590%_
                               _%tl202239202434%_
                               _%hd202238202432%_))
                          (_%__kont205589205590%_
                           _%tl202239202434%_
                           _%hd202238202432%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl202245202450%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202239202434%_))
                                                            (let ((_%e202273202349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202239202434%_))))
                      (let ((_%tl202275202354%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202273202349%_)))
                            (_%hd202274202352%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202273202349%_))))
                        (_%__match205688205689%_
                         _%e202237202429%_
                         _%hd202238202432%_
                         _%tl202239202434%_
                         _%e202240202437%_
                         _%hd202241202440%_
                         _%tl202242202442%_
                         _%e202243202445%_
                         _%hd202244202448%_
                         _%tl202245202450%_
                         _%e202273202349%_
                         _%hd202274202352%_
                         _%tl202275202354%_)))
                    (_%__kont205589205590%_
                     _%tl202239202434%_
                     _%hd202238202432%_))
                (_%__kont205589205590%_
                 _%tl202239202434%_
                 _%hd202238202432%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont205589205590%_
                                             _%tl202239202434%_
                                             _%hd202238202432%_))
                                        (_%__kont205589205590%_
                                         _%tl202239202434%_
                                         _%hd202238202432%_))
                                    (_%__kont205589205590%_
                                     _%tl202239202434%_
                                     _%hd202238202432%_))))
                            (_%__kont205589205590%_
                             _%tl202239202434%_
                             _%hd202238202432%_))))
                    (_%__kont205591205592%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self202204%_ _%ctx202205%_ _%stx202206%_ _%args202207%_)
        (let ((_%self202210%_ _%self202204%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx202205%_ _%stx202206%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self201892%_ _%stx201893%_)
        (let* ((_%__stx205697205698%_ _%stx201893%_)
               (_%g201896201936%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205697205698%_)))))
          (let ((_%__kont205699205700%_
                 (lambda (_%L202042%_ _%L202043%_)
                   (let ((_%$e202070%_
                          (member 'return:
                                  (let ((__tmp206129
                                         (lambda (_%g202062202065%_
                                                  _%g202063202067%_)
                                           (cons _%g202062202065%_
                                                 _%g202063202067%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp206129 '() _%L202043%_))
                                  gx#stx-eq?)))
                     (if _%$e202070%_
                         ((lambda (_%tail202073%_)
                            (let ((_%type202075%_
                                   (let ((__tmp206130
                                          (let ((__tmp206131
                                                 (cadr _%tail202073%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp206131))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx201893%_
                                      __tmp206130))))
                              (gxc#check-return-type!
                               _%stx201893%_
                               _%L202042%_
                               _%type202075%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self201892%_
                                 _%L202042%_))))
                          _%$e202070%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self201892%_ _%L202042%_))))))
                (_%__kont205703205704%_
                 (lambda (_%L201965%_ _%L201966%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self201892%_ _%L201965%_)))))
            (let ((_%__match205734205735%_
                   (lambda (_%e201900201986%_
                            _%hd201901201989%_
                            _%tl201902201991%_
                            _%e201903201994%_
                            _%hd201904201997%_
                            _%tl201905201999%_
                            _%e201906202002%_
                            _%hd201907202005%_
                            _%tl201908202007%_
                            _%__splice205701205702%_
                            _%target201909202010%_
                            _%tl201911202012%_)
                     (letrec ((_%loop201912202015%_
                               (lambda (_%hd201910202018%_
                                        _%signature201916202020%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd201910202018%_))
                                     (let ((_%e201913202023%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd201910202018%_))))
                                       (let ((_%lp-tl201915202028%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201913202023%_)))
                                             (_%lp-hd201914202026%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201913202023%_))))
                                         (_%loop201912202015%_
                                          _%lp-tl201915202028%_
                                          (cons _%lp-hd201914202026%_
                                                _%signature201916202020%_))))
                                     (let ((_%signature201917202031%_
                                            (reverse _%signature201916202020%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl201905201999%_))
                                           (let ((_%e201918202034%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl201905201999%_))))
                                             (let ((_%tl201920202039%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e201918202034%_)))
                                                   (_%hd201919202037%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e201918202034%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl201920202039%_))
                                                   (_%__kont205699205700%_
                                                    _%hd201919202037%_
                                                    _%signature201917202031%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g201896201936%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g201896201936%_))))))))
                       (_%loop201912202015%_ _%target201909202010%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205697205698%_))
                  (let ((_%e201900201986%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205697205698%_))))
                    (let ((_%tl201902201991%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201900201986%_)))
                          (_%hd201901201989%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201900201986%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201902201991%_))
                          (let ((_%e201903201994%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201902201991%_))))
                            (let ((_%tl201905201999%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201903201994%_)))
                                  (_%hd201904201997%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201903201994%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd201904201997%_))
                                  (let ((_%e201906202002%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd201904201997%_))))
                                    (let ((_%tl201908202007%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201906202002%_)))
                                          (_%hd201907202005%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201906202002%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd201907202005%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd201907202005%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl201908202007%_))
                                                  (let ((_%__splice205701205702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl201908202007%_
                                                            '0))))
                                                    (let ((_%tl201911202012%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice205701205702%_
                                                              '1)))
                                                          (_%target201909202010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice205701205702%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201911202012%_))
                                                          (_%__match205734205735%_
                                                           _%e201900201986%_
                                                           _%hd201901201989%_
                                                           _%tl201902201991%_
                                                           _%e201903201994%_
                                                           _%hd201904201997%_
                                                           _%tl201905201999%_
                                                           _%e201906202002%_
                                                           _%hd201907202005%_
                                                           _%tl201908202007%_
                                                           _%__splice205701205702%_
                                                           _%target201909202010%_
                                                           _%tl201911202012%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl201905201999%_))
                      (let ((_%e201929201957%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201905201999%_))))
                        (let ((_%tl201931201962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201929201957%_)))
                              (_%hd201930201960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201929201957%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201931201962%_))
                              (_%__kont205703205704%_
                               _%hd201930201960%_
                               _%hd201904201997%_)
                              (let ()
                                (declare (not safe))
                                (_%g201896201936%_)))))
                      (let () (declare (not safe)) (_%g201896201936%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201905201999%_))
                                                      (let ((_%e201929201957%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl201905201999%_))))
                (let ((_%tl201931201962%_
                       (let () (declare (not safe)) (##cdr _%e201929201957%_)))
                      (_%hd201930201960%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201929201957%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201931201962%_))
                      (_%__kont205703205704%_
                       _%hd201930201960%_
                       _%hd201904201997%_)
                      (let () (declare (not safe)) (_%g201896201936%_)))))
              (let () (declare (not safe)) (_%g201896201936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201905201999%_))
                                                  (let ((_%e201929201957%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201905201999%_))))
                                                    (let ((_%tl201931201962%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201929201957%_)))
                                                          (_%hd201930201960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201929201957%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201931201962%_))
                                                          (_%__kont205703205704%_
                                                           _%hd201930201960%_
                                                           _%hd201904201997%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201896201936%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201896201936%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201905201999%_))
                                              (let ((_%e201929201957%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201905201999%_))))
                                                (let ((_%tl201931201962%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201929201957%_)))
                                                      (_%hd201930201960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201929201957%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201931201962%_))
                                                      (_%__kont205703205704%_
                                                       _%hd201930201960%_
                                                       _%hd201904201997%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201896201936%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201896201936%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201905201999%_))
                                      (let ((_%e201929201957%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201905201999%_))))
                                        (let ((_%tl201931201962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201929201957%_)))
                                              (_%hd201930201960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201929201957%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201931201962%_))
                                              (_%__kont205703205704%_
                                               _%hd201930201960%_
                                               _%hd201904201997%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g201896201936%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201896201936%_))))))
                          (let () (declare (not safe)) (_%g201896201936%_)))))
                  (let () (declare (not safe)) (_%g201896201936%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx201867%_ _%expr201868%_ _%type201869%_)
        (let ((_%$e201871%_ (not _%type201869%_)))
          (if _%$e201871%_
              _%$e201871%_
              (let ((_%$e201874%_
                     (eq? (##structure-ref _%type201869%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e201874%_
                    _%$e201874%_
                    (let ((_%$e201877%_
                           (eq? (##structure-ref
                                 _%type201869%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e201877%_
                          _%$e201877%_
                          (let ((_%expr-type201881%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr201868%_))))
                            (if (not _%expr-type201881%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx201867%_
                                   _%type201869%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type201881%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx201867%_
                                       _%type201869%_
                                       _%expr-type201881%_))
                                    (let ((_%$e201885%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type201881%_
                                              'gxc#!abort::t))))
                                      (if _%$e201885%_
                                          _%$e201885%_
                                          (let ((_%$e201888%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type201881%_
                                                    _%type201869%_))))
                                            (if _%$e201888%_
                                                _%$e201888%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx201867%_
                                                   _%type201869%_
                                                   _%expr-type201881%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self201293%_ _%stx201294%_)
        (let* ((_%__stx205779205780%_ _%stx201294%_)
               (_%g201299201409%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205779205780%_)))))
          (let ((_%__kont205781205782%_
                 (lambda (_%L201841%_ _%L201842%_ _%L201843%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L201843%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self201293%_ _%L201842%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self201293%_ _%L201841%_)))))
                (_%__kont205783205784%_
                 (lambda (_%L201667%_ _%L201668%_ _%L201669%_ _%L201670%_)
                   (let ((_%$e201702%_
                          (let ((__tmp206132
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L201670%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp206132))))
                     (if _%$e201702%_
                         ((lambda (_%pred-type201705%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type201705%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type201705%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test201710%_
                                        (let ((__tmp206133
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L201670%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L201669%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp206133
                                           _%stx201294%_
                                           _%self201293%_)))
                                       (_%K201714%_
                                        (let ((__tmp206134
                                               (lambda ()
                                                 (let ((__tmp206137
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self201293%_
                                                             _%L201668%_))))
                                                       (__tmp206135
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L201669%_))
                            (let ((__tmp206136
                                   (##structure-ref
                                    _%pred-type201705%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx201294%_
                               __tmp206136)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp206137
                                                    gxc#current-compile-path-type
                                                    __tmp206135)))))
                                          (declare (not safe))
                                          (__make-promise __tmp206134)))
                                       (_%E201717%_
                                        (let ((__tmp206138
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self201293%_
                                                    _%L201667%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp206138)))
                                       (_%__stx205757205758%_ _%test201710%_)
                                       (_%g201721201735%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx205757205758%_)))))
                                  (let ((_%__kont205759205760%_
                                         (lambda (_%L201763%_ _%L201764%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L201763%_))
                                               (force _%K201714%_)
                                               (force _%E201717%_))))
                                        (_%__kont205761205762%_
                                         (lambda ()
                                           (let ((__tmp206139
                                                  (cons '%#if
                                                        (cons _%test201710%_
                                                              (cons (force _%K201714%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E201717%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp206139
                                              _%stx201294%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx205757205758%_))
                                        (let ((_%e201725201747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx205757205758%_))))
                                          (let ((_%tl201727201752%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201725201747%_)))
                                                (_%hd201726201750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201725201747%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl201727201752%_))
                                                (let ((_%e201728201755%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl201727201752%_))))
                                                  (let ((_%tl201730201760%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201728201755%_)))
                                                        (_%hd201729201758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201728201755%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201730201760%_))
                                                        (_%__kont205759205760%_
                                                         _%hd201729201758%_
                                                         _%hd201726201750%_)
                                                        (_%__kont205761205762%_))))
                                                (_%__kont205761205762%_))))
                                        (_%__kont205761205762%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self201293%_
                                   _%stx201294%_))))
                          _%$e201702%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self201293%_
                            _%stx201294%_))))))
                (_%__kont205785205786%_
                 (lambda (_%L201543%_ _%L201544%_ _%L201545%_ _%L201546%_)
                   (gxc#optimize-if%
                    _%self201293%_
                    (let ((__tmp206140
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L201545%_
                                       (cons _%L201543%_
                                             (cons _%L201544%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp206140 _%stx201294%_)))))
                (_%__kont205787205788%_
                 (lambda (_%L201446%_ _%L201447%_ _%L201448%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self201293%_ _%stx201294%_)))))
            (let ((_%__match205986205987%_
                   (lambda (_%e201363201471%_
                            _%hd201364201474%_
                            _%tl201365201476%_
                            _%e201366201479%_
                            _%hd201367201482%_
                            _%tl201368201484%_
                            _%e201369201487%_
                            _%hd201370201490%_
                            _%tl201371201492%_
                            _%e201372201495%_
                            _%hd201373201498%_
                            _%tl201374201500%_
                            _%e201375201503%_
                            _%hd201376201506%_
                            _%tl201377201508%_
                            _%e201378201511%_
                            _%hd201379201514%_
                            _%tl201380201516%_
                            _%e201381201519%_
                            _%hd201382201522%_
                            _%tl201383201524%_
                            _%e201384201527%_
                            _%hd201385201530%_
                            _%tl201386201532%_
                            _%e201387201535%_
                            _%hd201388201538%_
                            _%tl201389201540%_)
                     (let ((_%L201543%_ _%hd201388201538%_)
                           (_%L201544%_ _%hd201385201530%_)
                           (_%L201545%_ _%hd201382201522%_)
                           (_%L201546%_ _%hd201379201514%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L201546%_ 'not))
                           (_%__kont205785205786%_
                            _%L201543%_
                            _%L201544%_
                            _%L201545%_
                            _%L201546%_)
                           (_%__kont205787205788%_
                            _%hd201388201538%_
                            _%hd201385201530%_
                            _%hd201367201482%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205779205780%_))
                  (let ((_%e201304201793%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205779205780%_))))
                    (let ((_%tl201306201798%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201304201793%_)))
                          (_%hd201305201796%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201304201793%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201306201798%_))
                          (let ((_%e201307201801%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201306201798%_))))
                            (let ((_%tl201309201806%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201307201801%_)))
                                  (_%hd201308201804%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201307201801%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd201308201804%_))
                                  (let ((_%e201310201809%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd201308201804%_))))
                                    (let ((_%tl201312201814%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201310201809%_)))
                                          (_%hd201311201812%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201310201809%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd201311201812%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd201311201812%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201312201814%_))
                                                  (let ((_%e201313201817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201312201814%_))))
                                                    (let ((_%tl201315201822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201313201817%_)))
                                                          (_%hd201314201820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201313201817%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201315201822%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl201309201806%_))
                      (let ((_%e201316201825%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201309201806%_))))
                        (let ((_%tl201318201830%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201316201825%_)))
                              (_%hd201317201828%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201316201825%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201318201830%_))
                              (let ((_%e201319201833%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201318201830%_))))
                                (let ((_%tl201321201838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201319201833%_)))
                                      (_%hd201320201836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201319201833%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201321201838%_))
                                      (_%__kont205781205782%_
                                       _%hd201320201836%_
                                       _%hd201317201828%_
                                       _%hd201314201820%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g201299201409%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g201299201409%_)))))
                      (let () (declare (not safe)) (_%g201299201409%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201309201806%_))
                      (let ((_%e201399201430%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201309201806%_))))
                        (let ((_%tl201401201435%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201399201430%_)))
                              (_%hd201400201433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201399201430%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201401201435%_))
                              (let ((_%e201402201438%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201401201435%_))))
                                (let ((_%tl201404201443%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201402201438%_)))
                                      (_%hd201403201441%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201402201438%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201404201443%_))
                                      (_%__kont205787205788%_
                                       _%hd201403201441%_
                                       _%hd201400201433%_
                                       _%hd201308201804%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g201299201409%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g201299201409%_)))))
                      (let () (declare (not safe)) (_%g201299201409%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201309201806%_))
                                                      (let ((_%e201399201430%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl201309201806%_))))
                (let ((_%tl201401201435%_
                       (let () (declare (not safe)) (##cdr _%e201399201430%_)))
                      (_%hd201400201433%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201399201430%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201401201435%_))
                      (let ((_%e201402201438%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201401201435%_))))
                        (let ((_%tl201404201443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201402201438%_)))
                              (_%hd201403201441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201402201438%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201404201443%_))
                              (_%__kont205787205788%_
                               _%hd201403201441%_
                               _%hd201400201433%_
                               _%hd201308201804%_)
                              (let ()
                                (declare (not safe))
                                (_%g201299201409%_)))))
                      (let () (declare (not safe)) (_%g201299201409%_)))))
              (let () (declare (not safe)) (_%g201299201409%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd201311201812%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201312201814%_))
                                                      (let ((_%e201335201603%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl201312201814%_))))
                (let ((_%tl201337201608%_
                       (let () (declare (not safe)) (##cdr _%e201335201603%_)))
                      (_%hd201336201606%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201335201603%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd201336201606%_))
                      (let ((_%e201338201611%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd201336201606%_))))
                        (let ((_%tl201340201616%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201338201611%_)))
                              (_%hd201339201614%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201338201611%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd201339201614%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd201339201614%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201340201616%_))
                                      (let ((_%e201341201619%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201340201616%_))))
                                        (let ((_%tl201343201624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201341201619%_)))
                                              (_%hd201342201622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201341201619%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201343201624%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201337201608%_))
                                                  (let ((_%e201344201627%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201337201608%_))))
                                                    (let ((_%tl201346201632%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201344201627%_)))
                                                          (_%hd201345201630%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201344201627%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd201345201630%_))
                                                          (let ((_%e201347201635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd201345201630%_))))
                    (let ((_%tl201349201640%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201347201635%_)))
                          (_%hd201348201638%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201347201635%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd201348201638%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd201348201638%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201349201640%_))
                                  (let ((_%e201350201643%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201349201640%_))))
                                    (let ((_%tl201352201648%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201350201643%_)))
                                          (_%hd201351201646%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201350201643%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201352201648%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201346201632%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201309201806%_))
                                                  (let ((_%e201353201651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201309201806%_))))
                                                    (let ((_%tl201355201656%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201353201651%_)))
                                                          (_%hd201354201654%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201353201651%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201355201656%_))
                                                          (let ((_%e201356201659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201355201656%_))))
                    (let ((_%tl201358201664%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201356201659%_)))
                          (_%hd201357201662%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201356201659%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201358201664%_))
                          (_%__kont205783205784%_
                           _%hd201357201662%_
                           _%hd201354201654%_
                           _%hd201351201646%_
                           _%hd201342201622%_)
                          (let () (declare (not safe)) (_%g201299201409%_)))))
                  (let () (declare (not safe)) (_%g201299201409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201299201409%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201309201806%_))
                                                  (let ((_%e201399201430%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201309201806%_))))
                                                    (let ((_%tl201401201435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201399201430%_)))
                                                          (_%hd201400201433%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201399201430%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201401201435%_))
                                                          (let ((_%e201402201438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201401201435%_))))
                    (let ((_%tl201404201443%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201402201438%_)))
                          (_%hd201403201441%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201402201438%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201404201443%_))
                          (_%__kont205787205788%_
                           _%hd201403201441%_
                           _%hd201400201433%_
                           _%hd201308201804%_)
                          (let () (declare (not safe)) (_%g201299201409%_)))))
                  (let () (declare (not safe)) (_%g201299201409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201299201409%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201346201632%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201309201806%_))
                                                  (let ((_%e201384201527%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201309201806%_))))
                                                    (let ((_%tl201386201532%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201384201527%_)))
                                                          (_%hd201385201530%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201384201527%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201386201532%_))
                                                          (let ((_%e201387201535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201386201532%_))))
                    (let ((_%tl201389201540%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201387201535%_)))
                          (_%hd201388201538%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201387201535%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201389201540%_))
                          (_%__match205986205987%_
                           _%e201304201793%_
                           _%hd201305201796%_
                           _%tl201306201798%_
                           _%e201307201801%_
                           _%hd201308201804%_
                           _%tl201309201806%_
                           _%e201310201809%_
                           _%hd201311201812%_
                           _%tl201312201814%_
                           _%e201335201603%_
                           _%hd201336201606%_
                           _%tl201337201608%_
                           _%e201338201611%_
                           _%hd201339201614%_
                           _%tl201340201616%_
                           _%e201341201619%_
                           _%hd201342201622%_
                           _%tl201343201624%_
                           _%e201344201627%_
                           _%hd201345201630%_
                           _%tl201346201632%_
                           _%e201384201527%_
                           _%hd201385201530%_
                           _%tl201386201532%_
                           _%e201387201535%_
                           _%hd201388201538%_
                           _%tl201389201540%_)
                          (let () (declare (not safe)) (_%g201299201409%_)))))
                  (let () (declare (not safe)) (_%g201299201409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201299201409%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201309201806%_))
                                                  (let ((_%e201399201430%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201309201806%_))))
                                                    (let ((_%tl201401201435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201399201430%_)))
                                                          (_%hd201400201433%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201399201430%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201401201435%_))
                                                          (let ((_%e201402201438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201401201435%_))))
                    (let ((_%tl201404201443%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201402201438%_)))
                          (_%hd201403201441%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201402201438%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201404201443%_))
                          (_%__kont205787205788%_
                           _%hd201403201441%_
                           _%hd201400201433%_
                           _%hd201308201804%_)
                          (let () (declare (not safe)) (_%g201299201409%_)))))
                  (let () (declare (not safe)) (_%g201299201409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201299201409%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201346201632%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201309201806%_))
                                          (let ((_%e201384201527%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201309201806%_))))
                                            (let ((_%tl201386201532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201384201527%_)))
                                                  (_%hd201385201530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201384201527%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201386201532%_))
                                                  (let ((_%e201387201535%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201386201532%_))))
                                                    (let ((_%tl201389201540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201387201535%_)))
                                                          (_%hd201388201538%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201387201535%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201389201540%_))
                                                          (_%__match205986205987%_
                                                           _%e201304201793%_
                                                           _%hd201305201796%_
                                                           _%tl201306201798%_
                                                           _%e201307201801%_
                                                           _%hd201308201804%_
                                                           _%tl201309201806%_
                                                           _%e201310201809%_
                                                           _%hd201311201812%_
                                                           _%tl201312201814%_
                                                           _%e201335201603%_
                                                           _%hd201336201606%_
                                                           _%tl201337201608%_
                                                           _%e201338201611%_
                                                           _%hd201339201614%_
                                                           _%tl201340201616%_
                                                           _%e201341201619%_
                                                           _%hd201342201622%_
                                                           _%tl201343201624%_
                                                           _%e201344201627%_
                                                           _%hd201345201630%_
                                                           _%tl201346201632%_
                                                           _%e201384201527%_
                                                           _%hd201385201530%_
                                                           _%tl201386201532%_
                                                           _%e201387201535%_
                                                           _%hd201388201538%_
                                                           _%tl201389201540%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201299201409%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201299201409%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201299201409%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201309201806%_))
                                          (let ((_%e201399201430%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201309201806%_))))
                                            (let ((_%tl201401201435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201399201430%_)))
                                                  (_%hd201400201433%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201399201430%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201401201435%_))
                                                  (let ((_%e201402201438%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201401201435%_))))
                                                    (let ((_%tl201404201443%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201402201438%_)))
                                                          (_%hd201403201441%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201402201438%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201404201443%_))
                                                          (_%__kont205787205788%_
                                                           _%hd201403201441%_
                                                           _%hd201400201433%_
                                                           _%hd201308201804%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201299201409%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201299201409%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201299201409%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201346201632%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201309201806%_))
                                      (let ((_%e201384201527%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201309201806%_))))
                                        (let ((_%tl201386201532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201384201527%_)))
                                              (_%hd201385201530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201384201527%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201386201532%_))
                                              (let ((_%e201387201535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201386201532%_))))
                                                (let ((_%tl201389201540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201387201535%_)))
                                                      (_%hd201388201538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201387201535%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201389201540%_))
                                                      (_%__match205986205987%_
                                                       _%e201304201793%_
                                                       _%hd201305201796%_
                                                       _%tl201306201798%_
                                                       _%e201307201801%_
                                                       _%hd201308201804%_
                                                       _%tl201309201806%_
                                                       _%e201310201809%_
                                                       _%hd201311201812%_
                                                       _%tl201312201814%_
                                                       _%e201335201603%_
                                                       _%hd201336201606%_
                                                       _%tl201337201608%_
                                                       _%e201338201611%_
                                                       _%hd201339201614%_
                                                       _%tl201340201616%_
                                                       _%e201341201619%_
                                                       _%hd201342201622%_
                                                       _%tl201343201624%_
                                                       _%e201344201627%_
                                                       _%hd201345201630%_
                                                       _%tl201346201632%_
                                                       _%e201384201527%_
                                                       _%hd201385201530%_
                                                       _%tl201386201532%_
                                                       _%e201387201535%_
                                                       _%hd201388201538%_
                                                       _%tl201389201540%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201299201409%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201299201409%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201299201409%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201309201806%_))
                                      (let ((_%e201399201430%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201309201806%_))))
                                        (let ((_%tl201401201435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201399201430%_)))
                                              (_%hd201400201433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201399201430%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201401201435%_))
                                              (let ((_%e201402201438%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201401201435%_))))
                                                (let ((_%tl201404201443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201402201438%_)))
                                                      (_%hd201403201441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201402201438%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201404201443%_))
                                                      (_%__kont205787205788%_
                                                       _%hd201403201441%_
                                                       _%hd201400201433%_
                                                       _%hd201308201804%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201299201409%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201299201409%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201299201409%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201346201632%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201309201806%_))
                                  (let ((_%e201384201527%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201309201806%_))))
                                    (let ((_%tl201386201532%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201384201527%_)))
                                          (_%hd201385201530%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201384201527%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201386201532%_))
                                          (let ((_%e201387201535%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201386201532%_))))
                                            (let ((_%tl201389201540%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201387201535%_)))
                                                  (_%hd201388201538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201387201535%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201389201540%_))
                                                  (_%__match205986205987%_
                                                   _%e201304201793%_
                                                   _%hd201305201796%_
                                                   _%tl201306201798%_
                                                   _%e201307201801%_
                                                   _%hd201308201804%_
                                                   _%tl201309201806%_
                                                   _%e201310201809%_
                                                   _%hd201311201812%_
                                                   _%tl201312201814%_
                                                   _%e201335201603%_
                                                   _%hd201336201606%_
                                                   _%tl201337201608%_
                                                   _%e201338201611%_
                                                   _%hd201339201614%_
                                                   _%tl201340201616%_
                                                   _%e201341201619%_
                                                   _%hd201342201622%_
                                                   _%tl201343201624%_
                                                   _%e201344201627%_
                                                   _%hd201345201630%_
                                                   _%tl201346201632%_
                                                   _%e201384201527%_
                                                   _%hd201385201530%_
                                                   _%tl201386201532%_
                                                   _%e201387201535%_
                                                   _%hd201388201538%_
                                                   _%tl201389201540%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201299201409%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201299201409%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201299201409%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201309201806%_))
                                  (let ((_%e201399201430%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201309201806%_))))
                                    (let ((_%tl201401201435%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201399201430%_)))
                                          (_%hd201400201433%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201399201430%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201401201435%_))
                                          (let ((_%e201402201438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201401201435%_))))
                                            (let ((_%tl201404201443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201402201438%_)))
                                                  (_%hd201403201441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201402201438%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201404201443%_))
                                                  (_%__kont205787205788%_
                                                   _%hd201403201441%_
                                                   _%hd201400201433%_
                                                   _%hd201308201804%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201299201409%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201299201409%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201299201409%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201346201632%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201309201806%_))
                          (let ((_%e201384201527%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201309201806%_))))
                            (let ((_%tl201386201532%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201384201527%_)))
                                  (_%hd201385201530%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201384201527%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201386201532%_))
                                  (let ((_%e201387201535%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201386201532%_))))
                                    (let ((_%tl201389201540%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201387201535%_)))
                                          (_%hd201388201538%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201387201535%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201389201540%_))
                                          (_%__match205986205987%_
                                           _%e201304201793%_
                                           _%hd201305201796%_
                                           _%tl201306201798%_
                                           _%e201307201801%_
                                           _%hd201308201804%_
                                           _%tl201309201806%_
                                           _%e201310201809%_
                                           _%hd201311201812%_
                                           _%tl201312201814%_
                                           _%e201335201603%_
                                           _%hd201336201606%_
                                           _%tl201337201608%_
                                           _%e201338201611%_
                                           _%hd201339201614%_
                                           _%tl201340201616%_
                                           _%e201341201619%_
                                           _%hd201342201622%_
                                           _%tl201343201624%_
                                           _%e201344201627%_
                                           _%hd201345201630%_
                                           _%tl201346201632%_
                                           _%e201384201527%_
                                           _%hd201385201530%_
                                           _%tl201386201532%_
                                           _%e201387201535%_
                                           _%hd201388201538%_
                                           _%tl201389201540%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g201299201409%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201299201409%_)))))
                          (let () (declare (not safe)) (_%g201299201409%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201309201806%_))
                          (let ((_%e201399201430%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201309201806%_))))
                            (let ((_%tl201401201435%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201399201430%_)))
                                  (_%hd201400201433%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201399201430%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201401201435%_))
                                  (let ((_%e201402201438%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201401201435%_))))
                                    (let ((_%tl201404201443%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201402201438%_)))
                                          (_%hd201403201441%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201402201438%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201404201443%_))
                                          (_%__kont205787205788%_
                                           _%hd201403201441%_
                                           _%hd201400201433%_
                                           _%hd201308201804%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g201299201409%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201299201409%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g201299201409%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201309201806%_))
                                                      (let ((_%e201399201430%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl201309201806%_))))
                (let ((_%tl201401201435%_
                       (let () (declare (not safe)) (##cdr _%e201399201430%_)))
                      (_%hd201400201433%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201399201430%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201401201435%_))
                      (let ((_%e201402201438%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201401201435%_))))
                        (let ((_%tl201404201443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201402201438%_)))
                              (_%hd201403201441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201402201438%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201404201443%_))
                              (_%__kont205787205788%_
                               _%hd201403201441%_
                               _%hd201400201433%_
                               _%hd201308201804%_)
                              (let ()
                                (declare (not safe))
                                (_%g201299201409%_)))))
                      (let () (declare (not safe)) (_%g201299201409%_)))))
              (let () (declare (not safe)) (_%g201299201409%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201309201806%_))
                                                  (let ((_%e201399201430%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201309201806%_))))
                                                    (let ((_%tl201401201435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201399201430%_)))
                                                          (_%hd201400201433%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201399201430%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201401201435%_))
                                                          (let ((_%e201402201438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201401201435%_))))
                    (let ((_%tl201404201443%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201402201438%_)))
                          (_%hd201403201441%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201402201438%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201404201443%_))
                          (_%__kont205787205788%_
                           _%hd201403201441%_
                           _%hd201400201433%_
                           _%hd201308201804%_)
                          (let () (declare (not safe)) (_%g201299201409%_)))))
                  (let () (declare (not safe)) (_%g201299201409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201299201409%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201309201806%_))
                                          (let ((_%e201399201430%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201309201806%_))))
                                            (let ((_%tl201401201435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201399201430%_)))
                                                  (_%hd201400201433%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201399201430%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201401201435%_))
                                                  (let ((_%e201402201438%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201401201435%_))))
                                                    (let ((_%tl201404201443%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201402201438%_)))
                                                          (_%hd201403201441%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201402201438%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201404201443%_))
                                                          (_%__kont205787205788%_
                                                           _%hd201403201441%_
                                                           _%hd201400201433%_
                                                           _%hd201308201804%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201299201409%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201299201409%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201299201409%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201309201806%_))
                                      (let ((_%e201399201430%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201309201806%_))))
                                        (let ((_%tl201401201435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201399201430%_)))
                                              (_%hd201400201433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201399201430%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201401201435%_))
                                              (let ((_%e201402201438%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201401201435%_))))
                                                (let ((_%tl201404201443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201402201438%_)))
                                                      (_%hd201403201441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201402201438%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201404201443%_))
                                                      (_%__kont205787205788%_
                                                       _%hd201403201441%_
                                                       _%hd201400201433%_
                                                       _%hd201308201804%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201299201409%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201299201409%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201299201409%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201309201806%_))
                                  (let ((_%e201399201430%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201309201806%_))))
                                    (let ((_%tl201401201435%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201399201430%_)))
                                          (_%hd201400201433%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201399201430%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201401201435%_))
                                          (let ((_%e201402201438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201401201435%_))))
                                            (let ((_%tl201404201443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201402201438%_)))
                                                  (_%hd201403201441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201402201438%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201404201443%_))
                                                  (_%__kont205787205788%_
                                                   _%hd201403201441%_
                                                   _%hd201400201433%_
                                                   _%hd201308201804%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201299201409%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201299201409%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201299201409%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201309201806%_))
                          (let ((_%e201399201430%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201309201806%_))))
                            (let ((_%tl201401201435%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201399201430%_)))
                                  (_%hd201400201433%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201399201430%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201401201435%_))
                                  (let ((_%e201402201438%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201401201435%_))))
                                    (let ((_%tl201404201443%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201402201438%_)))
                                          (_%hd201403201441%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201402201438%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201404201443%_))
                                          (_%__kont205787205788%_
                                           _%hd201403201441%_
                                           _%hd201400201433%_
                                           _%hd201308201804%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g201299201409%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201299201409%_)))))
                          (let () (declare (not safe)) (_%g201299201409%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl201309201806%_))
                  (let ((_%e201399201430%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201309201806%_))))
                    (let ((_%tl201401201435%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201399201430%_)))
                          (_%hd201400201433%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201399201430%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201401201435%_))
                          (let ((_%e201402201438%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201401201435%_))))
                            (let ((_%tl201404201443%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201402201438%_)))
                                  (_%hd201403201441%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201402201438%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201404201443%_))
                                  (_%__kont205787205788%_
                                   _%hd201403201441%_
                                   _%hd201400201433%_
                                   _%hd201308201804%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g201299201409%_)))))
                          (let () (declare (not safe)) (_%g201299201409%_)))))
                  (let () (declare (not safe)) (_%g201299201409%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201309201806%_))
                                                      (let ((_%e201399201430%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl201309201806%_))))
                (let ((_%tl201401201435%_
                       (let () (declare (not safe)) (##cdr _%e201399201430%_)))
                      (_%hd201400201433%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201399201430%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201401201435%_))
                      (let ((_%e201402201438%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201401201435%_))))
                        (let ((_%tl201404201443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201402201438%_)))
                              (_%hd201403201441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201402201438%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201404201443%_))
                              (_%__kont205787205788%_
                               _%hd201403201441%_
                               _%hd201400201433%_
                               _%hd201308201804%_)
                              (let ()
                                (declare (not safe))
                                (_%g201299201409%_)))))
                      (let () (declare (not safe)) (_%g201299201409%_)))))
              (let () (declare (not safe)) (_%g201299201409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201309201806%_))
                                              (let ((_%e201399201430%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201309201806%_))))
                                                (let ((_%tl201401201435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201399201430%_)))
                                                      (_%hd201400201433%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201399201430%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201401201435%_))
                                                      (let ((_%e201402201438%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl201401201435%_))))
                (let ((_%tl201404201443%_
                       (let () (declare (not safe)) (##cdr _%e201402201438%_)))
                      (_%hd201403201441%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201402201438%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201404201443%_))
                      (_%__kont205787205788%_
                       _%hd201403201441%_
                       _%hd201400201433%_
                       _%hd201308201804%_)
                      (let () (declare (not safe)) (_%g201299201409%_)))))
              (let () (declare (not safe)) (_%g201299201409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201299201409%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201309201806%_))
                                      (let ((_%e201399201430%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201309201806%_))))
                                        (let ((_%tl201401201435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201399201430%_)))
                                              (_%hd201400201433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201399201430%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201401201435%_))
                                              (let ((_%e201402201438%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201401201435%_))))
                                                (let ((_%tl201404201443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201402201438%_)))
                                                      (_%hd201403201441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201402201438%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201404201443%_))
                                                      (_%__kont205787205788%_
                                                       _%hd201403201441%_
                                                       _%hd201400201433%_
                                                       _%hd201308201804%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201299201409%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201299201409%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201299201409%_))))))
                          (let () (declare (not safe)) (_%g201299201409%_)))))
                  (let () (declare (not safe)) (_%g201299201409%_))))))))))
