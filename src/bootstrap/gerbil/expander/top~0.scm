(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1771092628)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx181789%_)
        (letrec ((_%expand-special181791%_
                  (lambda (_%hd181793%_ _%K181794%_ _%rest181795%_ _%r181796%_)
                    (_%K181794%_
                     _%rest181795%_
                     (cons (gx#core-expand-top _%hd181793%_) _%r181796%_)))))
          (gx#core-expand-block__0 _%stx181789%_ _%expand-special181791%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx181483%_)
        (letrec ((_%expand-special181485%_
                  (lambda (_%hd181607%_ _%K181608%_ _%rest181609%_ _%r181610%_)
                    (let* ((_%K181614%_
                            (lambda (_%e181612%_)
                              (_%K181608%_
                               _%rest181609%_
                               (cons _%e181612%_ _%r181610%_))))
                           (_%e181615181657%_ _%hd181607%_)
                           (_%E181652181661%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e181615181657%_)))
                           (_%E181648181673%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181615181657%_)
                                  (let ((_%e181653181665%_
                                         (gx#syntax-e _%e181615181657%_)))
                                    (let ((_%hd181654181668%_
                                           (##car _%e181653181665%_))
                                          (_%tl181655181670%_
                                           (##cdr _%e181653181665%_)))
                                      (if (and (gx#identifier?
                                                _%hd181654181668%_)
                                               (gx#core-identifier=?
                                                _%hd181654181668%_
                                                '%#define-runtime))
                                          (_%K181614%_
                                           (gx#core-expand-define-runtime%
                                            _%hd181607%_))
                                          (_%E181652181661%_))))
                                  (_%E181652181661%_))))
                           (_%E181644181685%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181615181657%_)
                                  (let ((_%e181649181677%_
                                         (gx#syntax-e _%e181615181657%_)))
                                    (let ((_%hd181650181680%_
                                           (##car _%e181649181677%_))
                                          (_%tl181651181682%_
                                           (##cdr _%e181649181677%_)))
                                      (if (and (gx#identifier?
                                                _%hd181650181680%_)
                                               (gx#core-identifier=?
                                                _%hd181650181680%_
                                                '%#define-alias))
                                          (_%K181614%_
                                           (gx#core-expand-define-alias%
                                            _%hd181607%_))
                                          (_%E181648181673%_))))
                                  (_%E181648181673%_))))
                           (_%E181634181697%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181615181657%_)
                                  (let ((_%e181645181689%_
                                         (gx#syntax-e _%e181615181657%_)))
                                    (let ((_%hd181646181692%_
                                           (##car _%e181645181689%_))
                                          (_%tl181647181694%_
                                           (##cdr _%e181645181689%_)))
                                      (if (and (gx#identifier?
                                                _%hd181646181692%_)
                                               (gx#core-identifier=?
                                                _%hd181646181692%_
                                                '%#define-syntax))
                                          (_%K181614%_
                                           (gx#core-expand-define-syntax%
                                            _%hd181607%_))
                                          (_%E181644181685%_))))
                                  (_%E181644181685%_))))
                           (_%E181621181729%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181615181657%_)
                                  (let ((_%e181635181701%_
                                         (gx#syntax-e _%e181615181657%_)))
                                    (let ((_%hd181636181704%_
                                           (##car _%e181635181701%_))
                                          (_%tl181637181706%_
                                           (##cdr _%e181635181701%_)))
                                      (if (and (gx#identifier?
                                                _%hd181636181704%_)
                                               (gx#core-identifier=?
                                                _%hd181636181704%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181637181706%_)
                                              (let ((_%e181638181709%_
                                                     (gx#syntax-e
                                                      _%tl181637181706%_)))
                                                (let ((_%hd181639181712%_
                                                       (##car _%e181638181709%_))
                                                      (_%tl181640181714%_
                                                       (##cdr _%e181638181709%_)))
                                                  (let ((_%hd-bind181717%_
                                                         _%hd181639181712%_))
                                                    (if (gx#stx-pair?
                                                         _%tl181640181714%_)
                                                        (let ((_%e181641181719%_
                                                               (gx#syntax-e
                                                                _%tl181640181714%_)))
                                                          (let ((_%hd181642181722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e181641181719%_))
                        (_%tl181643181724%_ (##cdr _%e181641181719%_)))
                    (let ((_%expr181727%_ _%hd181642181722%_))
                      (if (gx#stx-null? _%tl181643181724%_)
                          (if (gx#core-bind-values? _%hd-bind181717%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind181717%_)
                                (_%K181614%_ _%hd181607%_))
                              (_%E181634181697%_))
                          (_%E181634181697%_)))))
                (_%E181634181697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181634181697%_))
                                          (_%E181634181697%_))))
                                  (_%E181634181697%_))))
                           (_%E181617181773%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181615181657%_)
                                  (let ((_%e181622181733%_
                                         (gx#syntax-e _%e181615181657%_)))
                                    (let ((_%hd181623181736%_
                                           (##car _%e181622181733%_))
                                          (_%tl181624181738%_
                                           (##cdr _%e181622181733%_)))
                                      (if (and (gx#identifier?
                                                _%hd181623181736%_)
                                               (gx#core-identifier=?
                                                _%hd181623181736%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181624181738%_)
                                              (let ((_%e181625181741%_
                                                     (gx#syntax-e
                                                      _%tl181624181738%_)))
                                                (let ((_%hd181626181744%_
                                                       (##car _%e181625181741%_))
                                                      (_%tl181627181746%_
                                                       (##cdr _%e181625181741%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd181626181744%_)
                                                      (let ((_%e181631181749%_
                                                             (gx#syntax-e
                                                              _%hd181626181744%_)))
                                                        (let ((_%hd181632181752%_
                                                               (##car _%e181631181749%_))
                                                              (_%tl181633181754%_
                                                               (##cdr _%e181631181749%_)))
                                                          (let ((_%id181757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd181632181752%_))
                    (if (gx#stx-null? _%tl181633181754%_)
                        (if (gx#stx-pair? _%tl181627181746%_)
                            (let ((_%e181628181759%_
                                   (gx#syntax-e _%tl181627181746%_)))
                              (let ((_%hd181629181762%_
                                     (##car _%e181628181759%_))
                                    (_%tl181630181764%_
                                     (##cdr _%e181628181759%_)))
                                (let* ((_%expr181767%_ _%hd181629181762%_)
                                       (_%props181769%_ _%tl181630181764%_))
                                  (if (gx#identifier? _%id181757%_)
                                      (let ((_%bind181771%_
                                             (gx#core-bind-runtime!__0
                                              _%id181757%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind181771%_
                                         _%props181769%_)
                                        (_%K181614%_ _%hd181607%_))
                                      (_%E181621181729%_)))))
                            (_%E181621181729%_))
                        (_%E181621181729%_)))))
              (_%E181621181729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181621181729%_))
                                          (_%E181621181729%_))))
                                  (_%E181621181729%_))))
                           (_%E181616181785%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181615181657%_)
                                  (let ((_%e181618181777%_
                                         (gx#syntax-e _%e181615181657%_)))
                                    (let ((_%hd181619181780%_
                                           (##car _%e181618181777%_))
                                          (_%tl181620181782%_
                                           (##cdr _%e181618181777%_)))
                                      (if (and (gx#identifier?
                                                _%hd181619181780%_)
                                               (gx#core-identifier=?
                                                _%hd181619181780%_
                                                '%#begin-syntax))
                                          (_%K181614%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd181607%_))
                                          (_%E181617181773%_))))
                                  (_%E181617181773%_)))))
                      (_%E181616181785%_))))
                 (_%eval-body181486%_
                  (lambda (_%rbody181494%_)
                    (let _%lp181496%_ ((_%rest181498%_ _%rbody181494%_)
                                       (_%body181499%_ '())
                                       (_%ebody181500%_ '()))
                      (let* ((_%rest181501181509%_ _%rest181498%_)
                             (_%else181503181517%_
                              (lambda ()
                                (values _%body181499%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody181500%_)
                                          (gx#stx-source _%stx181483%_))))))
                             (_%K181505181595%_
                              (lambda (_%rest181520%_ _%hd181521%_)
                                (let* ((_%e181522181539%_ _%hd181521%_)
                                       (_%E181534181543%_
                                        (lambda ()
                                          (_%lp181496%_
                                           _%rest181520%_
                                           (cons _%hd181521%_ _%body181499%_)
                                           (cons _%hd181521%_
                                                 _%ebody181500%_))))
                                       (_%E181524181555%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e181522181539%_)
                                              (let ((_%e181535181547%_
                                                     (gx#syntax-e
                                                      _%e181522181539%_)))
                                                (let ((_%hd181536181550%_
                                                       (##car _%e181535181547%_))
                                                      (_%tl181537181552%_
                                                       (##cdr _%e181535181547%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd181536181550%_)
                                                           (gx#core-identifier=?
                                                            _%hd181536181550%_
                                                            '%#begin-syntax))
                                                      (_%lp181496%_
                                                       _%rest181520%_
                                                       (cons _%hd181521%_
                                                             _%body181499%_)
                                                       _%ebody181500%_)
                                                      (_%E181534181543%_))))
                                              (_%E181534181543%_))))
                                       (_%E181523181591%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e181522181539%_)
                                              (let ((_%e181525181559%_
                                                     (gx#syntax-e
                                                      _%e181522181539%_)))
                                                (let ((_%hd181526181562%_
                                                       (##car _%e181525181559%_))
                                                      (_%tl181527181564%_
                                                       (##cdr _%e181525181559%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd181526181562%_)
                                                           (gx#core-identifier=?
                                                            _%hd181526181562%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl181527181564%_)
                                                          (let ((_%e181528181567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl181527181564%_)))
                    (let ((_%hd181529181570%_ (##car _%e181528181567%_))
                          (_%tl181530181572%_ (##cdr _%e181528181567%_)))
                      (let ((_%hd-bind181575%_ _%hd181529181570%_))
                        (if (gx#stx-pair? _%tl181530181572%_)
                            (let ((_%e181531181577%_
                                   (gx#syntax-e _%tl181530181572%_)))
                              (let ((_%hd181532181580%_
                                     (##car _%e181531181577%_))
                                    (_%tl181533181582%_
                                     (##cdr _%e181531181577%_)))
                                (let* ((_%expr181585%_ _%hd181532181580%_)
                                       (_%ignore-props181587%_
                                        _%tl181533181582%_)
                                       (_%ehd181589%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind181575%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr181585%_)
                                                           '())))
                                         (gx#stx-source _%hd181521%_))))
                                  (_%lp181496%_
                                   _%rest181520%_
                                   (cons _%ehd181589%_ _%body181499%_)
                                   (cons _%ehd181589%_ _%ebody181500%_)))))
                            (_%E181524181555%_)))))
                  (_%E181524181555%_))
              (_%E181524181555%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181524181555%_)))))
                                  (_%E181523181591%_)))))
                        (if (pair? _%rest181501181509%_)
                            (let ((_%hd181506181598%_
                                   (##car _%rest181501181509%_))
                                  (_%tl181507181600%_
                                   (##cdr _%rest181501181509%_)))
                              (let* ((_%hd181603%_ _%hd181506181598%_)
                                     (_%rest181605%_ _%tl181507181600%_))
                                (_%K181505181595%_
                                 _%rest181605%_
                                 _%hd181603%_)))
                            (_%else181503181517%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody181489%_
                     (gx#core-expand-block__1
                      _%stx181483%_
                      _%expand-special181485%_
                      '#f))
                    (_g181822_ (_%eval-body181486%_ _%rbody181489%_)))
               (begin
                 (let ((_g181823_
                        (if (##values? _g181822_)
                            (##values-length _g181822_)
                            1)))
                   (if (not (##fx= _g181823_ 2))
                       (error "Context expects 2 values" _g181823_)))
                 (let ((_%expanded-body181491%_ (##values-ref _g181822_ 0))
                       (_%value181492%_ (##values-ref _g181822_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body181491%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value181492%_ '())))
                    (gx#stx-source _%stx181483%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx181453%_)
        (let* ((_%e181454181461%_ _%stx181453%_)
               (_%E181456181465%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181454181461%_)))
               (_%E181455181479%_
                (lambda ()
                  (if (gx#stx-pair? _%e181454181461%_)
                      (let ((_%e181457181469%_
                             (gx#syntax-e _%e181454181461%_)))
                        (let ((_%hd181458181472%_ (##car _%e181457181469%_))
                              (_%tl181459181474%_ (##cdr _%e181457181469%_)))
                          (let ((_%body181477%_ _%tl181459181474%_))
                            (if (gx#stx-list? _%body181477%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body181477%_)
                                 (gx#stx-source _%stx181453%_))
                                (_%E181456181465%_)))))
                      (_%E181456181465%_)))))
          (_%E181455181479%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx181451%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx181451%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx181397%_)
        (let* ((_%e181398181411%_ _%stx181397%_)
               (_%E181400181415%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181398181411%_)))
               (_%E181399181447%_
                (lambda ()
                  (if (gx#stx-pair? _%e181398181411%_)
                      (let ((_%e181401181419%_
                             (gx#syntax-e _%e181398181411%_)))
                        (let ((_%hd181402181422%_ (##car _%e181401181419%_))
                              (_%tl181403181424%_ (##cdr _%e181401181419%_)))
                          (if (gx#stx-pair? _%tl181403181424%_)
                              (let ((_%e181404181427%_
                                     (gx#syntax-e _%tl181403181424%_)))
                                (let ((_%hd181405181430%_
                                       (##car _%e181404181427%_))
                                      (_%tl181406181432%_
                                       (##cdr _%e181404181427%_)))
                                  (let ((_%ann181435%_ _%hd181405181430%_))
                                    (if (gx#stx-pair? _%tl181406181432%_)
                                        (let ((_%e181407181437%_
                                               (gx#syntax-e
                                                _%tl181406181432%_)))
                                          (let ((_%hd181408181440%_
                                                 (##car _%e181407181437%_))
                                                (_%tl181409181442%_
                                                 (##cdr _%e181407181437%_)))
                                            (let ((_%expr181445%_
                                                   _%hd181408181440%_))
                                              (if (gx#stx-null?
                                                   _%tl181409181442%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann181435%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr181445%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx181397%_))
                                                  (_%E181400181415%_)))))
                                        (_%E181400181415%_)))))
                              (_%E181400181415%_))))
                      (_%E181400181415%_)))))
          (_%E181399181447%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx181062%_ _%body181063%_)
        (letrec ((_%expand-special181065%_
                  (lambda (_%hd181392%_ _%K181393%_ _%rest181394%_ _%r181395%_)
                    (_%K181393%_
                     '()
                     (cons (_%expand-internal181066%_
                            _%hd181392%_
                            _%rest181394%_)
                           _%r181395%_))))
                 (_%expand-internal181066%_
                  (lambda (_%hd181388%_ _%rest181389%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal181068%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd181388%_ _%rest181389%_))
                          (gx#stx-source _%stx181062%_))
                         _%expand-internal-special181067%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj181806
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj181806)
                       __obj181806))))
                 (_%expand-internal-special181067%_
                  (lambda (_%hd181226%_ _%K181227%_ _%rest181228%_ _%r181229%_)
                    (let* ((_%e181230181268%_ _%hd181226%_)
                           (_%E181263181272%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e181230181268%_)))
                           (_%E181259181284%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181230181268%_)
                                  (let ((_%e181264181276%_
                                         (gx#syntax-e _%e181230181268%_)))
                                    (let ((_%hd181265181279%_
                                           (##car _%e181264181276%_))
                                          (_%tl181266181281%_
                                           (##cdr _%e181264181276%_)))
                                      (if (and (gx#identifier?
                                                _%hd181265181279%_)
                                               (gx#core-identifier=?
                                                _%hd181265181279%_
                                                '%#declare))
                                          (_%K181227%_
                                           _%rest181228%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd181226%_)
                                                 _%r181229%_))
                                          (_%E181263181272%_))))
                                  (_%E181263181272%_))))
                           (_%E181255181296%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181230181268%_)
                                  (let ((_%e181260181288%_
                                         (gx#syntax-e _%e181230181268%_)))
                                    (let ((_%hd181261181291%_
                                           (##car _%e181260181288%_))
                                          (_%tl181262181293%_
                                           (##cdr _%e181260181288%_)))
                                      (if (and (gx#identifier?
                                                _%hd181261181291%_)
                                               (gx#core-identifier=?
                                                _%hd181261181291%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd181226%_)
                                            (_%K181227%_
                                             _%rest181228%_
                                             _%r181229%_))
                                          (_%E181259181284%_))))
                                  (_%E181259181284%_))))
                           (_%E181245181308%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181230181268%_)
                                  (let ((_%e181256181300%_
                                         (gx#syntax-e _%e181230181268%_)))
                                    (let ((_%hd181257181303%_
                                           (##car _%e181256181300%_))
                                          (_%tl181258181305%_
                                           (##cdr _%e181256181300%_)))
                                      (if (and (gx#identifier?
                                                _%hd181257181303%_)
                                               (gx#core-identifier=?
                                                _%hd181257181303%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd181226%_)
                                            (_%K181227%_
                                             _%rest181228%_
                                             _%r181229%_))
                                          (_%E181255181296%_))))
                                  (_%E181255181296%_))))
                           (_%E181232181340%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181230181268%_)
                                  (let ((_%e181246181312%_
                                         (gx#syntax-e _%e181230181268%_)))
                                    (let ((_%hd181247181315%_
                                           (##car _%e181246181312%_))
                                          (_%tl181248181317%_
                                           (##cdr _%e181246181312%_)))
                                      (if (and (gx#identifier?
                                                _%hd181247181315%_)
                                               (gx#core-identifier=?
                                                _%hd181247181315%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181248181317%_)
                                              (let ((_%e181249181320%_
                                                     (gx#syntax-e
                                                      _%tl181248181317%_)))
                                                (let ((_%hd181250181323%_
                                                       (##car _%e181249181320%_))
                                                      (_%tl181251181325%_
                                                       (##cdr _%e181249181320%_)))
                                                  (let ((_%hd-bind181328%_
                                                         _%hd181250181323%_))
                                                    (if (gx#stx-pair?
                                                         _%tl181251181325%_)
                                                        (let ((_%e181252181330%_
                                                               (gx#syntax-e
                                                                _%tl181251181325%_)))
                                                          (let ((_%hd181253181333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e181252181330%_))
                        (_%tl181254181335%_ (##cdr _%e181252181330%_)))
                    (let ((_%expr181338%_ _%hd181253181333%_))
                      (if (gx#stx-null? _%tl181254181335%_)
                          (if (gx#core-bind-values? _%hd-bind181328%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind181328%_)
                                (_%K181227%_
                                 _%rest181228%_
                                 (cons _%hd181226%_ _%r181229%_)))
                              (_%E181245181308%_))
                          (_%E181245181308%_)))))
                (_%E181245181308%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181245181308%_))
                                          (_%E181245181308%_))))
                                  (_%E181245181308%_))))
                           (_%E181231181384%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181230181268%_)
                                  (let ((_%e181233181344%_
                                         (gx#syntax-e _%e181230181268%_)))
                                    (let ((_%hd181234181347%_
                                           (##car _%e181233181344%_))
                                          (_%tl181235181349%_
                                           (##cdr _%e181233181344%_)))
                                      (if (and (gx#identifier?
                                                _%hd181234181347%_)
                                               (gx#core-identifier=?
                                                _%hd181234181347%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181235181349%_)
                                              (let ((_%e181236181352%_
                                                     (gx#syntax-e
                                                      _%tl181235181349%_)))
                                                (let ((_%hd181237181355%_
                                                       (##car _%e181236181352%_))
                                                      (_%tl181238181357%_
                                                       (##cdr _%e181236181352%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd181237181355%_)
                                                      (let ((_%e181242181360%_
                                                             (gx#syntax-e
                                                              _%hd181237181355%_)))
                                                        (let ((_%hd181243181363%_
                                                               (##car _%e181242181360%_))
                                                              (_%tl181244181365%_
                                                               (##cdr _%e181242181360%_)))
                                                          (let ((_%id181368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd181243181363%_))
                    (if (gx#stx-null? _%tl181244181365%_)
                        (if (gx#stx-pair? _%tl181238181357%_)
                            (let ((_%e181239181370%_
                                   (gx#syntax-e _%tl181238181357%_)))
                              (let ((_%hd181240181373%_
                                     (##car _%e181239181370%_))
                                    (_%tl181241181375%_
                                     (##cdr _%e181239181370%_)))
                                (let* ((_%expr181378%_ _%hd181240181373%_)
                                       (_%props181380%_ _%tl181241181375%_))
                                  (if (gx#identifier? _%id181368%_)
                                      (let ((_%bind181382%_
                                             (gx#core-bind-runtime!__0
                                              _%id181368%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind181382%_
                                         _%props181380%_)
                                        (_%K181227%_
                                         _%rest181228%_
                                         (cons _%hd181226%_ _%r181229%_)))
                                      (_%E181232181340%_)))))
                            (_%E181232181340%_))
                        (_%E181232181340%_)))))
              (_%E181232181340%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181232181340%_))
                                          (_%E181232181340%_))))
                                  (_%E181232181340%_)))))
                      (_%E181231181384%_))))
                 (_%wrap-internal181068%_
                  (lambda (_%rbody181070%_)
                    (let _%lp181072%_ ((_%rest181074%_ _%rbody181070%_)
                                       (_%decls181075%_ '())
                                       (_%bind181076%_ '())
                                       (_%body181077%_ '()))
                      (let* ((_%e181078181085%_ _%rest181074%_)
                             (_%E181080181134%_
                              (lambda ()
                                (let* ((_%body181129%_
                                        (let* ((_%body181088181098%_
                                                _%body181077%_)
                                               (_%else181091181106%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body181077%_)
                                                   (gx#stx-source
                                                    _%stx181062%_)))))
                                          (let ((_%K181096181126%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx181062%_)))
                                                (_%K181093181112%_
                                                 (lambda (_%expr181110%_)
                                                   _%expr181110%_)))
                                            (let ((_%try-match181090181122%_
                                                   (lambda ()
                                                     (if (pair? _%body181088181098%_)
                                                         (let ((_%tl181095181117%_
                                                                (##cdr _%body181088181098%_))
                                                               (_%hd181094181115%_
                                                                (##car _%body181088181098%_)))
                                                           (if (null? _%tl181095181117%_)
                                                               (let ((_%expr181120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd181094181115%_))
                         (_%K181093181112%_ _%expr181120%_))
                       (_%else181091181106%_)))
                 (_%else181091181106%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body181088181098%_)
                                                  (_%K181096181126%_)
                                                  (_%try-match181090181122%_))))))
                                       (_%body181131%_
                                        (if (null? _%bind181076%_)
                                            _%body181129%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind181076%_
                                                         (cons _%body181129%_
                                                               '())))
                                             (gx#stx-source _%stx181062%_)))))
                                  (if (null? _%decls181075%_)
                                      _%body181131%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls181075%_
                                                   (cons _%body181131%_ '())))
                                       (gx#stx-source _%stx181062%_))))))
                             (_%E181079181222%_
                              (lambda ()
                                (if (gx#stx-pair? _%e181078181085%_)
                                    (let ((_%e181081181138%_
                                           (gx#syntax-e _%e181078181085%_)))
                                      (let ((_%hd181082181141%_
                                             (##car _%e181081181138%_))
                                            (_%tl181083181143%_
                                             (##cdr _%e181081181138%_)))
                                        (let* ((_%hd181146%_
                                                _%hd181082181141%_)
                                               (_%rest181148%_
                                                _%tl181083181143%_)
                                               (_%e181149181166%_ _%hd181146%_)
                                               (_%E181161181170%_
                                                (lambda ()
                                                  (if (null? _%bind181076%_)
                                                      (_%lp181072%_
                                                       _%rest181148%_
                                                       _%decls181075%_
                                                       _%bind181076%_
                                                       (cons _%hd181146%_
                                                             _%body181077%_))
                                                      (_%lp181072%_
                                                       _%rest181148%_
                                                       _%decls181075%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd181146%_ '()))
                     _%bind181076%_)
               _%body181077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E181151181184%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e181149181166%_)
                                                      (let ((_%e181162181174%_
                                                             (gx#syntax-e
                                                              _%e181149181166%_)))
                                                        (let ((_%hd181163181177%_
                                                               (##car _%e181162181174%_))
                                                              (_%tl181164181179%_
                                                               (##cdr _%e181162181174%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd181163181177%_)
                           (gx#core-identifier=?
                            _%hd181163181177%_
                            '%#declare))
                      (let ((_%xdecls181182%_ _%tl181164181179%_))
                        (_%lp181072%_
                         _%rest181148%_
                         (gx#stx-foldr cons _%decls181075%_ _%xdecls181182%_)
                         _%bind181076%_
                         _%body181077%_))
                      (_%E181161181170%_))))
              (_%E181161181170%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E181150181218%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e181149181166%_)
                                                      (let ((_%e181152181188%_
                                                             (gx#syntax-e
                                                              _%e181149181166%_)))
                                                        (let ((_%hd181153181191%_
                                                               (##car _%e181152181188%_))
                                                              (_%tl181154181193%_
                                                               (##cdr _%e181152181188%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd181153181191%_)
                           (gx#core-identifier=?
                            _%hd181153181191%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl181154181193%_)
                          (let ((_%e181155181196%_
                                 (gx#syntax-e _%tl181154181193%_)))
                            (let ((_%hd181156181199%_
                                   (##car _%e181155181196%_))
                                  (_%tl181157181201%_
                                   (##cdr _%e181155181196%_)))
                              (let ((_%hd-bind181204%_ _%hd181156181199%_))
                                (if (gx#stx-pair? _%tl181157181201%_)
                                    (let ((_%e181158181206%_
                                           (gx#syntax-e _%tl181157181201%_)))
                                      (let ((_%hd181159181209%_
                                             (##car _%e181158181206%_))
                                            (_%tl181160181211%_
                                             (##cdr _%e181158181206%_)))
                                        (let* ((_%expr181214%_
                                                _%hd181159181209%_)
                                               (_%ignore-props181216%_
                                                _%tl181160181211%_))
                                          (_%lp181072%_
                                           _%rest181148%_
                                           _%decls181075%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind181204%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr181214%_)
                                                             '()))
                                                 _%bind181076%_)
                                           _%body181077%_))))
                                    (_%E181151181184%_)))))
                          (_%E181151181184%_))
                      (_%E181151181184%_))))
              (_%E181151181184%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E181150181218%_))))
                                    (_%E181080181134%_)))))
                        (_%E181079181222%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body181063%_)
            (gx#stx-source _%stx181062%_))
           _%expand-special181065%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx181000%_)
        (let* ((_%e181001181008%_ _%stx181000%_)
               (_%E181003181012%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181001181008%_)))
               (_%E181002181058%_
                (lambda ()
                  (if (gx#stx-pair? _%e181001181008%_)
                      (let ((_%e181004181016%_
                             (gx#syntax-e _%e181001181008%_)))
                        (let ((_%hd181005181019%_ (##car _%e181004181016%_))
                              (_%tl181006181021%_ (##cdr _%e181004181016%_)))
                          (let ((_%body181024%_ _%tl181006181021%_))
                            (if (gx#stx-list? _%body181024%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl181026%_)
                                     (let* ((_%e181027181034%_ _%decl181026%_)
                                            (_%E181029181038%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e181027181034%_)))
                                            (_%E181028181054%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e181027181034%_)
                                                   (let ((_%e181030181042%_
                                                          (gx#syntax-e
                                                           _%e181027181034%_)))
                                                     (let ((_%hd181031181045%_
                                                            (##car _%e181030181042%_))
                                                           (_%tl181032181047%_
                                                            (##cdr _%e181030181042%_)))
                                                       (let* ((_%head181050%_
                                                               _%hd181031181045%_)
                                                              (_%args181052%_
                                                               _%tl181032181047%_))
                                                         (if (gx#stx-list?
                                                              _%args181052%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl181026%_)
                                                             (_%E181029181038%_)))))
                                                   (_%E181029181038%_)))))
                                       (_%E181028181054%_)))
                                   _%body181024%_))
                                 (gx#stx-source _%stx181000%_))
                                (_%E181003181012%_)))))
                      (_%E181003181012%_)))))
          (_%E181002181058%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx180904%_)
        (let* ((_%e180905180912%_ _%stx180904%_)
               (_%E180907180916%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180905180912%_)))
               (_%E180906180996%_
                (lambda ()
                  (if (gx#stx-pair? _%e180905180912%_)
                      (let ((_%e180908180920%_
                             (gx#syntax-e _%e180905180912%_)))
                        (let ((_%hd180909180923%_ (##car _%e180908180920%_))
                              (_%tl180910180925%_ (##cdr _%e180908180920%_)))
                          (let ((_%body180928%_ _%tl180910180925%_))
                            (let _%lp180930%_ ((_%rest180932%_ _%body180928%_)
                                               (_%r180933%_ '()))
                              (let* ((_%e180934180948%_ _%rest180932%_)
                                     (_%E180946180952%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx180904%_)))
                                     (_%E180936180956%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e180934180948%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r180933%_))
                                             (gx#stx-source _%stx180904%_))
                                            (_%E180946180952%_))))
                                     (_%E180935180992%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e180934180948%_)
                                            (let ((_%e180937180960%_
                                                   (gx#syntax-e
                                                    _%e180934180948%_)))
                                              (let ((_%hd180938180963%_
                                                     (##car _%e180937180960%_))
                                                    (_%tl180939180965%_
                                                     (##cdr _%e180937180960%_)))
                                                (if (gx#stx-pair?
                                                     _%hd180938180963%_)
                                                    (let ((_%e180940180968%_
                                                           (gx#syntax-e
                                                            _%hd180938180963%_)))
                                                      (let ((_%hd180941180971%_
                                                             (##car _%e180940180968%_))
                                                            (_%tl180942180973%_
                                                             (##cdr _%e180940180968%_)))
                                                        (let ((_%id180976%_
                                                               _%hd180941180971%_))
                                                          (if (gx#stx-pair?
                                                               _%tl180942180973%_)
                                                              (let ((_%e180943180978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl180942180973%_)))
                        (let ((_%hd180944180981%_ (##car _%e180943180978%_))
                              (_%tl180945180983%_ (##cdr _%e180943180978%_)))
                          (let ((_%eid180986%_ _%hd180944180981%_))
                            (if (gx#stx-null? _%tl180945180983%_)
                                (let ((_%rest180988%_ _%tl180939180965%_))
                                  (if (and (gx#identifier? _%id180976%_)
                                           (gx#identifier? _%eid180986%_))
                                      (let ((_%eid180990%_
                                             (gx#stx-e _%eid180986%_)))
                                        (gx#core-bind-extern!__0
                                         _%id180976%_
                                         _%eid180990%_)
                                        (_%lp180930%_
                                         _%rest180988%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id180976%_)
                                                     (cons _%eid180990%_ '()))
                                               _%r180933%_)))
                                      (_%E180936180956%_)))
                                (_%E180936180956%_)))))
                      (_%E180936180956%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E180936180956%_))))
                                            (_%E180936180956%_)))))
                                (_%E180935180992%_))))))
                      (_%E180907180916%_)))))
          (_%E180906180996%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx180793%_)
        (let* ((_%e180794180820%_ _%stx180793%_)
               (_%E180809180824%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180794180820%_)))
               (_%E180796180856%_
                (lambda ()
                  (if (gx#stx-pair? _%e180794180820%_)
                      (let ((_%e180810180828%_
                             (gx#syntax-e _%e180794180820%_)))
                        (let ((_%hd180811180831%_ (##car _%e180810180828%_))
                              (_%tl180812180833%_ (##cdr _%e180810180828%_)))
                          (if (gx#stx-pair? _%tl180812180833%_)
                              (let ((_%e180813180836%_
                                     (gx#syntax-e _%tl180812180833%_)))
                                (let ((_%hd180814180839%_
                                       (##car _%e180813180836%_))
                                      (_%tl180815180841%_
                                       (##cdr _%e180813180836%_)))
                                  (let ((_%hd180844%_ _%hd180814180839%_))
                                    (if (gx#stx-pair? _%tl180815180841%_)
                                        (let ((_%e180816180846%_
                                               (gx#syntax-e
                                                _%tl180815180841%_)))
                                          (let ((_%hd180817180849%_
                                                 (##car _%e180816180846%_))
                                                (_%tl180818180851%_
                                                 (##cdr _%e180816180846%_)))
                                            (let ((_%expr180854%_
                                                   _%hd180817180849%_))
                                              (if (gx#stx-null?
                                                   _%tl180818180851%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd180844%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd180844%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd180844%_)
                             (cons (gx#core-expand-expression _%expr180854%_)
                                   '())))
                 (gx#stx-source _%stx180793%_)))
              (_%E180809180824%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180809180824%_)))))
                                        (_%E180809180824%_)))))
                              (_%E180809180824%_))))
                      (_%E180809180824%_))))
               (_%E180795180900%_
                (lambda ()
                  (if (gx#stx-pair? _%e180794180820%_)
                      (let ((_%e180797180860%_
                             (gx#syntax-e _%e180794180820%_)))
                        (let ((_%hd180798180863%_ (##car _%e180797180860%_))
                              (_%tl180799180865%_ (##cdr _%e180797180860%_)))
                          (if (gx#stx-pair? _%tl180799180865%_)
                              (let ((_%e180800180868%_
                                     (gx#syntax-e _%tl180799180865%_)))
                                (let ((_%hd180801180871%_
                                       (##car _%e180800180868%_))
                                      (_%tl180802180873%_
                                       (##cdr _%e180800180868%_)))
                                  (if (gx#stx-pair? _%hd180801180871%_)
                                      (let ((_%e180806180876%_
                                             (gx#syntax-e _%hd180801180871%_)))
                                        (let ((_%hd180807180879%_
                                               (##car _%e180806180876%_))
                                              (_%tl180808180881%_
                                               (##cdr _%e180806180876%_)))
                                          (let ((_%id180884%_
                                                 _%hd180807180879%_))
                                            (if (gx#stx-null?
                                                 _%tl180808180881%_)
                                                (if (gx#stx-pair?
                                                     _%tl180802180873%_)
                                                    (let ((_%e180803180886%_
                                                           (gx#syntax-e
                                                            _%tl180802180873%_)))
                                                      (let ((_%hd180804180889%_
                                                             (##car _%e180803180886%_))
                                                            (_%tl180805180891%_
                                                             (##cdr _%e180803180886%_)))
                                                        (let* ((_%expr180894%_
                                                                _%hd180804180889%_)
                                                               (_%props180896%_
                                                                _%tl180805180891%_))
                                                          (if (gx#identifier?
                                                               _%id180884%_)
                                                              (let ((_%bind180898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id180884%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind180898%_
                         _%props180896%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id180884%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr180894%_)
                                           '())))
                         (gx#stx-source _%stx180793%_)))
                      (_%E180796180856%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E180796180856%_))
                                                (_%E180796180856%_)))))
                                      (_%E180796180856%_))))
                              (_%E180796180856%_))))
                      (_%E180796180856%_)))))
          (_%E180795180900%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx180732%_)
        (let* ((_%e180733180746%_ _%stx180732%_)
               (_%E180735180750%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180733180746%_)))
               (_%E180734180789%_
                (lambda ()
                  (if (gx#stx-pair? _%e180733180746%_)
                      (let ((_%e180736180754%_
                             (gx#syntax-e _%e180733180746%_)))
                        (let ((_%hd180737180757%_ (##car _%e180736180754%_))
                              (_%tl180738180759%_ (##cdr _%e180736180754%_)))
                          (if (gx#stx-pair? _%tl180738180759%_)
                              (let ((_%e180739180762%_
                                     (gx#syntax-e _%tl180738180759%_)))
                                (let ((_%hd180740180765%_
                                       (##car _%e180739180762%_))
                                      (_%tl180741180767%_
                                       (##cdr _%e180739180762%_)))
                                  (let ((_%id180770%_ _%hd180740180765%_))
                                    (if (gx#stx-pair? _%tl180741180767%_)
                                        (let ((_%e180742180772%_
                                               (gx#syntax-e
                                                _%tl180741180767%_)))
                                          (let ((_%hd180743180775%_
                                                 (##car _%e180742180772%_))
                                                (_%tl180744180777%_
                                                 (##cdr _%e180742180772%_)))
                                            (let* ((_%binding-id180780%_
                                                    _%hd180743180775%_)
                                                   (_%props180782%_
                                                    _%tl180744180777%_))
                                              (if (and (gx#identifier?
                                                        _%id180770%_)
                                                       (gx#identifier?
                                                        _%binding-id180780%_)
                                                       (gx#stx-list?
                                                        _%props180782%_))
                                                  (let* ((_%eid180784%_
                                                          (gx#stx-e
                                                           _%binding-id180780%_))
                                                         (_%bind180786%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id180770%_
                                                           _%eid180784%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind180786%_
                                                     _%props180782%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id180770%_)
                         (cons _%eid180784%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180735180750%_)))))
                                        (_%E180735180750%_)))))
                              (_%E180735180750%_))))
                      (_%E180735180750%_)))))
          (_%E180734180789%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind180667%_ _%props180668%_)
        (letrec ((_%eval-prop180670%_
                  (lambda (_%prop180730%_)
                    (gx#eval-expression+1 _%prop180730%_))))
          (let _%loop180672%_ ((_%rest180674%_ _%props180668%_)
                               (_%props180675%_ '()))
            (let* ((_%e180676180687%_ _%rest180674%_)
                   (_%E180685180691%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e180676180687%_)))
                   (_%E180678180695%_
                    (lambda ()
                      (if (gx#stx-null? _%e180676180687%_)
                          (if (null? _%props180675%_)
                              '#!void
                              (##structure-set!
                               _%bind180667%_
                               (reverse! _%props180675%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E180685180691%_))))
                   (_%E180677180726%_
                    (lambda ()
                      (if (gx#stx-pair? _%e180676180687%_)
                          (let ((_%e180679180699%_
                                 (gx#syntax-e _%e180676180687%_)))
                            (let ((_%hd180680180702%_
                                   (##car _%e180679180699%_))
                                  (_%tl180681180704%_
                                   (##cdr _%e180679180699%_)))
                              (let ((_%key180707%_ _%hd180680180702%_))
                                (if (gx#stx-pair? _%tl180681180704%_)
                                    (let ((_%e180682180709%_
                                           (gx#syntax-e _%tl180681180704%_)))
                                      (let ((_%hd180683180712%_
                                             (##car _%e180682180709%_))
                                            (_%tl180684180714%_
                                             (##cdr _%e180682180709%_)))
                                        (let* ((_%prop180717%_
                                                _%hd180683180712%_)
                                               (_%rest180719%_
                                                _%tl180684180714%_))
                                          (if (gx#stx-keyword? _%key180707%_)
                                              (let* ((_%key180721%_
                                                      (gx#stx-e _%key180707%_))
                                                     (_%$e180723%_
                                                      _%key180721%_))
                                                (if (eq? 'macro: _%$e180723%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind180667%_
                                                       (if (gx#identifier?
                                                            _%prop180717%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop180717%_)
                                                           (gx#eval-expression+1
                                                            _%prop180717%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop180672%_
                                                       _%rest180719%_
                                                       _%props180675%_))
                                                    (if (eq? 'type:
                                                             _%$e180723%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind180667%_
                                                           (gx#eval-expression+1
                                                            _%prop180717%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop180672%_
                                                           _%rest180719%_
                                                           _%props180675%_))
                                                        (_%loop180672%_
                                                         _%rest180719%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop180717%_)
                                                               (cons _%key180721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props180675%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E180678180695%_)))))
                                    (_%E180678180695%_)))))
                          (_%E180678180695%_)))))
              (_%E180677180726%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx180610%_)
        (let* ((_%e180611180624%_ _%stx180610%_)
               (_%E180613180628%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180611180624%_)))
               (_%E180612180663%_
                (lambda ()
                  (if (gx#stx-pair? _%e180611180624%_)
                      (let ((_%e180614180632%_
                             (gx#syntax-e _%e180611180624%_)))
                        (let ((_%hd180615180635%_ (##car _%e180614180632%_))
                              (_%tl180616180637%_ (##cdr _%e180614180632%_)))
                          (if (gx#stx-pair? _%tl180616180637%_)
                              (let ((_%e180617180640%_
                                     (gx#syntax-e _%tl180616180637%_)))
                                (let ((_%hd180618180643%_
                                       (##car _%e180617180640%_))
                                      (_%tl180619180645%_
                                       (##cdr _%e180617180640%_)))
                                  (let ((_%id180648%_ _%hd180618180643%_))
                                    (if (gx#stx-pair? _%tl180619180645%_)
                                        (let ((_%e180620180650%_
                                               (gx#syntax-e
                                                _%tl180619180645%_)))
                                          (let ((_%hd180621180653%_
                                                 (##car _%e180620180650%_))
                                                (_%tl180622180655%_
                                                 (##cdr _%e180620180650%_)))
                                            (let ((_%expr180658%_
                                                   _%hd180621180653%_))
                                              (if (gx#stx-null?
                                                   _%tl180622180655%_)
                                                  (if (gx#identifier?
                                                       _%id180648%_)
                                                      (let ((_g181824_
                                                             (gx#core-expand-expression+1
                                                              _%expr180658%_)))
                                                        (begin
                                                          (let ((_g181825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g181824_)
                             (##values-length _g181824_)
                             1)))
                    (if (not (##fx= _g181825_ 2))
                        (error "Context expects 2 values" _g181825_)))
                  (let ((_%e-stx180660%_ (##values-ref _g181824_ 0))
                        (_%e180661%_ (##values-ref _g181824_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id180648%_ _%e180661%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id180648%_)
                                   (cons _%e-stx180660%_ '())))
                       (gx#stx-source _%stx180610%_))))))
              (_%E180613180628%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180613180628%_)))))
                                        (_%E180613180628%_)))))
                              (_%E180613180628%_))))
                      (_%E180613180628%_)))))
          (_%E180612180663%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx180554%_)
        (let* ((_%e180555180568%_ _%stx180554%_)
               (_%E180557180572%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180555180568%_)))
               (_%E180556180606%_
                (lambda ()
                  (if (gx#stx-pair? _%e180555180568%_)
                      (let ((_%e180558180576%_
                             (gx#syntax-e _%e180555180568%_)))
                        (let ((_%hd180559180579%_ (##car _%e180558180576%_))
                              (_%tl180560180581%_ (##cdr _%e180558180576%_)))
                          (if (gx#stx-pair? _%tl180560180581%_)
                              (let ((_%e180561180584%_
                                     (gx#syntax-e _%tl180560180581%_)))
                                (let ((_%hd180562180587%_
                                       (##car _%e180561180584%_))
                                      (_%tl180563180589%_
                                       (##cdr _%e180561180584%_)))
                                  (let ((_%id180592%_ _%hd180562180587%_))
                                    (if (gx#stx-pair? _%tl180563180589%_)
                                        (let ((_%e180564180594%_
                                               (gx#syntax-e
                                                _%tl180563180589%_)))
                                          (let ((_%hd180565180597%_
                                                 (##car _%e180564180594%_))
                                                (_%tl180566180599%_
                                                 (##cdr _%e180564180594%_)))
                                            (let ((_%alias-id180602%_
                                                   _%hd180565180597%_))
                                              (if (gx#stx-null?
                                                   _%tl180566180599%_)
                                                  (if (and (gx#identifier?
                                                            _%id180592%_)
                                                           (gx#identifier?
                                                            _%alias-id180602%_))
                                                      (let ((_%alias-id180604%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id180602%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id180592%_
                                                         _%alias-id180604%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id180592%_)
                             (cons _%alias-id180604%_ '())))))
              (_%E180557180572%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180557180572%_)))))
                                        (_%E180557180572%_)))))
                              (_%E180557180572%_))))
                      (_%E180557180572%_)))))
          (_%E180556180606%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx180497%_ _%wrap?180498%_)
        (let* ((_%e180499180509%_ _%stx180497%_)
               (_%E180501180513%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180499180509%_)))
               (_%E180500180540%_
                (lambda ()
                  (if (gx#stx-pair? _%e180499180509%_)
                      (let ((_%e180502180517%_
                             (gx#syntax-e _%e180499180509%_)))
                        (let ((_%hd180503180520%_ (##car _%e180502180517%_))
                              (_%tl180504180522%_ (##cdr _%e180502180517%_)))
                          (if (gx#stx-pair? _%tl180504180522%_)
                              (let ((_%e180505180525%_
                                     (gx#syntax-e _%tl180504180522%_)))
                                (let ((_%hd180506180528%_
                                       (##car _%e180505180525%_))
                                      (_%tl180507180530%_
                                       (##cdr _%e180505180525%_)))
                                  (let* ((_%hd180533%_ _%hd180506180528%_)
                                         (_%body180535%_ _%tl180507180530%_))
                                    (if (gx#core-bind-values? _%hd180533%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd180533%_)
                                           (let ((_%body180538%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd180533%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx180497%_
                                                               _%body180535%_)
                                                              '()))))
                                             (if _%wrap?180498%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body180538%_)
                                                  (gx#stx-source
                                                   _%stx180497%_))
                                                 _%body180538%_)))
                                         gx#current-expander-context
                                         (let ((__obj181807
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj181807)
                                           __obj181807))
                                        (_%E180501180513%_)))))
                              (_%E180501180513%_))))
                      (_%E180501180513%_)))))
          (_%E180500180540%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx180547%_)
        (let ((_%wrap?180549%_ '#t))
          (gx#core-expand-lambda%__% _%stx180547%_ _%wrap?180549%_))))
    (define gx#core-expand-lambda%
      (lambda _g181826_
        (let ((_g181827_ (##length _g181826_)))
          (cond ((##fx= _g181827_ 1)
                 (apply gx#core-expand-lambda%__0 _g181826_))
                ((##fx= _g181827_ 2)
                 (apply gx#core-expand-lambda%__% _g181826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g181826_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx180461%_)
        (let* ((_%e180462180469%_ _%stx180461%_)
               (_%E180464180473%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180462180469%_)))
               (_%E180463180492%_
                (lambda ()
                  (if (gx#stx-pair? _%e180462180469%_)
                      (let ((_%e180465180477%_
                             (gx#syntax-e _%e180462180469%_)))
                        (let ((_%hd180466180480%_ (##car _%e180465180477%_))
                              (_%tl180467180482%_ (##cdr _%e180465180477%_)))
                          (let ((_%clauses180485%_ _%tl180467180482%_))
                            (if (gx#stx-list? _%clauses180485%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause180487%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause180487%_)
                                       (let ((_%$e180489%_
                                              (gx#stx-source
                                               _%clause180487%_)))
                                         (if _%$e180489%_
                                             _%$e180489%_
                                             (gx#stx-source _%stx180461%_))))
                                      '#f))
                                   _%clauses180485%_))
                                 (gx#stx-source _%stx180461%_))
                                (_%E180464180473%_)))))
                      (_%E180464180473%_)))))
          (_%E180463180492%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx180415%_)
        (let* ((_%e180416180426%_ _%stx180415%_)
               (_%E180418180430%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180416180426%_)))
               (_%E180417180457%_
                (lambda ()
                  (if (gx#stx-pair? _%e180416180426%_)
                      (let ((_%e180419180434%_
                             (gx#syntax-e _%e180416180426%_)))
                        (let ((_%hd180420180437%_ (##car _%e180419180434%_))
                              (_%tl180421180439%_ (##cdr _%e180419180434%_)))
                          (if (gx#stx-pair? _%tl180421180439%_)
                              (let ((_%e180422180442%_
                                     (gx#syntax-e _%tl180421180439%_)))
                                (let ((_%hd180423180445%_
                                       (##car _%e180422180442%_))
                                      (_%tl180424180447%_
                                       (##cdr _%e180422180442%_)))
                                  (let* ((_%hd180450%_ _%hd180423180445%_)
                                         (_%body180452%_ _%tl180424180447%_))
                                    (if (gx#core-expand-let-bind? _%hd180450%_)
                                        (let ((_%expressions180454%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd180450%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd180450%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd180450%_
                                                           _%expressions180454%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx180415%_
                         _%body180452%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx180415%_)))
                                           gx#current-expander-context
                                           (let ((__obj181808
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj181808)
                                             __obj181808)))
                                        (_%E180418180430%_)))))
                              (_%E180418180430%_))))
                      (_%E180418180430%_)))))
          (_%E180417180457%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx180360%_ _%form180361%_)
        (let* ((_%e180362180372%_ _%stx180360%_)
               (_%E180364180376%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180362180372%_)))
               (_%E180363180401%_
                (lambda ()
                  (if (gx#stx-pair? _%e180362180372%_)
                      (let ((_%e180365180380%_
                             (gx#syntax-e _%e180362180372%_)))
                        (let ((_%hd180366180383%_ (##car _%e180365180380%_))
                              (_%tl180367180385%_ (##cdr _%e180365180380%_)))
                          (if (gx#stx-pair? _%tl180367180385%_)
                              (let ((_%e180368180388%_
                                     (gx#syntax-e _%tl180367180385%_)))
                                (let ((_%hd180369180391%_
                                       (##car _%e180368180388%_))
                                      (_%tl180370180393%_
                                       (##cdr _%e180368180388%_)))
                                  (let* ((_%hd180396%_ _%hd180369180391%_)
                                         (_%body180398%_ _%tl180370180393%_))
                                    (if (gx#core-expand-let-bind? _%hd180396%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd180396%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form180361%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd180396%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd180396%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx180360%_
                                                               _%body180398%_)
                                                              '())))
                                            (gx#stx-source _%stx180360%_)))
                                         gx#current-expander-context
                                         (let ((__obj181809
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj181809)
                                           __obj181809))
                                        (_%E180364180376%_)))))
                              (_%E180364180376%_))))
                      (_%E180364180376%_)))))
          (_%E180363180401%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx180408%_)
        (let ((_%form180410%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx180408%_ _%form180410%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g181828_
        (let ((_g181829_ (##length _g181828_)))
          (cond ((##fx= _g181829_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g181828_))
                ((##fx= _g181829_ 2)
                 (apply gx#core-expand-letrec-values%__% _g181828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g181828_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx180357%_)
        (gx#core-expand-letrec-values%__% _%stx180357%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx180314%_)
        (if (gx#stx-list? _%stx180314%_)
            (gx#stx-andmap
             (lambda (_%bind180316%_)
               (let* ((_%e180317180327%_ _%bind180316%_)
                      (_%E180319180331%_ (lambda () '#f))
                      (_%E180318180353%_
                       (lambda ()
                         (if (gx#stx-pair? _%e180317180327%_)
                             (let ((_%e180320180335%_
                                    (gx#syntax-e _%e180317180327%_)))
                               (let ((_%hd180321180338%_
                                      (##car _%e180320180335%_))
                                     (_%tl180322180340%_
                                      (##cdr _%e180320180335%_)))
                                 (let ((_%hd180343%_ _%hd180321180338%_))
                                   (if (gx#stx-pair? _%tl180322180340%_)
                                       (let ((_%e180323180345%_
                                              (gx#syntax-e
                                               _%tl180322180340%_)))
                                         (let ((_%hd180324180348%_
                                                (##car _%e180323180345%_))
                                               (_%tl180325180350%_
                                                (##cdr _%e180323180345%_)))
                                           (if (gx#stx-null?
                                                _%tl180325180350%_)
                                               (gx#core-bind-values?
                                                _%hd180343%_)
                                               (_%E180319180331%_))))
                                       (_%E180319180331%_)))))
                             (_%E180319180331%_)))))
                 (_%E180318180353%_)))
             _%stx180314%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind180273%_)
        (let* ((_%e180274180284%_ _%bind180273%_)
               (_%E180276180288%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180274180284%_)))
               (_%E180275180310%_
                (lambda ()
                  (if (gx#stx-pair? _%e180274180284%_)
                      (let ((_%e180277180292%_
                             (gx#syntax-e _%e180274180284%_)))
                        (let ((_%hd180278180295%_ (##car _%e180277180292%_))
                              (_%tl180279180297%_ (##cdr _%e180277180292%_)))
                          (if (gx#stx-pair? _%tl180279180297%_)
                              (let ((_%e180280180300%_
                                     (gx#syntax-e _%tl180279180297%_)))
                                (let ((_%hd180281180303%_
                                       (##car _%e180280180300%_))
                                      (_%tl180282180305%_
                                       (##cdr _%e180280180300%_)))
                                  (let ((_%expr180308%_ _%hd180281180303%_))
                                    (if (gx#stx-null? _%tl180282180305%_)
                                        (gx#core-expand-expression
                                         _%expr180308%_)
                                        (_%E180276180288%_)))))
                              (_%E180276180288%_))))
                      (_%E180276180288%_)))))
          (_%E180275180310%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind180232%_)
        (let* ((_%e180233180243%_ _%bind180232%_)
               (_%E180235180247%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180233180243%_)))
               (_%E180234180269%_
                (lambda ()
                  (if (gx#stx-pair? _%e180233180243%_)
                      (let ((_%e180236180251%_
                             (gx#syntax-e _%e180233180243%_)))
                        (let ((_%hd180237180254%_ (##car _%e180236180251%_))
                              (_%tl180238180256%_ (##cdr _%e180236180251%_)))
                          (let ((_%hd180259%_ _%hd180237180254%_))
                            (if (gx#stx-pair? _%tl180238180256%_)
                                (let ((_%e180239180261%_
                                       (gx#syntax-e _%tl180238180256%_)))
                                  (let ((_%hd180240180264%_
                                         (##car _%e180239180261%_))
                                        (_%tl180241180266%_
                                         (##cdr _%e180239180261%_)))
                                    (if (gx#stx-null? _%tl180241180266%_)
                                        (gx#core-bind-values!__0 _%hd180259%_)
                                        (_%E180235180247%_))))
                                (_%E180235180247%_)))))
                      (_%E180235180247%_)))))
          (_%E180234180269%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind180190%_ _%expr180191%_)
        (let* ((_%e180192180202%_ _%bind180190%_)
               (_%E180194180206%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180192180202%_)))
               (_%E180193180228%_
                (lambda ()
                  (if (gx#stx-pair? _%e180192180202%_)
                      (let ((_%e180195180210%_
                             (gx#syntax-e _%e180192180202%_)))
                        (let ((_%hd180196180213%_ (##car _%e180195180210%_))
                              (_%tl180197180215%_ (##cdr _%e180195180210%_)))
                          (let ((_%hd180218%_ _%hd180196180213%_))
                            (if (gx#stx-pair? _%tl180197180215%_)
                                (let ((_%e180198180220%_
                                       (gx#syntax-e _%tl180197180215%_)))
                                  (let ((_%hd180199180223%_
                                         (##car _%e180198180220%_))
                                        (_%tl180200180225%_
                                         (##cdr _%e180198180220%_)))
                                    (if (gx#stx-null? _%tl180200180225%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd180218%_)
                                              (cons _%expr180191%_ '()))
                                        (_%E180194180206%_))))
                                (_%E180194180206%_)))))
                      (_%E180194180206%_)))))
          (_%E180193180228%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx180144%_)
        (let* ((_%e180145180155%_ _%stx180144%_)
               (_%E180147180159%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180145180155%_)))
               (_%E180146180186%_
                (lambda ()
                  (if (gx#stx-pair? _%e180145180155%_)
                      (let ((_%e180148180163%_
                             (gx#syntax-e _%e180145180155%_)))
                        (let ((_%hd180149180166%_ (##car _%e180148180163%_))
                              (_%tl180150180168%_ (##cdr _%e180148180163%_)))
                          (if (gx#stx-pair? _%tl180150180168%_)
                              (let ((_%e180151180171%_
                                     (gx#syntax-e _%tl180150180168%_)))
                                (let ((_%hd180152180174%_
                                       (##car _%e180151180171%_))
                                      (_%tl180153180176%_
                                       (##cdr _%e180151180171%_)))
                                  (let* ((_%hd180179%_ _%hd180152180174%_)
                                         (_%body180181%_ _%tl180153180176%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd180179%_)
                                        (let ((_%expanders180183%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd180179%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd180179%_
                                              _%expanders180183%_)
                                             (gx#core-expand-local-block
                                              _%stx180144%_
                                              _%body180181%_))
                                           gx#current-expander-context
                                           (let ((__obj181810
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj181810)
                                             __obj181810)))
                                        (_%E180147180159%_)))))
                              (_%E180147180159%_))))
                      (_%E180147180159%_)))))
          (_%E180146180186%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx180093%_)
        (let* ((_%e180094180104%_ _%stx180093%_)
               (_%E180096180108%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180094180104%_)))
               (_%E180095180140%_
                (lambda ()
                  (if (gx#stx-pair? _%e180094180104%_)
                      (let ((_%e180097180112%_
                             (gx#syntax-e _%e180094180104%_)))
                        (let ((_%hd180098180115%_ (##car _%e180097180112%_))
                              (_%tl180099180117%_ (##cdr _%e180097180112%_)))
                          (if (gx#stx-pair? _%tl180099180117%_)
                              (let ((_%e180100180120%_
                                     (gx#syntax-e _%tl180099180117%_)))
                                (let ((_%hd180101180123%_
                                       (##car _%e180100180120%_))
                                      (_%tl180102180125%_
                                       (##cdr _%e180100180120%_)))
                                  (let* ((_%hd180128%_ _%hd180101180123%_)
                                         (_%body180130%_ _%tl180102180125%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd180128%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd180128%_
                                            (make-list
                                             (gx#stx-length _%hd180128%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g180132180135%_
                                                     _%g180133180137%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g180132180135%_
                                               _%g180133180137%_
                                               '#t))
                                            _%hd180128%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd180128%_))
                                           (gx#core-expand-local-block
                                            _%stx180093%_
                                            _%body180130%_))
                                         gx#current-expander-context
                                         (let ((__obj181811
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj181811)
                                           __obj181811))
                                        (_%E180096180108%_)))))
                              (_%E180096180108%_))))
                      (_%E180096180108%_)))))
          (_%E180095180140%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx180050%_)
        (if (gx#stx-list? _%stx180050%_)
            (gx#stx-andmap
             (lambda (_%bind180052%_)
               (let* ((_%e180053180063%_ _%bind180052%_)
                      (_%E180055180067%_ (lambda () '#f))
                      (_%E180054180089%_
                       (lambda ()
                         (if (gx#stx-pair? _%e180053180063%_)
                             (let ((_%e180056180071%_
                                    (gx#syntax-e _%e180053180063%_)))
                               (let ((_%hd180057180074%_
                                      (##car _%e180056180071%_))
                                     (_%tl180058180076%_
                                      (##cdr _%e180056180071%_)))
                                 (let ((_%hd180079%_ _%hd180057180074%_))
                                   (if (gx#stx-pair? _%tl180058180076%_)
                                       (let ((_%e180059180081%_
                                              (gx#syntax-e
                                               _%tl180058180076%_)))
                                         (let ((_%hd180060180084%_
                                                (##car _%e180059180081%_))
                                               (_%tl180061180086%_
                                                (##cdr _%e180059180081%_)))
                                           (if (gx#stx-null?
                                                _%tl180061180086%_)
                                               (gx#identifier? _%hd180079%_)
                                               (_%E180055180067%_))))
                                       (_%E180055180067%_)))))
                             (_%E180055180067%_)))))
                 (_%E180054180089%_)))
             _%stx180050%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind180006%_)
        (let* ((_%e180007180017%_ _%bind180006%_)
               (_%E180009180021%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180007180017%_)))
               (_%E180008180046%_
                (lambda ()
                  (if (gx#stx-pair? _%e180007180017%_)
                      (let ((_%e180010180025%_
                             (gx#syntax-e _%e180007180017%_)))
                        (let ((_%hd180011180028%_ (##car _%e180010180025%_))
                              (_%tl180012180030%_ (##cdr _%e180010180025%_)))
                          (if (gx#stx-pair? _%tl180012180030%_)
                              (let ((_%e180013180033%_
                                     (gx#syntax-e _%tl180012180030%_)))
                                (let ((_%hd180014180036%_
                                       (##car _%e180013180033%_))
                                      (_%tl180015180038%_
                                       (##cdr _%e180013180033%_)))
                                  (let ((_%expr180041%_ _%hd180014180036%_))
                                    (if (gx#stx-null? _%tl180015180038%_)
                                        (let ((_g181830_
                                               (gx#core-expand-expression+1
                                                _%expr180041%_)))
                                          (begin
                                            (let ((_g181831_
                                                   (if (##values? _g181830_)
                                                       (##values-length
                                                        _g181830_)
                                                       1)))
                                              (if (not (##fx= _g181831_ 2))
                                                  (error "Context expects 2 values"
                                                         _g181831_)))
                                            (let ((_%_180043%_
                                                   (##values-ref _g181830_ 0))
                                                  (_%e180044%_
                                                   (##values-ref _g181830_ 1)))
                                              _%e180044%_)))
                                        (_%E180009180021%_)))))
                              (_%E180009180021%_))))
                      (_%E180009180021%_)))))
          (_%E180008180046%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind179951%_ _%e179952%_ _%rebind?179953%_)
        (let* ((_%e179954179964%_ _%bind179951%_)
               (_%E179956179968%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179954179964%_)))
               (_%E179955179990%_
                (lambda ()
                  (if (gx#stx-pair? _%e179954179964%_)
                      (let ((_%e179957179972%_
                             (gx#syntax-e _%e179954179964%_)))
                        (let ((_%hd179958179975%_ (##car _%e179957179972%_))
                              (_%tl179959179977%_ (##cdr _%e179957179972%_)))
                          (let ((_%id179980%_ _%hd179958179975%_))
                            (if (gx#stx-pair? _%tl179959179977%_)
                                (let ((_%e179960179982%_
                                       (gx#syntax-e _%tl179959179977%_)))
                                  (let ((_%hd179961179985%_
                                         (##car _%e179960179982%_))
                                        (_%tl179962179987%_
                                         (##cdr _%e179960179982%_)))
                                    (if (gx#stx-null? _%tl179962179987%_)
                                        (gx#core-bind-syntax!__1
                                         _%id179980%_
                                         _%e179952%_
                                         _%rebind?179953%_)
                                        (_%E179956179968%_))))
                                (_%E179956179968%_)))))
                      (_%E179956179968%_)))))
          (_%E179955179990%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind179997%_ _%e179998%_)
        (let ((_%rebind?180000%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind179997%_
           _%e179998%_
           _%rebind?180000%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g181832_
        (let ((_g181833_ (##length _g181832_)))
          (cond ((##fx= _g181833_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g181832_))
                ((##fx= _g181833_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g181832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g181832_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx179909%_)
        (let* ((_%e179910179920%_ _%stx179909%_)
               (_%E179912179924%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179910179920%_)))
               (_%E179911179946%_
                (lambda ()
                  (if (gx#stx-pair? _%e179910179920%_)
                      (let ((_%e179913179928%_
                             (gx#syntax-e _%e179910179920%_)))
                        (let ((_%hd179914179931%_ (##car _%e179913179928%_))
                              (_%tl179915179933%_ (##cdr _%e179913179928%_)))
                          (if (gx#stx-pair? _%tl179915179933%_)
                              (let ((_%e179916179936%_
                                     (gx#syntax-e _%tl179915179933%_)))
                                (let ((_%hd179917179939%_
                                       (##car _%e179916179936%_))
                                      (_%tl179918179941%_
                                       (##cdr _%e179916179936%_)))
                                  (let ((_%expr179944%_ _%hd179917179939%_))
                                    (if (gx#stx-null? _%tl179918179941%_)
                                        (gx#core-expand-expression
                                         _%expr179944%_)
                                        (_%E179912179924%_)))))
                              (_%E179912179924%_))))
                      (_%E179912179924%_)))))
          (_%E179911179946%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx179868%_)
        (let* ((_%e179869179879%_ _%stx179868%_)
               (_%E179871179883%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179869179879%_)))
               (_%E179870179905%_
                (lambda ()
                  (if (gx#stx-pair? _%e179869179879%_)
                      (let ((_%e179872179887%_
                             (gx#syntax-e _%e179869179879%_)))
                        (let ((_%hd179873179890%_ (##car _%e179872179887%_))
                              (_%tl179874179892%_ (##cdr _%e179872179887%_)))
                          (if (gx#stx-pair? _%tl179874179892%_)
                              (let ((_%e179875179895%_
                                     (gx#syntax-e _%tl179874179892%_)))
                                (let ((_%hd179876179898%_
                                       (##car _%e179875179895%_))
                                      (_%tl179877179900%_
                                       (##cdr _%e179875179895%_)))
                                  (let ((_%e179903%_ _%hd179876179898%_))
                                    (if (gx#stx-null? _%tl179877179900%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e179903%_)
                                                     '()))
                                         (gx#stx-source _%stx179868%_))
                                        (_%E179871179883%_)))))
                              (_%E179871179883%_))))
                      (_%E179871179883%_)))))
          (_%E179870179905%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx179827%_)
        (let* ((_%e179828179838%_ _%stx179827%_)
               (_%E179830179842%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179828179838%_)))
               (_%E179829179864%_
                (lambda ()
                  (if (gx#stx-pair? _%e179828179838%_)
                      (let ((_%e179831179846%_
                             (gx#syntax-e _%e179828179838%_)))
                        (let ((_%hd179832179849%_ (##car _%e179831179846%_))
                              (_%tl179833179851%_ (##cdr _%e179831179846%_)))
                          (if (gx#stx-pair? _%tl179833179851%_)
                              (let ((_%e179834179854%_
                                     (gx#syntax-e _%tl179833179851%_)))
                                (let ((_%hd179835179857%_
                                       (##car _%e179834179854%_))
                                      (_%tl179836179859%_
                                       (##cdr _%e179834179854%_)))
                                  (let ((_%e179862%_ _%hd179835179857%_))
                                    (if (gx#stx-null? _%tl179836179859%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e179862%_)
                                                     '()))
                                         (gx#stx-source _%stx179827%_))
                                        (_%E179830179842%_)))))
                              (_%E179830179842%_))))
                      (_%E179830179842%_)))))
          (_%E179829179864%_))))
    (define gx#core-expand-call%
      (lambda (_%stx179721%_)
        (letrec ((_%expand-runtime-call179723%_
                  (lambda (_%rator-expr179824%_ _%args179825%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr179824%_
                      (gx#stx-map1 gx#core-expand-expression _%args179825%_))
                     (gx#stx-source _%stx179721%_)))))
          (let* ((_%e179724179734%_ _%stx179721%_)
                 (_%E179726179738%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179724179734%_)))
                 (_%E179725179820%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179724179734%_)
                        (let ((_%e179727179742%_
                               (gx#syntax-e _%e179724179734%_)))
                          (let ((_%hd179728179745%_ (##car _%e179727179742%_))
                                (_%tl179729179747%_ (##cdr _%e179727179742%_)))
                            (if (gx#stx-pair? _%tl179729179747%_)
                                (let ((_%e179730179750%_
                                       (gx#syntax-e _%tl179729179747%_)))
                                  (let ((_%hd179731179753%_
                                         (##car _%e179730179750%_))
                                        (_%tl179732179755%_
                                         (##cdr _%e179730179750%_)))
                                    (let* ((_%rator179758%_ _%hd179731179753%_)
                                           (_%args179760%_ _%tl179732179755%_))
                                      (if (gx#stx-list? _%args179760%_)
                                          (let* ((_%rator-expr179762%_
                                                  (gx#core-expand-expression
                                                   _%rator179758%_))
                                                 (_%e179763179773%_
                                                  _%rator-expr179762%_)
                                                 (_%E179765179777%_
                                                  (lambda ()
                                                    (_%expand-runtime-call179723%_
                                                     _%rator-expr179762%_
                                                     _%args179760%_)))
                                                 (_%E179764179816%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e179763179773%_)
                                                        (let ((_%e179766179781%_
                                                               (gx#syntax-e
                                                                _%e179763179773%_)))
                                                          (let ((_%hd179767179784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e179766179781%_))
                        (_%tl179768179786%_ (##cdr _%e179766179781%_)))
                    (if (and (gx#identifier? _%hd179767179784%_)
                             (gx#core-identifier=? _%hd179767179784%_ '%#ref))
                        (if (gx#stx-pair? _%tl179768179786%_)
                            (let ((_%e179769179789%_
                                   (gx#syntax-e _%tl179768179786%_)))
                              (let ((_%hd179770179792%_
                                     (##car _%e179769179789%_))
                                    (_%tl179771179794%_
                                     (##cdr _%e179769179789%_)))
                                (let ((_%id179797%_ _%hd179770179792%_))
                                  (if (gx#stx-null? _%tl179771179794%_)
                                      (let ((_%$e179799%_
                                             (gx#resolve-identifier__0
                                              _%id179797%_)))
                                        (if _%$e179799%_
                                            ((lambda (_%bind179802%_)
                                               (let _%again179804%_ ((_%bind179806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind179802%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e179808%_
                                                        (if (##structure-instance-of?
                                                             _%bind179806%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind179806%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e179808%_
                                                       ((lambda (_%macro179811%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro179811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args179760%_)
                    (gx#stx-source _%stx179721%_))))
                _%$e179808%_)
               (if (##structure-direct-instance-of?
                    _%bind179806%_
                    'gx#import-binding::t)
                   (_%again179804%_
                    (##unchecked-structure-ref _%bind179806%_ '5 '#f '#f))
                   (_%expand-runtime-call179723%_
                    _%rator-expr179762%_
                    _%args179760%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e179799%_)
                                            (_%expand-runtime-call179723%_
                                             _%rator-expr179762%_
                                             _%args179760%_)))
                                      (_%E179765179777%_)))))
                            (_%E179765179777%_))
                        (_%E179765179777%_))))
                (_%E179765179777%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E179764179816%_))
                                          (_%E179726179738%_)))))
                                (_%E179726179738%_))))
                        (_%E179726179738%_)))))
            (_%E179725179820%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx179654%_)
        (let* ((_%e179655179671%_ _%stx179654%_)
               (_%E179657179675%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179655179671%_)))
               (_%E179656179717%_
                (lambda ()
                  (if (gx#stx-pair? _%e179655179671%_)
                      (let ((_%e179658179679%_
                             (gx#syntax-e _%e179655179671%_)))
                        (let ((_%hd179659179682%_ (##car _%e179658179679%_))
                              (_%tl179660179684%_ (##cdr _%e179658179679%_)))
                          (if (gx#stx-pair? _%tl179660179684%_)
                              (let ((_%e179661179687%_
                                     (gx#syntax-e _%tl179660179684%_)))
                                (let ((_%hd179662179690%_
                                       (##car _%e179661179687%_))
                                      (_%tl179663179692%_
                                       (##cdr _%e179661179687%_)))
                                  (let ((_%test179695%_ _%hd179662179690%_))
                                    (if (gx#stx-pair? _%tl179663179692%_)
                                        (let ((_%e179664179697%_
                                               (gx#syntax-e
                                                _%tl179663179692%_)))
                                          (let ((_%hd179665179700%_
                                                 (##car _%e179664179697%_))
                                                (_%tl179666179702%_
                                                 (##cdr _%e179664179697%_)))
                                            (let ((_%K179705%_
                                                   _%hd179665179700%_))
                                              (if (gx#stx-pair?
                                                   _%tl179666179702%_)
                                                  (let ((_%e179667179707%_
                                                         (gx#syntax-e
                                                          _%tl179666179702%_)))
                                                    (let ((_%hd179668179710%_
                                                           (##car _%e179667179707%_))
                                                          (_%tl179669179712%_
                                                           (##cdr _%e179667179707%_)))
                                                      (let ((_%E179715%_
                                                             _%hd179668179710%_))
                                                        (if (gx#stx-null?
                                                             _%tl179669179712%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test179695%_)
                                 (cons (gx#core-expand-expression _%K179705%_)
                                       (cons (gx#core-expand-expression
                                              _%E179715%_)
                                             '()))))
                     (gx#stx-source _%stx179654%_))
                    (_%E179657179675%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E179657179675%_)))))
                                        (_%E179657179675%_)))))
                              (_%E179657179675%_))))
                      (_%E179657179675%_)))))
          (_%E179656179717%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx179613%_)
        (let* ((_%e179614179624%_ _%stx179613%_)
               (_%E179616179628%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179614179624%_)))
               (_%E179615179650%_
                (lambda ()
                  (if (gx#stx-pair? _%e179614179624%_)
                      (let ((_%e179617179632%_
                             (gx#syntax-e _%e179614179624%_)))
                        (let ((_%hd179618179635%_ (##car _%e179617179632%_))
                              (_%tl179619179637%_ (##cdr _%e179617179632%_)))
                          (if (gx#stx-pair? _%tl179619179637%_)
                              (let ((_%e179620179640%_
                                     (gx#syntax-e _%tl179619179637%_)))
                                (let ((_%hd179621179643%_
                                       (##car _%e179620179640%_))
                                      (_%tl179622179645%_
                                       (##cdr _%e179620179640%_)))
                                  (let ((_%id179648%_ _%hd179621179643%_))
                                    (if (gx#stx-null? _%tl179622179645%_)
                                        (if (gx#identifier? _%id179648%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id179648%_
                                                          _%stx179613%_)
                                                         '()))
                                             (gx#stx-source _%stx179613%_))
                                            (_%E179616179628%_))
                                        (_%E179616179628%_)))))
                              (_%E179616179628%_))))
                      (_%E179616179628%_)))))
          (_%E179615179650%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx179559%_)
        (let* ((_%e179560179573%_ _%stx179559%_)
               (_%E179562179577%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179560179573%_)))
               (_%E179561179609%_
                (lambda ()
                  (if (gx#stx-pair? _%e179560179573%_)
                      (let ((_%e179563179581%_
                             (gx#syntax-e _%e179560179573%_)))
                        (let ((_%hd179564179584%_ (##car _%e179563179581%_))
                              (_%tl179565179586%_ (##cdr _%e179563179581%_)))
                          (if (gx#stx-pair? _%tl179565179586%_)
                              (let ((_%e179566179589%_
                                     (gx#syntax-e _%tl179565179586%_)))
                                (let ((_%hd179567179592%_
                                       (##car _%e179566179589%_))
                                      (_%tl179568179594%_
                                       (##cdr _%e179566179589%_)))
                                  (let ((_%id179597%_ _%hd179567179592%_))
                                    (if (gx#stx-pair? _%tl179568179594%_)
                                        (let ((_%e179569179599%_
                                               (gx#syntax-e
                                                _%tl179568179594%_)))
                                          (let ((_%hd179570179602%_
                                                 (##car _%e179569179599%_))
                                                (_%tl179571179604%_
                                                 (##cdr _%e179569179599%_)))
                                            (let ((_%expr179607%_
                                                   _%hd179570179602%_))
                                              (if (gx#stx-null?
                                                   _%tl179571179604%_)
                                                  (if (gx#identifier?
                                                       _%id179597%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id179597%_
                            _%stx179559%_)
                           (cons (gx#core-expand-expression _%expr179607%_)
                                 '())))
               (gx#stx-source _%stx179559%_))
              (_%E179562179577%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E179562179577%_)))))
                                        (_%E179562179577%_)))))
                              (_%E179562179577%_))))
                      (_%E179562179577%_)))))
          (_%E179561179609%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx179404%_)
        (letrec ((_%generate179406%_
                  (lambda (_%body179436%_)
                    (let _%lp179438%_ ((_%rest179440%_ _%body179436%_)
                                       (_%ns179441%_
                                        (gx#core-context-namespace__0))
                                       (_%r179442%_ '()))
                      (let* ((_%e179443179458%_ _%rest179440%_)
                             (_%E179456179462%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e179443179458%_)))
                             (_%E179452179466%_
                              (lambda ()
                                (if (gx#stx-null? _%e179443179458%_)
                                    (reverse _%r179442%_)
                                    (_%E179456179462%_))))
                             (_%E179445179523%_
                              (lambda ()
                                (if (gx#stx-pair? _%e179443179458%_)
                                    (let ((_%e179453179470%_
                                           (gx#syntax-e _%e179443179458%_)))
                                      (let ((_%hd179454179473%_
                                             (##car _%e179453179470%_))
                                            (_%tl179455179475%_
                                             (##cdr _%e179453179470%_)))
                                        (let* ((_%hd179478%_
                                                _%hd179454179473%_)
                                               (_%rest179480%_
                                                _%tl179455179475%_))
                                          (if (gx#identifier? _%hd179478%_)
                                              (_%lp179438%_
                                               _%rest179480%_
                                               _%ns179441%_
                                               (cons (cons _%hd179478%_
                                                           (cons (if _%ns179441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd179478%_
                              _%ns179441%_
                              '"#"
                              _%hd179478%_)
                             _%hd179478%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r179442%_))
                                              (let* ((_%e179481179491%_
                                                      _%hd179478%_)
                                                     (_%E179483179495%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e179481179491%_)))
                                                     (_%E179482179519%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e179481179491%_)
                                                            (let ((_%e179484179499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e179481179491%_)))
                      (let ((_%hd179485179502%_ (##car _%e179484179499%_))
                            (_%tl179486179504%_ (##cdr _%e179484179499%_)))
                        (let ((_%id179507%_ _%hd179485179502%_))
                          (if (gx#stx-pair? _%tl179486179504%_)
                              (let ((_%e179487179509%_
                                     (gx#syntax-e _%tl179486179504%_)))
                                (let ((_%hd179488179512%_
                                       (##car _%e179487179509%_))
                                      (_%tl179489179514%_
                                       (##cdr _%e179487179509%_)))
                                  (let ((_%eid179517%_ _%hd179488179512%_))
                                    (if (gx#stx-null? _%tl179489179514%_)
                                        (if (and (gx#identifier? _%id179507%_)
                                                 (gx#identifier?
                                                  _%eid179517%_))
                                            (_%lp179438%_
                                             _%rest179480%_
                                             _%ns179441%_
                                             (cons (cons _%id179507%_
                                                         (cons _%eid179517%_
                                                               '()))
                                                   _%r179442%_))
                                            (_%E179483179495%_))
                                        (_%E179483179495%_)))))
                              (_%E179483179495%_)))))
                    (_%E179483179495%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E179482179519%_))))))
                                    (_%E179452179466%_))))
                             (_%E179444179555%_
                              (lambda ()
                                (if (gx#stx-pair? _%e179443179458%_)
                                    (let ((_%e179446179527%_
                                           (gx#syntax-e _%e179443179458%_)))
                                      (let ((_%hd179447179530%_
                                             (##car _%e179446179527%_))
                                            (_%tl179448179532%_
                                             (##cdr _%e179446179527%_)))
                                        (if (eq? (gx#stx-e _%hd179447179530%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl179448179532%_)
                                                (let ((_%e179449179535%_
                                                       (gx#syntax-e
                                                        _%tl179448179532%_)))
                                                  (let ((_%hd179450179538%_
                                                         (##car _%e179449179535%_))
                                                        (_%tl179451179540%_
                                                         (##cdr _%e179449179535%_)))
                                                    (let* ((_%ns179543%_
                                                            _%hd179450179538%_)
                                                           (_%rest179545%_
                                                            _%tl179451179540%_)
                                                           (_%ns179553%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns179543%_)
                        (symbol->string (gx#stx-e _%ns179543%_))
                        (if (or (gx#stx-string? _%ns179543%_)
                                (gx#stx-false? _%ns179543%_))
                            (gx#stx-e _%ns179543%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx179404%_
                             _%ns179543%_)))))
              (_%lp179438%_ _%rest179545%_ _%ns179553%_ _%r179442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E179445179523%_))
                                            (_%E179445179523%_))))
                                    (_%E179445179523%_)))))
                        (_%E179444179555%_))))))
          (let* ((_%e179407179414%_ _%stx179404%_)
                 (_%E179409179418%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179407179414%_)))
                 (_%E179408179432%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179407179414%_)
                        (let ((_%e179410179422%_
                               (gx#syntax-e _%e179407179414%_)))
                          (let ((_%hd179411179425%_ (##car _%e179410179422%_))
                                (_%tl179412179427%_ (##cdr _%e179410179422%_)))
                            (let ((_%body179430%_ _%tl179412179427%_))
                              (if (gx#stx-list? _%body179430%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate179406%_ _%body179430%_))
                                  (_%E179409179418%_)))))
                        (_%E179409179418%_)))))
            (_%E179408179432%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx179361%_)
        (let* ((_%e179362179372%_ _%stx179361%_)
               (_%E179364179376%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179362179372%_)))
               (_%E179363179400%_
                (lambda ()
                  (if (gx#stx-pair? _%e179362179372%_)
                      (let ((_%e179365179380%_
                             (gx#syntax-e _%e179362179372%_)))
                        (let ((_%hd179366179383%_ (##car _%e179365179380%_))
                              (_%tl179367179385%_ (##cdr _%e179365179380%_)))
                          (if (gx#stx-pair? _%tl179367179385%_)
                              (let ((_%e179368179388%_
                                     (gx#syntax-e _%tl179367179385%_)))
                                (let ((_%hd179369179391%_
                                       (##car _%e179368179388%_))
                                      (_%tl179370179393%_
                                       (##cdr _%e179368179388%_)))
                                  (let* ((_%hd179396%_ _%hd179369179391%_)
                                         (_%body179398%_ _%tl179370179393%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd179396%_)
                                             (gx#stx-list? _%body179398%_)
                                             (not (gx#stx-null?
                                                   _%body179398%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd179396%_)
                                         _%body179398%_)
                                        (_%E179364179376%_)))))
                              (_%E179364179376%_))))
                      (_%E179364179376%_)))))
          (_%E179363179400%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx179297%_)
        (letrec ((_%generate179299%_
                  (lambda (_%clause179329%_)
                    (let* ((_%e179330179337%_ _%clause179329%_)
                           (_%E179332179341%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx179297%_
                               _%clause179329%_)))
                           (_%E179331179357%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179330179337%_)
                                  (let ((_%e179333179345%_
                                         (gx#syntax-e _%e179330179337%_)))
                                    (let ((_%hd179334179348%_
                                           (##car _%e179333179345%_))
                                          (_%tl179335179350%_
                                           (##cdr _%e179333179345%_)))
                                      (let* ((_%hd179353%_ _%hd179334179348%_)
                                             (_%body179355%_
                                              _%tl179335179350%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd179353%_)
                                                 (gx#stx-list? _%body179355%_)
                                                 (not (gx#stx-null?
                                                       _%body179355%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd179353%_)
                                                   _%body179355%_)
                                             (gx#stx-source _%clause179329%_))
                                            (_%E179332179341%_)))))
                                  (_%E179332179341%_)))))
                      (_%E179331179357%_)))))
          (let* ((_%e179300179307%_ _%stx179297%_)
                 (_%E179302179311%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179300179307%_)))
                 (_%E179301179325%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179300179307%_)
                        (let ((_%e179303179315%_
                               (gx#syntax-e _%e179300179307%_)))
                          (let ((_%hd179304179318%_ (##car _%e179303179315%_))
                                (_%tl179305179320%_ (##cdr _%e179303179315%_)))
                            (let ((_%clauses179323%_ _%tl179305179320%_))
                              (if (gx#stx-list? _%clauses179323%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate179299%_
                                    _%clauses179323%_))
                                  (_%E179302179311%_)))))
                        (_%E179302179311%_)))))
            (_%E179301179325%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx179198%_ _%form179199%_)
        (letrec ((_%generate179201%_
                  (lambda (_%bind179244%_)
                    (let* ((_%e179245179255%_ _%bind179244%_)
                           (_%E179247179259%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx179198%_
                               _%bind179244%_)))
                           (_%E179246179283%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179245179255%_)
                                  (let ((_%e179248179263%_
                                         (gx#syntax-e _%e179245179255%_)))
                                    (let ((_%hd179249179266%_
                                           (##car _%e179248179263%_))
                                          (_%tl179250179268%_
                                           (##cdr _%e179248179263%_)))
                                      (let ((_%ids179271%_ _%hd179249179266%_))
                                        (if (gx#stx-pair? _%tl179250179268%_)
                                            (let ((_%e179251179273%_
                                                   (gx#syntax-e
                                                    _%tl179250179268%_)))
                                              (let ((_%hd179252179276%_
                                                     (##car _%e179251179273%_))
                                                    (_%tl179253179278%_
                                                     (##cdr _%e179251179273%_)))
                                                (let ((_%expr179281%_
                                                       _%hd179252179276%_))
                                                  (if (gx#stx-null?
                                                       _%tl179253179278%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids179271%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids179271%_)
                        (cons _%expr179281%_ '()))
                  (_%E179247179259%_))
              (_%E179247179259%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E179247179259%_)))))
                                  (_%E179247179259%_)))))
                      (_%E179246179283%_)))))
          (let* ((_%e179202179212%_ _%stx179198%_)
                 (_%E179204179216%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179202179212%_)))
                 (_%E179203179240%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179202179212%_)
                        (let ((_%e179205179220%_
                               (gx#syntax-e _%e179202179212%_)))
                          (let ((_%hd179206179223%_ (##car _%e179205179220%_))
                                (_%tl179207179225%_ (##cdr _%e179205179220%_)))
                            (if (gx#stx-pair? _%tl179207179225%_)
                                (let ((_%e179208179228%_
                                       (gx#syntax-e _%tl179207179225%_)))
                                  (let ((_%hd179209179231%_
                                         (##car _%e179208179228%_))
                                        (_%tl179210179233%_
                                         (##cdr _%e179208179228%_)))
                                    (let* ((_%hd179236%_ _%hd179209179231%_)
                                           (_%body179238%_ _%tl179210179233%_))
                                      (if (and (gx#stx-list? _%hd179236%_)
                                               (gx#stx-list? _%body179238%_)
                                               (not (gx#stx-null?
                                                     _%body179238%_)))
                                          (gx#core-cons*
                                           _%form179199%_
                                           (gx#stx-map1
                                            _%generate179201%_
                                            _%hd179236%_)
                                           _%body179238%_)
                                          (_%E179204179216%_)))))
                                (_%E179204179216%_))))
                        (_%E179204179216%_)))))
            (_%E179203179240%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx179290%_)
        (let ((_%form179292%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx179290%_ _%form179292%_))))
    (define gx#macro-expand-let-values
      (lambda _g181834_
        (let ((_g181835_ (##length _g181834_)))
          (cond ((##fx= _g181835_ 1)
                 (apply gx#macro-expand-let-values__0 _g181834_))
                ((##fx= _g181835_ 2)
                 (apply gx#macro-expand-let-values__% _g181834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g181834_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx179195%_)
        (gx#macro-expand-let-values__% _%stx179195%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx179193%_)
        (gx#macro-expand-let-values__% _%stx179193%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx179084%_)
        (let* ((_%e179085179111%_ _%stx179084%_)
               (_%E179097179115%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179085179111%_)))
               (_%E179087179157%_
                (lambda ()
                  (if (gx#stx-pair? _%e179085179111%_)
                      (let ((_%e179098179119%_
                             (gx#syntax-e _%e179085179111%_)))
                        (let ((_%hd179099179122%_ (##car _%e179098179119%_))
                              (_%tl179100179124%_ (##cdr _%e179098179119%_)))
                          (if (gx#stx-pair? _%tl179100179124%_)
                              (let ((_%e179101179127%_
                                     (gx#syntax-e _%tl179100179124%_)))
                                (let ((_%hd179102179130%_
                                       (##car _%e179101179127%_))
                                      (_%tl179103179132%_
                                       (##cdr _%e179101179127%_)))
                                  (let ((_%test179135%_ _%hd179102179130%_))
                                    (if (gx#stx-pair? _%tl179103179132%_)
                                        (let ((_%e179104179137%_
                                               (gx#syntax-e
                                                _%tl179103179132%_)))
                                          (let ((_%hd179105179140%_
                                                 (##car _%e179104179137%_))
                                                (_%tl179106179142%_
                                                 (##cdr _%e179104179137%_)))
                                            (let ((_%K179145%_
                                                   _%hd179105179140%_))
                                              (if (gx#stx-pair?
                                                   _%tl179106179142%_)
                                                  (let ((_%e179107179147%_
                                                         (gx#syntax-e
                                                          _%tl179106179142%_)))
                                                    (let ((_%hd179108179150%_
                                                           (##car _%e179107179147%_))
                                                          (_%tl179109179152%_
                                                           (##cdr _%e179107179147%_)))
                                                      (let ((_%E179155%_
                                                             _%hd179108179150%_))
                                                        (if (gx#stx-null?
                                                             _%tl179109179152%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test179135%_
                                                             _%K179145%_
                                                             _%E179155%_)
                                                            (_%E179097179115%_)))))
                                                  (_%E179097179115%_)))))
                                        (_%E179097179115%_)))))
                              (_%E179097179115%_))))
                      (_%E179097179115%_))))
               (_%E179086179189%_
                (lambda ()
                  (if (gx#stx-pair? _%e179085179111%_)
                      (let ((_%e179088179161%_
                             (gx#syntax-e _%e179085179111%_)))
                        (let ((_%hd179089179164%_ (##car _%e179088179161%_))
                              (_%tl179090179166%_ (##cdr _%e179088179161%_)))
                          (if (gx#stx-pair? _%tl179090179166%_)
                              (let ((_%e179091179169%_
                                     (gx#syntax-e _%tl179090179166%_)))
                                (let ((_%hd179092179172%_
                                       (##car _%e179091179169%_))
                                      (_%tl179093179174%_
                                       (##cdr _%e179091179169%_)))
                                  (let ((_%test179177%_ _%hd179092179172%_))
                                    (if (gx#stx-pair? _%tl179093179174%_)
                                        (let ((_%e179094179179%_
                                               (gx#syntax-e
                                                _%tl179093179174%_)))
                                          (let ((_%hd179095179182%_
                                                 (##car _%e179094179179%_))
                                                (_%tl179096179184%_
                                                 (##cdr _%e179094179179%_)))
                                            (let ((_%K179187%_
                                                   _%hd179095179182%_))
                                              (if (gx#stx-null?
                                                   _%tl179096179184%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test179177%_
                                                   _%K179187%_
                                                   '#!void)
                                                  (_%E179087179157%_)))))
                                        (_%E179087179157%_)))))
                              (_%E179087179157%_))))
                      (_%E179087179157%_)))))
          (_%E179086179189%_))))
    (define gx#free-identifier=?
      (lambda (_%xid179069%_ _%yid179070%_)
        (let ((_%xe179072%_ (gx#resolve-identifier__0 _%xid179069%_))
              (_%ye179073%_ (gx#resolve-identifier__0 _%yid179070%_)))
          (if (and _%xe179072%_ _%ye179073%_)
              (let ((_%$e179076%_ (eq? _%xe179072%_ _%ye179073%_)))
                (if _%$e179076%_
                    _%$e179076%_
                    (if (##structure-instance-of? _%xe179072%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye179073%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe179072%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye179073%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe179072%_ _%ye179073%_)
                  '#f
                  (gx#stx-eq? _%xid179069%_ _%yid179070%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid179050%_ _%yid179051%_)
        (letrec ((_%context179053%_
                  (lambda (_%e179067%_)
                    (if (##structure-direct-instance-of?
                         _%e179067%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e179067%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks179054%_
                  (lambda (_%e179062%_)
                    (if (symbol? _%e179062%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e179062%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e179062%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e179062%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap179055%_
                  (lambda (_%e179060%_)
                    (if (symbol? _%e179060%_)
                        _%e179060%_
                        (gx#syntax-local-unwrap _%e179060%_)))))
          (let ((_%x179057%_ (_%unwrap179055%_ _%xid179050%_))
                (_%y179058%_ (_%unwrap179055%_ _%yid179051%_)))
            (if (gx#stx-eq? _%x179057%_ _%y179058%_)
                (if (eq? (_%context179053%_ _%x179057%_)
                         (_%context179053%_ _%y179058%_))
                    (equal? (_%marks179054%_ _%x179057%_)
                            (_%marks179054%_ _%y179058%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx179048%_)
        (if (gx#identifier? _%stx179048%_)
            (gx#core-identifier=? _%stx179048%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx179046%_)
        (if (gx#identifier? _%stx179046%_)
            (gx#core-identifier=? _%stx179046%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx178989%_ _%where178990%_)
        (let _%lp178992%_ ((_%rest178994%_ (gx#syntax->list _%stx178989%_)))
          (let* ((_%rest178995179003%_ _%rest178994%_)
                 (_%else178997179011%_ (lambda () '#t))
                 (_%K178999179024%_
                  (lambda (_%rest179014%_ _%hd179015%_)
                    (if (gx#identifier? _%hd179015%_)
                        (if (__find (lambda (_%g179017179019%_)
                                      (gx#bound-identifier=?
                                       _%g179017179019%_
                                       _%hd179015%_))
                                    _%rest179014%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where178990%_
                             _%hd179015%_)
                            (_%lp178992%_ _%rest179014%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where178990%_
                         _%hd179015%_)))))
            (if (pair? _%rest178995179003%_)
                (let ((_%hd179000179027%_ (##car _%rest178995179003%_))
                      (_%tl179001179029%_ (##cdr _%rest178995179003%_)))
                  (let* ((_%hd179032%_ _%hd179000179027%_)
                         (_%rest179034%_ _%tl179001179029%_))
                    (_%K178999179024%_ _%rest179034%_ _%hd179032%_)))
                (_%else178997179011%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx179039%_)
        (let ((_%where179041%_ _%stx179039%_))
          (gx#check-duplicate-identifiers__% _%stx179039%_ _%where179041%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g181836_
        (let ((_g181837_ (##length _g181836_)))
          (cond ((##fx= _g181837_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g181836_))
                ((##fx= _g181837_ 2)
                 (apply gx#check-duplicate-identifiers__% _g181836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g181836_))))))
    (define gx#core-bind-values?
      (lambda (_%stx178981%_)
        (gx#stx-andmap
         (lambda (_%x178983%_)
           (let ((_%$e178985%_ (gx#identifier? _%x178983%_)))
             (if _%$e178985%_ _%$e178985%_ (gx#stx-false? _%x178983%_))))
         _%stx178981%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx178945%_ _%rebind?178946%_ _%phi178947%_ _%ctx178948%_)
        (gx#stx-for-each1
         (lambda (_%id178950%_)
           (if (gx#identifier? _%id178950%_)
               (gx#core-bind-runtime!__%
                _%id178950%_
                _%rebind?178946%_
                _%phi178947%_
                _%ctx178948%_)
               '#!void))
         _%stx178945%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx178955%_)
        (let* ((_%rebind?178957%_ '#f)
               (_%phi178959%_ (gx#current-expander-phi))
               (_%ctx178961%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx178955%_
           _%rebind?178957%_
           _%phi178959%_
           _%ctx178961%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx178963%_ _%rebind?178964%_)
        (let* ((_%phi178966%_ (gx#current-expander-phi))
               (_%ctx178968%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx178963%_
           _%rebind?178964%_
           _%phi178966%_
           _%ctx178968%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx178970%_ _%rebind?178971%_ _%phi178972%_)
        (let ((_%ctx178974%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx178970%_
           _%rebind?178971%_
           _%phi178972%_
           _%ctx178974%_))))
    (define gx#core-bind-values!
      (lambda _g181838_
        (let ((_g181839_ (##length _g181838_)))
          (cond ((##fx= _g181839_ 1) (apply gx#core-bind-values!__0 _g181838_))
                ((##fx= _g181839_ 2) (apply gx#core-bind-values!__1 _g181838_))
                ((##fx= _g181839_ 3) (apply gx#core-bind-values!__2 _g181838_))
                ((##fx= _g181839_ 4) (apply gx#core-bind-values!__% _g181838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g181838_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx178940%_)
        (gx#stx-map1
         (lambda (_%x178942%_)
           (if (gx#identifier? _%x178942%_)
               (gx#core-quote-syntax__0 _%x178942%_)
               '#f))
         _%stx178940%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx178933%_)
        (if (gx#identifier? _%stx178933%_)
            (let* ((_%bind178935%_ (gx#resolve-identifier__0 _%stx178933%_))
                   (_%$e178937%_ (not _%bind178935%_)))
              (if _%$e178937%_
                  _%$e178937%_
                  (##structure-instance-of?
                   _%bind178935%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id178922%_ _%form178923%_)
        (let ((_%bind178925%_ (gx#resolve-identifier__0 _%id178922%_)))
          (if (##structure-instance-of? _%bind178925%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id178922%_)
              (if (not _%bind178925%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id178922%_)))
                      (gx#core-quote-syntax__0 _%id178922%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form178923%_
                       _%id178922%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form178923%_
                   _%id178922%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id178877%_ _%rebind?178878%_ _%phi178879%_ _%ctx178880%_)
        (let* ((_%key178882%_ (gx#core-identifier-key _%id178877%_))
               (_%eid178884%_
                (gx#make-binding-id__%
                 _%key178882%_
                 '#f
                 _%phi178879%_
                 _%ctx178880%_))
               (_%bind178890%_
                (if (##structure-instance-of?
                     _%ctx178880%_
                     'gx#module-context::t)
                    (let ((__obj181815
                           (##structure
                            gx#module-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#module-binding:::init!
                       __obj181815
                       _%eid178884%_
                       _%key178882%_
                       _%phi178879%_
                       _%ctx178880%_)
                      __obj181815)
                    (if (##structure-instance-of?
                         _%ctx178880%_
                         'gx#top-context::t)
                        (let ((__obj181814
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj181814
                           _%eid178884%_
                           _%key178882%_
                           _%phi178879%_)
                          __obj181814)
                        (if (##structure-instance-of?
                             _%ctx178880%_
                             'gx#local-context::t)
                            (let ((__obj181813
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj181813
                               _%eid178884%_
                               _%key178882%_
                               _%phi178879%_)
                              __obj181813)
                            (let ((__obj181812
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj181812
                               _%eid178884%_
                               _%key178882%_
                               _%phi178879%_)
                              __obj181812))))))
          (gx#bind-identifier!__%
           _%id178877%_
           _%bind178890%_
           _%rebind?178878%_
           _%phi178879%_
           _%ctx178880%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id178896%_)
        (let* ((_%rebind?178898%_ '#f)
               (_%phi178900%_ (gx#current-expander-phi))
               (_%ctx178902%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id178896%_
           _%rebind?178898%_
           _%phi178900%_
           _%ctx178902%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id178904%_ _%rebind?178905%_)
        (let* ((_%phi178907%_ (gx#current-expander-phi))
               (_%ctx178909%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id178904%_
           _%rebind?178905%_
           _%phi178907%_
           _%ctx178909%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id178911%_ _%rebind?178912%_ _%phi178913%_)
        (let ((_%ctx178915%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id178911%_
           _%rebind?178912%_
           _%phi178913%_
           _%ctx178915%_))))
    (define gx#core-bind-runtime!
      (lambda _g181840_
        (let ((_g181841_ (##length _g181840_)))
          (cond ((##fx= _g181841_ 1)
                 (apply gx#core-bind-runtime!__0 _g181840_))
                ((##fx= _g181841_ 2)
                 (apply gx#core-bind-runtime!__1 _g181840_))
                ((##fx= _g181841_ 3)
                 (apply gx#core-bind-runtime!__2 _g181840_))
                ((##fx= _g181841_ 4)
                 (apply gx#core-bind-runtime!__% _g181840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g181840_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id178829%_
               _%eid178830%_
               _%rebind?178831%_
               _%phi178832%_
               _%ctx178833%_)
        (let* ((_%key178835%_ (gx#core-identifier-key _%id178829%_))
               (_%bind178840%_
                (if (##structure-instance-of?
                     _%ctx178833%_
                     'gx#module-context::t)
                    (let ((__obj181818
                           (##structure
                            gx#module-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#module-binding:::init!
                       __obj181818
                       _%eid178830%_
                       _%key178835%_
                       _%phi178832%_
                       _%ctx178833%_)
                      __obj181818)
                    (if (##structure-instance-of?
                         _%ctx178833%_
                         'gx#top-context::t)
                        (let ((__obj181817
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj181817
                           _%eid178830%_
                           _%key178835%_
                           _%phi178832%_)
                          __obj181817)
                        (let ((__obj181816
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj181816
                           _%eid178830%_
                           _%key178835%_
                           _%phi178832%_)
                          __obj181816)))))
          (gx#bind-identifier!__%
           _%id178829%_
           _%bind178840%_
           _%rebind?178831%_
           _%phi178832%_
           _%ctx178833%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id178846%_ _%eid178847%_)
        (let* ((_%rebind?178849%_ '#f)
               (_%phi178851%_ (gx#current-expander-phi))
               (_%ctx178853%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id178846%_
           _%eid178847%_
           _%rebind?178849%_
           _%phi178851%_
           _%ctx178853%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id178855%_ _%eid178856%_ _%rebind?178857%_)
        (let* ((_%phi178859%_ (gx#current-expander-phi))
               (_%ctx178861%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id178855%_
           _%eid178856%_
           _%rebind?178857%_
           _%phi178859%_
           _%ctx178861%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id178863%_ _%eid178864%_ _%rebind?178865%_ _%phi178866%_)
        (let ((_%ctx178868%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id178863%_
           _%eid178864%_
           _%rebind?178865%_
           _%phi178866%_
           _%ctx178868%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g181842_
        (let ((_g181843_ (##length _g181842_)))
          (cond ((##fx= _g181843_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g181842_))
                ((##fx= _g181843_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g181842_))
                ((##fx= _g181843_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g181842_))
                ((##fx= _g181843_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g181842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g181842_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id178789%_
               _%eid178790%_
               _%rebind?178791%_
               _%phi178792%_
               _%ctx178793%_)
        (gx#bind-identifier!__%
         _%id178789%_
         (let ((__obj181819
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj181819
            _%eid178790%_
            (gx#core-identifier-key _%id178789%_)
            _%phi178792%_)
           __obj181819)
         _%rebind?178791%_
         _%phi178792%_
         _%ctx178793%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id178798%_ _%eid178799%_)
        (let* ((_%rebind?178801%_ '#f)
               (_%phi178803%_ (gx#current-expander-phi))
               (_%ctx178805%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id178798%_
           _%eid178799%_
           _%rebind?178801%_
           _%phi178803%_
           _%ctx178805%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id178807%_ _%eid178808%_ _%rebind?178809%_)
        (let* ((_%phi178811%_ (gx#current-expander-phi))
               (_%ctx178813%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id178807%_
           _%eid178808%_
           _%rebind?178809%_
           _%phi178811%_
           _%ctx178813%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id178815%_ _%eid178816%_ _%rebind?178817%_ _%phi178818%_)
        (let ((_%ctx178820%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id178815%_
           _%eid178816%_
           _%rebind?178817%_
           _%phi178818%_
           _%ctx178820%_))))
    (define gx#core-bind-extern!
      (lambda _g181844_
        (let ((_g181845_ (##length _g181844_)))
          (cond ((##fx= _g181845_ 2) (apply gx#core-bind-extern!__0 _g181844_))
                ((##fx= _g181845_ 3) (apply gx#core-bind-extern!__1 _g181844_))
                ((##fx= _g181845_ 4) (apply gx#core-bind-extern!__2 _g181844_))
                ((##fx= _g181845_ 5) (apply gx#core-bind-extern!__% _g181844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g181844_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id178743%_
               _%e178744%_
               _%rebind?178745%_
               _%phi178746%_
               _%ctx178747%_)
        (gx#bind-identifier!__%
         _%id178743%_
         (let ((_%key178752%_ (gx#core-identifier-key _%id178743%_))
               (_%e178753%_
                (if (or (##structure-instance-of? _%e178744%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e178744%_
                         'gx#expander-context::t))
                    _%e178744%_
                    (##structure
                     gx#user-expander::t
                     _%e178744%_
                     _%ctx178747%_
                     _%phi178746%_))))
           (let ((__obj181820
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj181820
              (gx#make-binding-id__%
               _%key178752%_
               '#t
               _%phi178746%_
               _%ctx178747%_)
              _%key178752%_
              _%phi178746%_
              _%e178753%_)
             __obj181820))
         _%rebind?178745%_
         _%phi178746%_
         _%ctx178747%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id178758%_ _%e178759%_)
        (let* ((_%rebind?178761%_ '#f)
               (_%phi178763%_ (gx#current-expander-phi))
               (_%ctx178765%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id178758%_
           _%e178759%_
           _%rebind?178761%_
           _%phi178763%_
           _%ctx178765%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id178767%_ _%e178768%_ _%rebind?178769%_)
        (let* ((_%phi178771%_ (gx#current-expander-phi))
               (_%ctx178773%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id178767%_
           _%e178768%_
           _%rebind?178769%_
           _%phi178771%_
           _%ctx178773%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id178775%_ _%e178776%_ _%rebind?178777%_ _%phi178778%_)
        (let ((_%ctx178780%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id178775%_
           _%e178776%_
           _%rebind?178777%_
           _%phi178778%_
           _%ctx178780%_))))
    (define gx#core-bind-syntax!
      (lambda _g181846_
        (let ((_g181847_ (##length _g181846_)))
          (cond ((##fx= _g181847_ 2) (apply gx#core-bind-syntax!__0 _g181846_))
                ((##fx= _g181847_ 3) (apply gx#core-bind-syntax!__1 _g181846_))
                ((##fx= _g181847_ 4) (apply gx#core-bind-syntax!__2 _g181846_))
                ((##fx= _g181847_ 5) (apply gx#core-bind-syntax!__% _g181846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g181846_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id178726%_ _%e178727%_ _%rebind?178728%_)
        (gx#core-bind-syntax!__%
         _%id178726%_
         _%e178727%_
         _%rebind?178728%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id178733%_ _%e178734%_)
        (let ((_%rebind?178736%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id178733%_
           _%e178734%_
           _%rebind?178736%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g181848_
        (let ((_g181849_ (##length _g181848_)))
          (cond ((##fx= _g181849_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g181848_))
                ((##fx= _g181849_ 3)
                 (apply gx#core-bind-root-syntax!__% _g181848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g181848_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id178684%_
               _%alias-id178685%_
               _%rebind?178686%_
               _%phi178687%_
               _%ctx178688%_)
        (gx#bind-identifier!__%
         _%id178684%_
         (let* ((_%key178690%_ (gx#core-identifier-key _%id178684%_))
                (__obj181821
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj181821
            (gx#make-binding-id__%
             _%key178690%_
             '#t
             _%phi178687%_
             _%ctx178688%_)
            _%key178690%_
            _%phi178687%_
            _%alias-id178685%_)
           __obj181821)
         _%rebind?178686%_
         _%phi178687%_
         _%ctx178688%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id178695%_ _%alias-id178696%_)
        (let* ((_%rebind?178698%_ '#f)
               (_%phi178700%_ (gx#current-expander-phi))
               (_%ctx178702%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id178695%_
           _%alias-id178696%_
           _%rebind?178698%_
           _%phi178700%_
           _%ctx178702%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id178704%_ _%alias-id178705%_ _%rebind?178706%_)
        (let* ((_%phi178708%_ (gx#current-expander-phi))
               (_%ctx178710%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id178704%_
           _%alias-id178705%_
           _%rebind?178706%_
           _%phi178708%_
           _%ctx178710%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id178712%_ _%alias-id178713%_ _%rebind?178714%_ _%phi178715%_)
        (let ((_%ctx178717%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id178712%_
           _%alias-id178713%_
           _%rebind?178714%_
           _%phi178715%_
           _%ctx178717%_))))
    (define gx#core-bind-alias!
      (lambda _g181850_
        (let ((_g181851_ (##length _g181850_)))
          (cond ((##fx= _g181851_ 2) (apply gx#core-bind-alias!__0 _g181850_))
                ((##fx= _g181851_ 3) (apply gx#core-bind-alias!__1 _g181850_))
                ((##fx= _g181851_ 4) (apply gx#core-bind-alias!__2 _g181850_))
                ((##fx= _g181851_ 5) (apply gx#core-bind-alias!__% _g181850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g181850_))))))
    (define gx#make-binding-id__%
      (lambda (_%key178634%_ _%syntax?178635%_ _%phi178636%_ _%ctx178637%_)
        (if (uninterned-symbol? _%key178634%_)
            (##gensym 'L)
            (if (pair? _%key178634%_)
                (gensym (##car _%key178634%_))
                (if (##structure-instance-of? _%ctx178637%_ 'gx#top-context::t)
                    (let ((_%ns178642%_
                           (gx#core-context-namespace__% _%ctx178637%_)))
                      (if (and (fxzero? _%phi178636%_) (not _%syntax?178635%_))
                          (if _%ns178642%_
                              (make-symbol__1 _%ns178642%_ '"#" _%key178634%_)
                              _%key178634%_)
                          (if _%syntax?178635%_
                              (make-symbol__1
                               (let ((_%$e178646%_ _%ns178642%_))
                                 (if _%$e178646%_ _%$e178646%_ '""))
                               '"[:"
                               (number->string _%phi178636%_)
                               '":]#"
                               _%key178634%_)
                              (make-symbol__1
                               (let ((_%$e178650%_ _%ns178642%_))
                                 (if _%$e178650%_ _%$e178650%_ '""))
                               '"["
                               (number->string _%phi178636%_)
                               '"]#"
                               _%key178634%_))))
                    (gensym _%key178634%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key178657%_)
        (let* ((_%syntax?178659%_ '#f)
               (_%phi178661%_ (gx#current-expander-phi))
               (_%ctx178663%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key178657%_
           _%syntax?178659%_
           _%phi178661%_
           _%ctx178663%_))))
    (define gx#make-binding-id__1
      (lambda (_%key178665%_ _%syntax?178666%_)
        (let* ((_%phi178668%_ (gx#current-expander-phi))
               (_%ctx178670%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key178665%_
           _%syntax?178666%_
           _%phi178668%_
           _%ctx178670%_))))
    (define gx#make-binding-id__2
      (lambda (_%key178672%_ _%syntax?178673%_ _%phi178674%_)
        (let ((_%ctx178676%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key178672%_
           _%syntax?178673%_
           _%phi178674%_
           _%ctx178676%_))))
    (define gx#make-binding-id
      (lambda _g181852_
        (let ((_g181853_ (##length _g181852_)))
          (cond ((##fx= _g181853_ 1) (apply gx#make-binding-id__0 _g181852_))
                ((##fx= _g181853_ 2) (apply gx#make-binding-id__1 _g181852_))
                ((##fx= _g181853_ 3) (apply gx#make-binding-id__2 _g181852_))
                ((##fx= _g181853_ 4) (apply gx#make-binding-id__% _g181852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g181852_))))))))
